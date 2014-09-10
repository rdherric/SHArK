using System;
using System.Collections.Generic;
using System.IO;
using System.Printing;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Documents;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Xps;

using RDH2.Windows.ViewModel;
using SHArK.Common;
using SHArK.Common.Enums;
using SHArK.Common.Events;
using SHArK.Common.Spectrum;
using SHArK.Common.Tab;
using Syncfusion.Windows.Tools.Controls;
using Microsoft.Practices.Composite.Events;
using Microsoft.Practices.Unity;

namespace SHArK.Mdi
{
    /// <summary>
    /// TabHostViewModel is the backing class for the
    /// TabHostView.
    /// </summary>
    internal class TabHostViewModel : ViewModelBase
    {
        #region Member Variables
        private IUnityContainer _unity = null;
        private IEventAggregator _eventAggregator = null;

        //Printing Constants
        private static Double _portraitWidth = (96 * 6.5);     //8.5 - 2 * 1" margin
        private static Double _portraitHeight = (96 * 9.0);    //1.0 - 2 * 1" margin
        private static Double _landscapeWidth = TabHostViewModel._portraitHeight;
        private static Double _landscapeHeight = TabHostViewModel._portraitWidth;
        private static Double _pageMargin = (96 * 1.0);            //1" margin
        private static Double _ctrlMargin = 5.0;
        private static Double _borderThickness = 1.0;
        private static Double _textHeight = 25.0;
        #endregion


        #region Constructor
        /// <summary>
        /// Default Constructor for the TabHostViewModel.
        /// </summary>
        /// <param name="unity">The IUnityContainer sent by the System</param>
        /// <param name="eventAggregator">The IEventAggregator sent by the System</param>
        public TabHostViewModel(IUnityContainer unity, IEventAggregator eventAggregator)
        {
            //Save the input in the member variables
            this._unity = unity;
            this._eventAggregator = eventAggregator;

            //Wire the events
            this.WireEvents();
        }
        #endregion


        #region Event Handlers
        /// <summary>
        /// OnNewSpectrum is called when the user would like
        /// to create a new Spectrum.
        /// </summary>
        /// <param name="info"></param>
        private void OnNewSpectrum(NewSpectrumInfo info)
        {
            //Get the objects required to open a Spectrum
            TabViewModel tvm = this._unity.Resolve<TabViewModel>();
            TabView tv = this._unity.Resolve<TabView>();

            //Set up the View
            tvm.HookEvents(tv);
            tv.DataContext = tvm;

            //Open the new Spectrum
            this.AddSpectrumTab(tv);

            //Start up the acquisition by setting the NewSpectrumInfo
            //object on the ViewModel
            tvm.NewSpectrumInfo = info;
        }


        /// <summary>
        /// OnOpenSpectrum is called when the user would like
        /// to Open a Spectrum.
        /// </summary>
        /// <param name="fileName">The file to open</param>
        private void OnOpenSpectrum(String fileName)
        {
            //Get the objects required to open a Spectrum
            TabViewModel tvm = this._unity.Resolve<TabViewModel>();
            TabView tv = this._unity.Resolve<TabView>();

            //Set up the View
            tvm.FileName = fileName;
            tvm.HookEvents(tv);
            tv.DataContext = tvm;

            //Open the new Spectrum
            this.AddSpectrumTab(tv);
        }


        /// <summary>
        /// OnCloseSpectrum closes the Active Spectrum.
        /// </summary>
        /// <param name="parameter">Object parameter to make the EventAggregator happy</param>
        private void OnCloseSpectrum(Object parameter)
        {
            //Get a reference to the TabHostView
            TabHostView thv = this._unity.Resolve<TabHostView>(Strings.TabHostViewName);

            //Close the Active Spectrum
            if (thv._tabContainer.ActiveWindow != null)
                thv._tabContainer.Children.Remove(thv._tabContainer.ActiveWindow);

            //Fire the TabChanged event
            this.FireTabChangedEvent(false);
        }


