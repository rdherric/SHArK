using System;
using System.ComponentModel;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.IO;
using System.Text;
using System.Threading;
using System.Windows.Input;
using System.Windows.Media;
using Microsoft.Practices.Unity;
using Microsoft.Practices.Composite.Events;

using RDH2.SHArK.Interface;
using RDH2.SHArK.Interface.Enums;
using RDH2.Windows;
using RDH2.Windows.ViewModel;
using SHArK.Common;
using SHArK.Common.Enums;
using SHArK.Common.Events;
using SHArK.Common.Spectrum;
using SHArK.IO;
using SHArK.IO.Data;
using SHArK.IO.Enums;
using SHArK.Mdi.Chart;

namespace SHArK.Mdi
{
    /// <summary>
    /// TabViewModel is the backing class for the
    /// Tab View.
    /// </summary>
    internal class TabViewModel : ViewModelBase
    {
        #region Member Variables
        private IUnityContainer _unity = null;
        private IEventAggregator _eventAggregator = null;
        private String _docName = String.Empty;
        private String _fileName = String.Empty;
        private NewSpectrumInfo _newSpecInfo = null;
        private Boolean _isRunning = false;
        private Boolean _isPaused = false;
        private Double _chartWidth = 400;
        private Double _chartHeight = 400;
        private Double _pointWidth = 10;
        private Double _pointHeight = 10;

        //ISHArKFile reference
        ISHArKFile _file = null;

        //Chart Member Variables
        private ObservableCollection<ChartPoint> _chartPoints = new ObservableCollection<ChartPoint>();
        private Point _currPoint = null;
        private ScatterChartFastSeriesPresenter _presenter = new ScatterChartFastSeriesPresenter();
        private Syncfusion.Windows.Chart.DoubleRange _xAxisRange = new Syncfusion.Windows.Chart.DoubleRange(0, 10);
        private Syncfusion.Windows.Chart.DoubleRange _yAxisRange = new Syncfusion.Windows.Chart.DoubleRange(0, 10);

        //Reference to the TabView
        private TabView _view = null;

        //Delegate Types to do the Chart updates
        private delegate void SetMouseCursorDelegate(Cursor cursor);
        private delegate void ShowErrorDelegate(String message);
        private delegate void SetWindowStatusDelegate(String status);
        private delegate void SetDocumentNameDelegate(String docName);
        private delegate void SetAxisRangesDelegate(Double xMax, Double yMax);
        private delegate void SetRunStateDelegate(Boolean isRunning);
        private delegate void PublishCloseEventDelegate();
        private delegate void AddPointsToChartDelegate(Point[] points, Double zMax);
        private delegate void NotifySpectrumEndedDelegate();
        private delegate void CreateFileSeriesDelegate(List<Point> points, Double zMax);
        private delegate void ShowDarkCurrentDialogDelegate(IPotentiostat potstat);
        #endregion


        #region Constructor
        /// <summary>
        /// Default Constructor for the TabViewModel object.
        /// </summary>
        public TabViewModel(IUnityContainer unity, IEventAggregator eventAggregator)
        {
            //Save the input in member variables
            this._unity = unity;
            this._eventAggregator = eventAggregator;

            //Wire up the Events
            this.WireEvents();
        }
        #endregion


        #region Public Properties
        /// <summary>
        /// DocumentName determines the title of the TabView.
        /// </summary>
        public String DocumentName
        {
            get { return this._docName; }
            set 
            { 
                //Set the value and fire the event
                this._docName = value;
                this.FirePropertyChanged("DocumentName");
            }
        }


        /// <summary>
        /// FileName determines the File Path that 
        /// should be opened to create the TabView.
        /// </summary>
        public String FileName
        {
            get { return this._fileName; }
            set 
            { 
                //Set the value 
                this._fileName = value;

                //Spin off a Thread to do the file reading
                ThreadStart ts = new ThreadStart(this.ReadFile);
                Thread t = new Thread(ts);
                t.Start();
            }
        }


        /// <summary>
        /// NewSpectrumInfo determines the properties to use
        /// to create a new Spectrum.
        /// </summary>
        public NewSpectrumInfo NewSpectrumInfo
        {
            get { return this._newSpecInfo; }
            set 
            { 
                //Save the input in the Member Variable
                this._newSpecInfo = value;

                //Spin off a Thread to do the acquisition
                ThreadStart ts = new ThreadStart(this.Acquire3DData);
                Thread t = new Thread(ts);
                t.Start();
            }
        }


        /// <summary>
        /// IsRunning determines if Data is currently being
        /// acquired.
        /// </summary>
        public Boolean IsRunning
        {
            get { return this._isRunning; }
            set
            {
                //Set the value and fire the event
                this._isRunning = value;
                this.FirePropertyChanged("IsRunning");
            }
        }


        /// <summary>
        /// IsPaused determines if Data is currently being 
        /// acquired, but paused.
        /// </summary>
        public Boolean IsPaused
        {
            get { return this._isPaused; }
            set
            {
                //Set the value and fire the event
                this._isPaused = value;
                this.FirePropertyChanged("IsPaused");
            }
        }


        /// <summary>
        /// ChartPoints exposes the points that are to be 
        /// put into the chart.
        /// </summary>
        public ObservableCollection<ChartPoint> ChartPoints
        {
            get { return this._chartPoints; }
        }


        /// <summary>
        /// ChartHeight sets the size of the Chart on the 
        /// Window.
        /// </summary>
        public Double ChartHeight
        {
            get { return this._chartHeight; }
            set
            {
                this._chartHeight = value;
                this.FirePropertyChanged("ChartHeight");
            }
        }


        /// <summary>
        /// ChartWidth sets the size of the Chart on the
        /// Window.
        /// </summary>
        public Double ChartWidth
        {
            get { return this._chartWidth; }
            set
            {
                this._chartWidth = value;
                this.FirePropertyChanged("ChartWidth");
            }
        }


        /// <summary>
        /// PointHeight sets the size of the Points in the 
        /// Chart.
        /// </summary>
        public Double PointHeight
        {
            get { return this._pointHeight; }
            set
            {
                this._pointHeight = value;
                this.FirePropertyChanged("PointHeight");
            }
        }


        /// <summary>
        /// PointWidth sets the size of the Point on the
        /// Chart.
        /// </summary>
        public Double PointWidth
        {
            get { return this._pointWidth; }
            set
            {
                this._pointWidth = value;
                this.FirePropertyChanged("PointWidth");
            }
        }


        /// <summary>
        /// XAxisRange is used to set the range on the 
        /// X-ChartAxis.
        /// </summary>
        public Syncfusion.Windows.Chart.DoubleRange XAxisRange
        {
            get { return this._xAxisRange; }
            set
            {
                //Set the value and fire the event
                this._xAxisRange = value;
                this.FirePropertyChanged("XAxisRange");
            }
        }


        /// <summary>
        /// YAxisRange is used to set the range on the 
        /// Y-ChartAxis.
        /// </summary>
        public Syncfusion.Windows.Chart.DoubleRange YAxisRange
        {
            get { return this._yAxisRange; }
            set
            {
                //Set the value and fire the event
                this._yAxisRange = value;
                this.FirePropertyChanged("YAxisRange");
            }
        }
        #endregion


        #region Event Handling Code
        /// <summary>
        /// HookEvents sets up some of the events that can't
        /// be handled with a Command.
        /// </summary>
        /// <param name="view">The View whose events must be hooked</param>
        public void HookEvents(TabView view)
        {
            //Save the View in the member variable
            this._view = view;

            //Hook the events
            this._view.SizeChanged += new System.Windows.SizeChangedEventHandler(view_SizeChanged);
        }