        /// <summary>
        /// OnPrintSpectrum prints the desired Spectra.
        /// </summary>
        /// <param name="parameter"></param>
        private void OnPrintSpectrum(Object parameter)
        {
            //Construct a PrintDialog
            RDH2.Win32.PrintDialog pd = new RDH2.Win32.PrintDialog();
            Printing.PrintCustomizeCtrl pcc = new Printing.PrintCustomizeCtrl();
            pd.CustomControl = pcc;
            pd.DisablePageNums = true;
            pd.DisableSelection = true;
            pd.EnablePrintToFile = false;
            pd.ShowHelp = false;

            //Get a reference to the View and show the dialog
            TabHostView thv = this._unity.Resolve<TabHostView>(Strings.TabHostViewName);
            Nullable<Boolean> result = pd.ShowDialog(this.GetWindowParent(thv));

            //If the user clicked OK, do the Printing
            if (result == true)
            {
                //Create a Job Name for the print
                String jobName = Strings.Multiple;

                if (pcc.PrintAll == false)
                    jobName = DockingManager.GetHeader(thv._tabContainer.ActiveWindow).ToString();

                //Get the DocumentWriter from the PrintDialog
                XpsDocumentWriter writer = pd.GetWriter(Strings.PrintJobName + ": " + jobName);

                //Create the documents to print
                FixedDocument document = this.CreatePrintDocument(pcc.PrintAll, pcc.ChartsPerPage);

                //Create a PrintTicket to set the Page orientation
                PrintTicket ticket = new PrintTicket();
                ticket.PageOrientation = PageOrientation.Landscape;

                if (pcc.ChartsPerPage == 2)
                    ticket.PageOrientation = PageOrientation.Portrait;

                //Write the documents to the Writer
                writer.Write(document, ticket);
            }
        }


        /// <summary>
        /// HookEvents hooks into events that the TabHostView
        /// cannot expose as Bindings.
        /// </summary>
        /// <param name="thv">The TabHostView that will be hooked</param>
        public void HookEvents(TabHostView thv)
        {
            //Hook the events
            thv._tabContainer.ActiveWindowChanged += new System.Windows.PropertyChangedCallback(_tabContainer_ActiveWindowChanged);
            thv._tabContainer.CloseButtonClick += new CloseButtonEventHandler(_tabContainer_CloseButtonClick);
        }


        /// <summary>
        /// _tabContainer_ActiveDocumentChanged fires the TabChangedEvent
        /// when the ActiveDocument changes.
        /// </summary>
        /// <param name="d">The Document that was changed</param>
        /// <param name="e">The EventArgs sent by the System</param>
        void _tabContainer_ActiveWindowChanged(System.Windows.DependencyObject d, System.Windows.DependencyPropertyChangedEventArgs e)
        {
            //Fire the event
            this.FireTabChangedEvent(false);
        }


        /// <summary>
        /// _tabContainer_CloseButtonClick sends a blank TabChangedEvent
        /// message to indicate that the Tab is closing.
        /// </summary>
        /// <param name="sender">The Close button that was clicked</param>
        /// <param name="e">The EventArgs sent by the System</param>
        void _tabContainer_CloseButtonClick(object sender, CloseButtonEventArgs e)
        {
            //Fire the event
            this.FireTabChangedEvent(true);
        }
        #endregion


        #region Helper Methods
        /// <summary>
        /// WireEvents hooks the Event subscriptions to the 
        /// class Methods.
        /// </summary>
        private void WireEvents()
        {
            //Wire the events
            this._eventAggregator.GetEvent<NewSpectrumEvent>().Subscribe(this.OnNewSpectrum);
            this._eventAggregator.GetEvent<OpenSpectrumEvent>().Subscribe(this.OnOpenSpectrum);
            this._eventAggregator.GetEvent<CloseSpectrumEvent>().Subscribe(this.OnCloseSpectrum);
            this._eventAggregator.GetEvent<PrintSpectrumEvent>().Subscribe(this.OnPrintSpectrum);
        }