        /// <summary>
        /// series_MouseMove is called when the user has 
        /// put the Mouse over the Series in the Chart.
        /// </summary>
        /// <param name="sender">The Series on which the Mouse has moved</param>
        /// <param name="e">The EventArgs sent by the System</param>
        void series_MouseMove(Object sender, Syncfusion.Windows.Chart.ChartMouseEventArgs e)
        {
            //Cast the sender to a ChartSeries
            Syncfusion.Windows.Chart.ChartSeries series = sender as Syncfusion.Windows.Chart.ChartSeries;

            //Get the HitTestResult using the Windows
            //VisualTreeHelper
            HitTestResult htr = VisualTreeHelper.HitTest(this._view, e.MouseEventArgs.GetPosition(this._view));

            //If the hit test was successful, set the Member
            //Variable and fire the event
            if (htr != null && htr.VisualHit is ChartPoint)
            {
                //Cast the VisualHit to a ChartPoint
                ChartPoint cp = htr.VisualHit as ChartPoint;

                //Set the Member Variable
                this._currPoint = new Point(cp.X, cp.Y, cp.Z);

                //Fire the event
                this._eventAggregator.GetEvent<SpectrumChangedEvent>().Publish(this.GetActiveSpectrumInfo());
            }
        }

        
        /// <summary>
        /// view_SizeChanged is fired when the size of the
        /// TabView is changed.  This allows the TabViewModel 
        /// to adjust the size of the Chart and the Points.
        /// </summary>
        /// <param name="sender">The TabView that is being sized</param>
        /// <param name="e">The EventArgs sent by the System</param>
        void view_SizeChanged(object sender, System.Windows.SizeChangedEventArgs e)
        {
            //Get the highest values on the Axes based
            //on what type of Spectrum this is -- file
            //or active acquisition
            Double maxX = this._chartWidth;
            Double maxY = this._chartHeight;

            if (this._file != null)
            {
                maxX = this._file.MaxX;
                maxY = this._file.MaxY;
            }
            else if (this._newSpecInfo != null)
            {
                maxX = this._newSpecInfo.Columns;
                maxY = this._newSpecInfo.Rows;
            }

            //Get the values of the new Size
            Double height = e.NewSize.Height;
            Double width = e.NewSize.Width;

            //Try to size to Height.  If that can't be
            //done, then size to Width.
            if ((height * (maxX / maxY)) < width)
                width = height * (maxX / maxY);
            else
                height = width * (maxY / maxX);

            //Set the ChartHeight and ChartWidth
            this.ChartHeight = height;
            this.ChartWidth = width;
        }
        #endregion


        #region Save As Methods
        /// <summary>
        /// SaveAs saves the Spectrum in the file format
        /// that was specified.
        /// </summary>
        /// <param name="fileName">The name of the file to save</param>
        private void SaveAs(String fileName)
        {
            //Determine the action based on the extension
            //of the file
            switch (Path.GetExtension(fileName))
            {
                case SpectrumExtension.Raw3DExt:
                    this.SaveAsR3D(fileName);
                    break;

                case ImageExtension.JpegExt:
                    this.SaveAsJpeg(fileName);
                    break;
            }
        }


        /// <summary>
        /// SaveAsR3D saves the current file as an R3D
        /// file.
        /// </summary>
        /// <param name="fileName">The R3D file to which to save the data</param>
        private void SaveAsR3D(String fileName)
        {
            //Create a new SHArK File
            ISHArKFile newFile = SHArKFileFactory.Create(fileName, true);

            //Add all of the header data to the File
            newFile.Comment = this._file.Comment;

            //Add all of the numerical data to the File
            foreach (Point p in this._file.Points)
                newFile.AddDataPoint(p);
        }


        /// <summary>
        /// SaveAsJpeg saves the current file as a JPEG
        /// Image file.
        /// </summary>
        /// <param name="fileName">The JPG file to which to save the data</param>
        private void SaveAsJpeg(String fileName)
        {
            //Save the chart as a JPEG
            this._view._chart.Save(fileName, new System.Windows.Media.Imaging.JpegBitmapEncoder());
        }
        #endregion