        /// <summary>
        /// AddSpectrumTab resolves the TabHostView and 
        /// adds the current Spectrum to the Tabbed List.
        /// </summary>
        /// <param name="tv">The TabView to add to the list</param>
        private void AddSpectrumTab(TabView tv)
        {
            //Get a reference to the TabHostView
            TabHostView thv = this._unity.Resolve<TabHostView>(Strings.TabHostViewName);

            //Add it to the TabbedMdiContainer and Activate it
            thv._tabContainer.Children.Add(tv);
            thv._tabContainer.SelectItem(tv);

            //Fire the TabChangedEvent
            this.FireTabChangedEvent(false);
        }


        /// <summary>
        /// CreatePrintDocument does the heavy lifting of creating 
        /// the FixedDocument from the open Tabs.
        /// </summary>
        /// <param name="printAll">Boolean to specify if all charts should be printed</param>
        /// <param name="chartsPerPage">The number of charts to add per Page</param>
        /// <returns>FixedDocument that has all of the charts to print</returns>
        private FixedDocument CreatePrintDocument(Boolean printAll, Int32 chartsPerPage)
        {
            //Declare a variable to return
            FixedDocument rtn = new FixedDocument();

            //Get a reference to the TabHostView
            TabHostView thv = this._unity.Resolve<TabHostView>(Strings.TabHostViewName);

            //Get a collection of Charts to print based on the
            //printAll input
            List<TabView> tabs = new List<TabView>();

            //Iterate through the tabs and add them 
            foreach (TabView child in thv._tabContainer.Children)
            {
                //Add the Chart to the list
                tabs.Add(child);

                //If the user only wanted to print one Chart,
                //break out of the loop
                if (printAll == false)
                    break;
            }

            //Iterate through the Tabs and add them to 
            //the FixedDocument
            Int32 tabIndex = 0;
            while (tabIndex < tabs.Count)
            {
                //Get height and width based on the number of
                //charts to print
                Double width = TabHostViewModel._landscapeWidth;
                Double height = TabHostViewModel._landscapeHeight;

                if (chartsPerPage == 2)
                {
                    width = TabHostViewModel._portraitWidth;
                    height = TabHostViewModel._portraitHeight;
                }

                //Create a Grid to contain the content
                Grid grid = new Grid();
                grid.Height = height;
                grid.Width = width;
                grid.Margin = new Thickness(TabHostViewModel._pageMargin);
                
                //Add Rows and Column based on the charts
                //per page
                Int32 rows = 1;
                Int32 columns = 1;

                if (chartsPerPage == 2 || chartsPerPage == 4)
                    rows = 2;

                if (chartsPerPage == 4)
                    columns = 2;

                for (Int32 r = 0; r < rows; r++)
                    grid.RowDefinitions.Add(new RowDefinition());

                for (Int32 c = 0; c < columns; c++)
                    grid.ColumnDefinitions.Add(new ColumnDefinition());

                //Iterate through this page's charts and add them to the Grid
                for (Int32 row = 0; (row < rows && tabIndex < tabs.Count); row++)
                {
                    for (Int32 col = 0; (col < columns && tabIndex < tabs.Count); col++)
                    {
                        //Create a border to hold the Chart and Title
                        Border border = new Border();
                        border.BorderBrush = new SolidColorBrush(Color.FromRgb(0, 0, 0));
                        border.BorderThickness = new Thickness(TabHostViewModel._borderThickness);
                        border.Margin = new Thickness(TabHostViewModel._ctrlMargin);
                        border.SetValue(Grid.RowProperty, row);
                        border.SetValue(Grid.ColumnProperty, col);

                        //Add a StackPanel to hold the title and chart
                        StackPanel panel = new StackPanel();
                        panel.Orientation = Orientation.Vertical;

                        //Add the Title of the Chart
                        TextBlock tb = new TextBlock();
                        tb.Margin = new Thickness(TabHostViewModel._ctrlMargin);
                        tb.Text = ((TabViewModel)tabs[tabIndex].DataContext).DocumentName;

                        //Add the Title to the Panel 
                        panel.Children.Add(tb);

                        //Add the Chart to the Grid by saving the content
                        //to a Bitmap and then adding the Bitmap to the Panel.
                        //Start by creating a target.
                        RenderTargetBitmap rtb = new RenderTargetBitmap(
                            Convert.ToInt32(tabs[tabIndex]._chartArea.ActualWidth),
                            Convert.ToInt32(tabs[tabIndex]._chartArea.ActualHeight), 
                            96, 96, PixelFormats.Default);

                        //Render the Chart to a Bitmap
                        rtb.Render(tabs[tabIndex]._chartArea);

                        //Create an Image to hold the Bitmap
                        Image img = new Image();
                        img.Margin = new Thickness(TabHostViewModel._ctrlMargin);
                        img.Stretch = Stretch.None;
                        img.Source = rtb;
                        img.LayoutTransform = this.GetImageScaleTransform(tabs[tabIndex]._chartArea, chartsPerPage);

                        //Add the Bitmap to the StackPanel, the Panel to the 
                        //Border, and the Border to the Grid
                        panel.Children.Add(img);
                        border.Child = panel;
                        grid.Children.Add(border);

                        //Update the Tab Index
                        tabIndex++;
                    }
                }

                //Create the FixedPage object and add the Grid
                FixedPage page = new FixedPage();
                page.Children.Add(grid);

                //Create a PageContent object to contain the content
                //and add it to the document
                PageContent content = new PageContent();
                ((System.Windows.Markup.IAddChild)content).AddChild(page);
                rtn.Pages.Add(content);
            }

            //Return the result
            return rtn;
        }


        /// <summary>
        /// GetImageScaleTransform figures out the size of the 
        /// Image based on the number of charts to be placed on
        /// the Page.
        /// </summary>
        /// <param name="img">The Chart to scale</param>
        /// <param name="chartsPerPage">The number of charts per Page</param>
        /// <returns>A ScaleTransform to size the Image</returns>
        private ScaleTransform GetImageScaleTransform(Syncfusion.Windows.Chart.ChartArea chart, Int32 chartsPerPage)
        {
            //Declare a variable to return 
            ScaleTransform rtn = new ScaleTransform();

            //Get the Height and Width of the Chart
            Double maxX = chart.ActualHeight;
            Double maxY = chart.ActualWidth;

            //Get the highest value of the Border size --
            //Default to 1 chart per page
            Double width = TabHostViewModel._landscapeWidth;
            Double height = TabHostViewModel._landscapeHeight - TabHostViewModel._textHeight;

            //Change the values based on the charts per page
            if (chartsPerPage == 2)
            {
                width = TabHostViewModel._portraitWidth;
                height = (TabHostViewModel._portraitHeight - TabHostViewModel._textHeight) / 2.0;
            }
            else if (chartsPerPage == 4)
            {
                width /= 2.0;
                height /= 2.0;
            }

            //Try to size to Height.  If that can't be
            //done, then size to Width.
            if ((height * (maxX / maxY)) < width)
                width = height * (maxX / maxY);
            else
                height = width * (maxY / maxX);

            //Set the values in the transform
            rtn.ScaleX = (width / maxX);
            rtn.ScaleY = (height / maxY);

            //Return the result
            return rtn;
        }


        /// <summary>
        /// FireTabChangedEvent publishes a TabChangedEvent
        /// based on the current state of the TabHost.
        /// </summary>
        /// <param name="sendBlank">Determines if the Active Window should be checked for validity prior to sending the Message</param>
        private void FireTabChangedEvent(Boolean sendBlank)
        {
            //Get a reference to the TabHostView
            TabHostView thv = this._unity.Resolve<TabHostView>(Strings.TabHostViewName);

            //Create an ActiveTabInfo and fill it
            ActiveTabInfo info = new ActiveTabInfo();

            //If the flag says to check the active window, do it
            if (sendBlank == false)
            {
                //If there is a current Tab available, fill the 
                //ActiveDocumentInfo object.
                TabView dw = thv._tabContainer.ActiveWindow as TabView;

                if (dw != null)
                {
                    //Cast the DataContext to the TabViewModel
                    TabViewModel tvm = dw.DataContext as TabViewModel;

                    //Fill the info
                    info.DocumentName = tvm.DocumentName;
                    info.TabsOpen = thv._tabContainer.Children.Count;
                }
            }
 
            //Finally, fire the TabChangedEvent
            this._eventAggregator.GetEvent<TabChangedEvent>().Publish(info);
        }
        #endregion
    }
}