        #region File Reading Methods
        /// <summary>
        /// ReadFile gets the file from the disk and 
        /// populates the data in the ViewModel.
        /// </summary>
        private void ReadFile()
        {
            //Try to get the ISHArKFile interface
            try
            {
                //Set the Mouse cursor to Wait
                this._view.Dispatcher.Invoke(new SetMouseCursorDelegate(this.SetMouseCursor), Cursors.Wait);

                //Set the document Name
                this._view.Dispatcher.Invoke(new SetDocumentNameDelegate(this.SetDocumentName), Path.GetFileName(this._fileName));

                //Get the ISHArKFile interface from the Factory
                //and sort the values in the resulting File object
                this._view.Dispatcher.Invoke(new SetWindowStatusDelegate(this.SetWindowStatus), Strings.ReadingFile);
                this._file = SHArKFileFactory.Read(this._fileName);

                //Set the ranges on the Chart
                this._view.Dispatcher.Invoke(new SetWindowStatusDelegate(this.SetWindowStatus), Strings.SettingUpChart);
                this._view.Dispatcher.Invoke(new SetAxisRangesDelegate(this.SetAxisRanges), this._file.MaxX, this._file.MaxY);

                //Finally, put the points in the Chart
                this._view.Dispatcher.Invoke(new SetWindowStatusDelegate(this.SetWindowStatus), Strings.ProcessingFileToChart);
                this._view.Dispatcher.Invoke(new AddPointsToChartDelegate(this.AddPointsToChart), this._file.Points.ToArray(), this._file.MaxZ);

                //Reset the Window Status
                this._view.Dispatcher.Invoke(new SetWindowStatusDelegate(this.SetWindowStatus), String.Empty);

                //Reset the Mouse cursor
                this._view.Dispatcher.Invoke(new SetMouseCursorDelegate(this.SetMouseCursor), Cursors.Arrow);
            }
            catch (Exception e)
            {
                //Fire the Error event
                this._view.Dispatcher.Invoke(new ShowErrorDelegate(this.ShowError), e.Message);
            }
        }
        #endregion


        #region Data Acquisition Methods
        /// <summary>
        /// Acquire3DData is called in a separate thread to
        /// acquire the data set up in the NewSpectrumInfo
        /// object passed to the Tab.
        /// </summary>
        private void Acquire3DData()
        {
            //Set the Mouse cursor
            this._view.Dispatcher.Invoke(new SetMouseCursorDelegate(this.SetMouseCursor), Cursors.Wait);

            //Set the basic Chart Properties
            this._view.Dispatcher.Invoke(new SetDocumentNameDelegate(this.SetDocumentName), Path.GetFileName(this._newSpecInfo.FileName));
            this._view.Dispatcher.Invoke(new SetAxisRangesDelegate(this.SetAxisRanges), this._newSpecInfo.Columns - 1, this._newSpecInfo.Rows - 1);

            //Set the run state on the Chart
            this._view.Dispatcher.Invoke(new SetRunStateDelegate(this.SetRunState), true);

            //Get the Hardware objects -- just return 
            //if any of them is null
            IMirror mirror = null;
            IPotentiostat potstat = null;
            ILaser laser = null;

            this.GetHardwareObjects(ref mirror, ref potstat, ref laser);

            if (mirror == null || potstat == null || laser == null)
                return;

            //Try to run the entire Acquisition
            try
            {
                //Initialize the new SHArKFile
                ISHArKFile file = SHArKFileFactory.Create(this._newSpecInfo.FileName, true);

                //Set the potential on the electrode
                potstat.SetPotential(this._newSpecInfo.BiasPotential);

                //Reset the Laser to the Initial Position
                this._view.Dispatcher.Invoke(new SetWindowStatusDelegate(this.SetWindowStatus), Strings.ResetInitialPosition);
                this.SetInitialLaserPosition(mirror, this._newSpecInfo.Columns, 0);

                //Finally, reset the mouse cursor so that the user
                //can see that initial processing is over
                this._view.Dispatcher.Invoke(new SetMouseCursorDelegate(this.SetMouseCursor), Cursors.Arrow);

                //Check the Poteniostat to see if the current is too
                //high to start a scan -- open the box if necessary
                if (potstat.IsCurrentSettled == false)
                    this._view.Dispatcher.Invoke(new ShowDarkCurrentDialogDelegate(this.ShowDarkCurrentDialog), potstat);

                //Do the acquisition while the user does not
                //want to Pause or Stop
                Int32 xIndex = 0;
                Int32 yIndex = this._newSpecInfo.Rows - 1;
                Int32 xStep = this._newSpecInfo.StepSize;

                while (this.IsRunning == true)
                {
                    //Get the time remaining as a String
                    TimeSpan tsRemaining = this._newSpecInfo.CalculateTimeRemaining(xIndex, yIndex);
                    String timeRemaining = String.Format("{0:D2}:{1:D2}:{2:D2}", tsRemaining.Hours, tsRemaining.Minutes, tsRemaining.Seconds);

                    //Set the status on the Window to show that the 
                    //scan is running
                    this._view.Dispatcher.Invoke(new SetWindowStatusDelegate(SetWindowStatus), 
                        String.Format("{0} {1} Remaining", Strings.ScanRunning, timeRemaining));

                    //Get the Dark Current value from the Potentiostat
                    Double darkCurrent = potstat.GetCurrent(this._newSpecInfo.NumberCurrentSamples);

                    //Turn on the Laser and wait the specified amount of time
                    laser.SetLaserState(true);
                    Thread.Sleep(this._newSpecInfo.MillisecondsLaserOnDelay);

                    //Acquire the data for the current point
                    Double lightCurrent = potstat.GetCurrent(this._newSpecInfo.NumberCurrentSamples);

                    //Add the Point to the file
                    Point p = new Point(xIndex, yIndex, lightCurrent - darkCurrent);
                    file.AddDataPoint(p);

                    //Turn off the laser and wait the specified amount of time
                    laser.SetLaserState(false);
                    Thread.Sleep(this._newSpecInfo.MillisecondsLaserOffDelay);

                    //Set the Point in the ObservableCollection so
                    //that it updates the Chart
                    this._view.Dispatcher.Invoke(new AddPointsToChartDelegate(this.AddPointsToChart), new Point[] { p }, this._newSpecInfo.MaxCurrentValue);

                    //Determine the direction of the X-Axis movement --
                    //if this is an odd row (relative to starting at
                    //this._newSpecInfo.Rows - 1), move backward
                    xStep = this._newSpecInfo.StepSize;

                    if ((this._newSpecInfo.Rows % 2 == 0 && yIndex % 2 == 0) ||
                        (this._newSpecInfo.Rows % 2 == 1 && yIndex % 2 == 1))
                        xStep *= -1;

                    //Determine if the Y-Axis mirror needs to move.
                    //If the direction is positive, move when the 
                    //X-Axis gets to Columns.  Otherwise, move when
                    //the X-Axis gets to 0.
                    if ((xStep > 0 && xIndex == this._newSpecInfo.Columns - 1) ||
                        (xStep < 0 && xIndex == 0))
                    {
                        //Move the Y-Axis Mirror
                        mirror.Move(MirrorAxis.Y, this._newSpecInfo.StepSize);

                        //Update the yIndex
                        yIndex--;
                    }

                    //Move to the next Column if necessary
                    if ((xStep > 0 && xIndex < this._newSpecInfo.Columns - 1) ||
                        (xStep < 0 && xIndex > 0))
                    {
                        //Move to the next Column
                        mirror.Move(MirrorAxis.X, xStep);

                        //Update the xIndex based on the direction
                        //of the step
                        if (xStep > 0)
                            xIndex++;
                        else
                            xIndex--;
                    }

                    //Check to see if the scan is finished
                    if (yIndex == -1 && ((xStep > 0 && xIndex == this._newSpecInfo.Columns - 1) || (xStep < 0 && xIndex == 0)))
                        this.IsRunning = false;

                    //If the user has Paused the acquisition, 
                    //loop and Sleep until resumed
                    while (this.IsPaused == true && this.IsRunning == true)
                    {
                        //Stop the Laser from modulating
                        laser.SetLaserState(false);

                        //Set the status on the Window
                        this._view.Dispatcher.Invoke(new SetWindowStatusDelegate(this.SetWindowStatus), 
                            String.Format("{0} {1} Remaining", Strings.ScanPaused, timeRemaining));

                        //Sleep for a half-second
                        Thread.Sleep(500);
                    }
                }

                //Stop the Laser from modulating
                laser.SetLaserState(false);

                //Move the Mirror back to the Initial Position
                this._view.Dispatcher.Invoke(new SetWindowStatusDelegate(this.SetWindowStatus), Strings.ResetInitialPosition);
                this.SetInitialLaserPosition(mirror, xIndex, yIndex);
            }
            catch (System.Exception e)
            {
                //Show an error message and return
                this._view.Dispatcher.Invoke(new ShowErrorDelegate(this.ShowError), e.Message);
                return;
            }
            finally
            {
                //Clean up the Hardware objects
                if (mirror != null)
                    mirror.Dispose();

                if (potstat != null)
                {
                    potstat.SetPotential(0.0);
                    potstat.Dispose();
                }

                if (laser != null)
                {
                    laser.SetLaserState(false);
                    laser.Dispose();
                }

                //Publish the event to notify that the Spectrum
                //has finished
                this._view.Dispatcher.Invoke(new NotifySpectrumEndedDelegate(this.NotifySpectrumEnded));

                //Reset the Window Status
                this._view.Dispatcher.Invoke(new SetWindowStatusDelegate(this.SetWindowStatus), String.Empty);
            }
        }


        /// <summary>
        /// GetHardwareObjects creates the Hardware objects so 
        /// that the data acquisition can occur.
        /// </summary>
        /// <param name="mirror">The IMirror to create</param>
        /// <param name="potstat">The IPotentiostat to create</param>
        /// <param name="laser">The ILaser to create</param>
        private void GetHardwareObjects(ref IMirror mirror, ref IPotentiostat potstat, ref ILaser laser)
        {
            //Create the interfaces
            this._view.Dispatcher.Invoke(new SetWindowStatusDelegate(this.SetWindowStatus), Strings.ConnectMirror);
            mirror = SHArKClassFactory.CreateIMirror();

            this._view.Dispatcher.Invoke(new SetWindowStatusDelegate(this.SetWindowStatus), Strings.ConnectLaser);
            laser = SHArKClassFactory.CreateILaser();

            this._view.Dispatcher.Invoke(new SetWindowStatusDelegate(this.SetWindowStatus), Strings.ConnectPotentiostat);
            potstat = SHArKClassFactory.CreateIPotentiostat();

            if (mirror == null || potstat == null || laser == null)
            {
                //Show the error 
                this._view.Dispatcher.Invoke(new ShowErrorDelegate(this.ShowError), Strings.HardwareNotDetected);

                //Close the Tab
                this._view.Dispatcher.BeginInvoke(new PublishCloseEventDelegate(this.PublishCloseEvent));

                //Publish the event to notify that the Spectrum
                //has finished
                this._view.Dispatcher.Invoke(new NotifySpectrumEndedDelegate(this.NotifySpectrumEnded));

                //Change the Mouse cursor back
                this._view.Dispatcher.Invoke(new SetMouseCursorDelegate(this.SetMouseCursor), Cursors.Arrow);
            }
        }


        /// <summary>
        /// ChangeAcquisition performs the change to the
        /// Acquisition based on the action.
        /// </summary>
        private void ChangeAcquisition(AcquisitionAction action)
        {
            //Switch on the Action
            switch (action)
            {
                case AcquisitionAction.Pause:
                    this.IsPaused = true;
                    break;

                case AcquisitionAction.Restart:
                    this.IsPaused = false;
                    break;

                case AcquisitionAction.Stop:
                    this.IsRunning = false;
                    break;
            }

            //Fire the SpectrumChanged event
            this._eventAggregator.GetEvent<SpectrumChangedEvent>().Publish(this.GetActiveSpectrumInfo());
        }


        /// <summary>
        /// SetRunState sets the value of the IsRunning value
        /// in a thread-safe manner.
        /// </summary>
        /// <param name="isRunning">Boolean to determine if the acquisition is running</param>
        private void SetRunState(Boolean isRunning)
        {
            //Set the IsRunning flag
            this.IsRunning = isRunning;

            //Fire the event to make sure that the Ribbon
            //knows this is running
            this._eventAggregator.GetEvent<SpectrumChangedEvent>().Publish(this.GetActiveSpectrumInfo());
        }


        /// <summary>
        /// ShowDarkCurrentDialog opens up the DarkCurrent 
        /// Dialog and stops the operation of the application
        /// until it is closed.
        /// </summary>
        /// <param name="potstat">The Potentiostat from which to retrieve dark current</param>
        private void ShowDarkCurrentDialog(IPotentiostat potstat)
        {
            //Create the Dialog Box and show it
            DarkCurrentView dcv = new DarkCurrentView();
            DarkCurrentViewModel dcvm = new DarkCurrentViewModel(dcv, potstat);
            dcv.DataContext = dcvm;
            dcv.Owner = System.Windows.Window.GetWindow(this._view);
            dcv.ShowDialog();
        }


        /// <summary>
        /// SetInitialLaserPosition moves the laser to the 
        /// initial position indicated by the NewSpectrumInfo
        /// object.
        /// </summary>
        private void SetInitialLaserPosition(IMirror mirror, Int32 xIndex, Int32 yIndex)
        {
            //Number of Columns is always right 
            Int32 columns = xIndex;

            //Calculate the number of rows to move -- subtract
            //from the total rows
            Int32 rows = this._newSpecInfo.Rows - yIndex;

            //Calculate the amount that needs to be moved
            Int32 initialXStep = columns * this._newSpecInfo.StepSize * -1;
            Int32 initialYStep = rows * this._newSpecInfo.StepSize * -1;

            //Move the mirror
            mirror.Move(MirrorAxis.X, initialXStep);
            mirror.Move(MirrorAxis.Y, initialYStep);
        }


        /// <summary>
        /// NotifySpectrumEnded sends a message to notify 
        /// subscribers that the Spectrum Acquisition has
        /// ended in a thread-safe manner.
        /// </summary>
        private void NotifySpectrumEnded()
        {
            //Set the values on the Chart
            this.IsPaused = false;
            this.IsRunning = false;

            //Publish the event to show that the spectrum ended
            this._eventAggregator.GetEvent<SpectrumChangedEvent>().Publish(this.GetActiveSpectrumInfo());
        }
        #endregion


        #region Thread-Safe Chart Set Methods
        /// <summary>
        /// SetMouseCursor sets the Application Mouse cursor
        /// to the specified input.
        /// </summary>
        /// <param name="cursor">The Cursor to set for the application</param>
        private void SetMouseCursor(Cursor cursor)
        {
            Mouse.OverrideCursor = cursor;
        }


        /// <summary>
        /// ShowError publishes an event to show an Error
        /// Message in a thread-safe manner.
        /// </summary>
        /// <param name="message">The Message to show on the screen</param>
        private void ShowError(String message)
        {
            //Publish the error event
            this._eventAggregator.GetEvent<ErrorMessageEvent>().Publish(message);
        }


        /// <summary>
        /// SetWindowStatus sets the status on the Window in a 
        /// thread-safe manner.
        /// </summary>
        /// <param name="status">The status to set on the Window</param>
        private void SetWindowStatus(String status)
        {
            //Publish an event to set the Window Status
            this._eventAggregator.GetEvent<SetWindowStatusEvent>().Publish(status);
        }


        /// <summary>
        /// SetDocumentName sets the name on the Tab in 
        /// a thread-safe manner.
        /// </summary>
        /// <param name="docName"></param>
        private void SetDocumentName(String docName)
        {
            //Set the Document Name
            this.DocumentName = docName;
        }


        /// <summary>
        /// SetAxisRanges creates the Ranges for the Axes
        /// on the Chart.
        /// </summary>
        /// <param name="xMax">The Max X-Value on the Chart</param>
        /// <param name="yMax">The Max Y-Value on the Chart</param>
        private void SetAxisRanges(Double xMax, Double yMax)
        {
            //Set the ranges on the Chart
            this.XAxisRange = new Syncfusion.Windows.Chart.DoubleRange(0, xMax);
            this.YAxisRange = new Syncfusion.Windows.Chart.DoubleRange(0, yMax);

            //Enable Zooming on the Chart
            Syncfusion.Windows.Chart.ChartAreaCommands.SwitchZooming.Execute(null, this._view._chartArea);
        }


        /// <summary>
        /// AddChartPoint adds the current Point to the 
        /// Collection in a thread-safe manner.
        /// </summary>
        /// <param name="points">The current Point Array to add</param>
        /// <param name="zMax">The Maximum current of the plot</param>
        private void AddPointsToChart(Point[] points, Double zMax)
        {
            //If the Series hasn't been created yet, create it
            Syncfusion.Windows.Chart.ChartSeries series = null;

            if (this._view._chartArea.Series.Count == 0)
            {
                //Create the Series and set some properties
                series = new Syncfusion.Windows.Chart.ChartSeries();
                series.BindingPathsY = new String[] { "Y" };
                series.BindingPathX = "X";
                series.IsIndexed = false;
                series.Template = this._view.Resources["seriesPresenter"] as System.Windows.DataTemplate;
                series.Type = Syncfusion.Windows.Chart.ChartTypes.FastLine;
                series.MouseMove += new Syncfusion.Windows.Chart.ChartMouseEventHandler(series_MouseMove);
                series.SetBinding(Syncfusion.Windows.Chart.ChartSeries.DataSourceProperty, "ChartPoints");
            }

            //If the Point Array has more than one Point in it, then
            //this is a File being read, so create a new ObservableCollection
            //from a List.  If not, then just add the point and update
            //the subscribers.
            if (points.GetLength(0) > 1)
            {
                //Create a new List to hold the points
                List<ChartPoint> tempList = new List<ChartPoint>();

                //Iterate through the Points and put them in the List
                foreach (Point p in points)
                    tempList.Add(new ChartPoint(p, zMax));

                //Set the DataSource
                series.DataSource = new ObservableCollection<ChartPoint>(tempList);
            }
            else
            {
                //Set the point and fire the event
                this._chartPoints.Add(new ChartPoint(points[0], zMax));
                this.FirePropertyChanged("ChartPoints");
            }

            //Add the Series if it was created
            if (series != null)
                this._view._chartArea.Series.Add(series);
        }

        
        /// <summary>
        /// PublishCloseEvent publishes an event to close the Tab
        /// in a thread-safe manner.
        /// </summary>
        private void PublishCloseEvent()
        {
            //Publish an Event to close the View
            this._eventAggregator.GetEvent<CloseSpectrumEvent>().Publish(null);
        }
        #endregion

        
        #region Helper Methods
        /// <summary>
        /// WireEvents wires up the EventAggregator published
        /// events to the methods.
        /// </summary>
        private void WireEvents()
        {
            //Wire the events
            this._eventAggregator.GetEvent<SaveSpectrumAsEvent>().Subscribe(this.SaveAs);
            this._eventAggregator.GetEvent<ChangeAcquisitionEvent>().Subscribe(this.ChangeAcquisition);
        }


        /// <summary>
        /// GetActiveSpectrumInfo centralizes the code to
        /// setup an ActiveSpectrumInfo
        /// </summary>
        /// <returns></returns>
        private ActiveSpectrumInfo GetActiveSpectrumInfo()
        {
            //Create a new ActiveSpectrumInfo
            ActiveSpectrumInfo rtn = new ActiveSpectrumInfo();

            //Setup the values
            rtn.IsPaused = this._isPaused;
            rtn.IsRunning = this._isRunning;
            rtn.ChartPosition = this._currPoint;

            //Return the result
            return rtn;
        }
        #endregion
    }
}
