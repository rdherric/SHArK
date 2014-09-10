using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Text;
using System.Windows;
using Microsoft.Win32;

using RDH2.Configuration;
using RDH2.Windows.ViewModel;
using SHArK.Common;
using SHArK.Common.Config;
using SHArK.Common.Enums;
using SHArK.Common.Events;
using SHArK.Common.Spectrum;
using SHArK.Common.Tab;
using SHArK.Config;
using SHArK.IO.Enums;
using SHArK.Wizards.Hardware;
using SHArK.Wizards.NewSpectrum;
using Microsoft.Practices.Composite.Events;
using Microsoft.Practices.Unity;

namespace SHArK
{
    /// <summary>
    /// ShellViewModel is used as the backing class
    /// for the ShellView.
    /// </summary>
    internal class ShellViewModel : ViewModelBase
    {
        #region Member Variables
        private IUnityContainer _unity = null;
        private IEventAggregator _eventAggregator = null;
        private String _title = String.Empty;
        private SHArK.IO.Data.Point _point = null;
        private String _windowStatus = String.Empty;
        private ShellViewConfig _config = null;
        #endregion


        #region Constructor / Destructor
        /// <summary>
        /// Default constructor for the ShellViewModel object.
        /// </summary>
        /// <param name="eventAggregator">The EventAggregator object used by the System</param>
        public ShellViewModel(IUnityContainer unity, IEventAggregator eventAggregator)
        {
            //Save the input in the member variables
            this._unity = unity;
            this._eventAggregator = eventAggregator;

            //Setup the initial Title
            this.OnTabChanged(new ActiveTabInfo());

            //Get the ShellView configuration and save it in 
            //the member variable
            ConfigHelper<ShellViewConfig> helper = new ConfigHelper<ShellViewConfig>(ConfigLocation.AllUsers);
            this._config = helper.GetWriteableConfig();

            //Hook the events
            this.WireEvents();
        }


        /// <summary>
        /// Default destructor for the ShellViewModel object.
        /// </summary>
        ~ShellViewModel()
        {
            //Save the configuration in the app.config
            ConfigHelper<ShellViewConfig> helper = new ConfigHelper<ShellViewConfig>(ConfigLocation.AllUsers);
            helper.SetConfig(this._config);
        }
        #endregion


        #region Event Handlers
        /// <summary>
        /// OnShellEvent is called when a Module wants a
        /// Shell event fired.  It dispatches the message
        /// to the appropriate method.
        /// </summary>
        /// <param name="action"></param>
        private void OnShellEvent(ShellAction action)
        {
            //Dispatch the message
            switch (action)
            {
                case ShellAction.About:
                    this.OnAbout();
                    break;

                case ShellAction.ConfigureHardware:
                    this.OnConfigureHardware();
                    break;

                case ShellAction.New:
                    this.OnNew();
                    break;

                case ShellAction.Open:
                    this.OnOpen();
                    break;

                case ShellAction.SaveAs:
                    this.OnSaveAs();
                    break;
            }
        }


        /// <summary>
        /// OnAboutEvent is called when the user fires
        /// the AboutEvent.  It shows the AboutView.
        /// </summary>
        private void OnAbout()
        {
            //Get all of the objects that are needed for
            //the About box
            ShellView sv = this._unity.Resolve<ShellView>(Strings.ShellViewName);
            AboutViewModel avm = this._unity.Resolve<AboutViewModel>();
            AboutView av = this._unity.Resolve<AboutView>();

            //Set up the AboutView
            av.DataContext = avm;
            av.Owner = sv;
            av.Show();
        }

        
        /// <summary>
        /// OnConfigureHardware opens the Configure Hardware Wizard
        /// so that the user can set up the licensing.
        /// </summary>
        private void OnConfigureHardware()
        {
            //Create a HardwareWizard and Show it
            HardwareViewModel hwVM = this._unity.Resolve<HardwareViewModel>();
            HardwareView hwV = this._unity.Resolve<HardwareView>();

            //Register the Instance of the HardwareView
            this._unity.RegisterInstance<HardwareView>(Strings.HardwareWizardName, hwV);

            //Wire up the View with the ViewModel and vice-versa
            hwV.DataContext = hwVM;
            hwVM.HookEvents(hwV);

            //Get a reference to the Shell and make it
            //the Owner of the Wizard
            ShellView sv = this._unity.Resolve<ShellView>(Strings.ShellViewName);
            hwV.Owner = sv;

            //Show the Dialog
            Nullable<Boolean> result = hwV.ShowDialog();

            //If the user Finished the Dialog, fire the event
            //to notify of UI changes
            if (result == true)
                this._eventAggregator.GetEvent<HardwareChangedEvent>().Publish(null);
        }


        /// <summary>
        /// OnNew opens the New Spectrum Wizard and returns
        /// the results by firing a NewSpectrumEvent.
        /// </summary>
        private void OnNew()
        {
            //Create a NewSpectrumWizard and Show it
            NewSpectrumViewModel nsvm = this._unity.Resolve<NewSpectrumViewModel>();
            NewSpectrumView nsv = this._unity.Resolve<NewSpectrumView>();

            //Register the Instance of the NewSpectrumView
            this._unity.RegisterInstance<NewSpectrumView>(Strings.NewSpectrumWizardName, nsv);

            //Wire up the View with the ViewModel
            nsv.DataContext = nsvm;

            //Get a reference to the Shell and make it
            //the Owner of the Wizard
            ShellView sv = this._unity.Resolve<ShellView>(Strings.ShellViewName);
            nsv.Owner = sv;

            //Show the Dialog
            Nullable<Boolean> result = nsv.ShowDialog();

            //If the DialogResult comes back OK, fire the event
            if (result == true)
                this._eventAggregator.GetEvent<NewSpectrumEvent>().Publish(nsvm.NewSpectrumInfo);
        }


        /// <summary>
        /// OnOpen opens the OpenFileDialog and returns the 
        /// results by firing an OpenSpectrumEvent. 
        /// </summary>
        private void OnOpen()
        {
            //Create an OpenFileDialog and set it up
            OpenFileDialog ofd = new OpenFileDialog();
            ofd.AddExtension = true;
            ofd.CheckFileExists = true;
            ofd.CheckPathExists = true;
            ofd.Filter = SpectrumExtension.ToString(SpectrumType.R3D, SpectrumType.TXT);
            ofd.Multiselect = false;
            ofd.Title = Strings.OpenSHArKFile;
            ofd.ValidateNames = true;

            //Open the Dialog and get the result
            Nullable<Boolean> result = ofd.ShowDialog();

            //If the user clicked OK, open the file by firing
            //the OpenSpectrumEvent.
            if (result == true)
                this._eventAggregator.GetEvent<OpenSpectrumEvent>().Publish(ofd.FileName);
        }


        /// <summary>
        /// OnSaveAs opens the Save Dialog box so that the user 
        /// can save the active Spectrum as something else.
        /// </summary>
        private void OnSaveAs()
        {
            //Create a SaveFileDialog and set it up
            SaveFileDialog sfd = new SaveFileDialog();
            sfd.AddExtension = true;
            sfd.CheckPathExists = true;
            sfd.Filter = ImageExtension.ToString() + "|" + SpectrumExtension.ToString(SpectrumType.R3D);
            sfd.OverwritePrompt = true;
            sfd.Title = Strings.SaveSHArKFile;
            sfd.ValidateNames = true;

            //Open the Dialog and get the result
            Nullable<Boolean> result = sfd.ShowDialog();

            //If the user clicked OK, save the file by firing
            //the SaveSpectrumAsEvent.
            if (result == true)
                this._eventAggregator.GetEvent<SaveSpectrumAsEvent>().Publish(sfd.FileName);
        }


        /// <summary>
        /// OnDocumentNameChangedEvent sets the value of the 
        /// DocumentName and fires an event to subscribers.
        /// </summary>
        /// <param name="tabName">The Name of the Tab</param>
        private void OnTabChanged(ActiveTabInfo info)
        {
            //Generate the String for the Title
            StringBuilder title = new StringBuilder(info.DocumentName);

            //Add a separator if necessary
            if (title.Length > 0)
                title.Append(Strings.TitleSeparator);

            //Now add the Application name
            title.Append(Strings.ApplicationName);

            //Set the Document Name Property
            this.Title = title.ToString();
        }


        /// <summary>
        /// OnSpectrumChanged is called when the user has
        /// done something to change the values in the Shell
        /// about the active Spectrum.
        /// </summary>
        /// <param name="info">The ActiveSpectrumInfo sent by the Tab</param>
        private void OnSpectrumChanged(ActiveSpectrumInfo info)
        {
            //Set the properties from the input
            this.ChartPosition = info.ChartPosition;
        }


        /// <summary>
        /// OnError shows an error message through the 
        /// ShellView.
        /// </summary>
        /// <param name="errorMsg">The Error Message to show</param>
        private void OnError(String errorMsg)
        {
            //Get the ShellView object
            ShellView sv = this._unity.Resolve<ShellView>(Strings.ShellViewName);

            //Show the Error Message
            MessageBox.Show(sv, errorMsg, "SHArK Application Error", MessageBoxButton.OK, MessageBoxImage.Error);            
        }


        /// <summary>
        /// OnSetWindowStatus sets the property on the ViewModel
        /// to show the status in the StatusBar.
        /// </summary>
        /// <param name="status">The Status to set on the Window</param>
        private void OnSetWindowStatus(String status)
        {
            //Set the status on the StatusBar
            this.WindowStatus = status;
        }
        #endregion


        #region Public Properties
        /// <summary>
        /// Title returns the name of the current Document active 
        /// in the Tab host plus the application name.
        /// </summary>
        public String Title
        {
            get { return this._title; }
            set 
            { 
                //Set the value
                this._title = value; 

                //Fire the event
                this.FirePropertyChanged("Title");
            }
        }


        /// <summary>
        /// WindowHeight determines the height of the ShellView.
        /// </summary>
        public Int32 WindowHeight
        {
            get { return this._config.Height; }
            set { this._config.Height = value; }
        }


        /// <summary>
        /// WindowWidth determines the width of the ShellView.
        /// </summary>
        public Int32 WindowWidth
        {
            get { return this._config.Width; }
            set { this._config.Width = value; }
        }
        
        
        /// <summary>
        /// ChartPosition determines the current position of the
        /// mouse on the Chart so that it can be shown in the 
        /// StatusBar.
        /// </summary>
        public SHArK.IO.Data.Point ChartPosition
        {
            get { return this._point; }
            set
            {
                //Set the value and fire the event
                this._point = value;
                this.FirePropertyChanged("ChartPosition");
            }
        }


        /// <summary>
        /// WindowStatus sets the status on the Window.
        /// </summary>
        public String WindowStatus
        {
            get { return this._windowStatus; }
            private set
            {
                //Set the value and fire the event
                this._windowStatus = value;
                this.FirePropertyChanged("WindowStatus");
            }
        }
        #endregion


        #region Helper Methods
        /// <summary>
        /// CheckHardwareConfiguration is called when the ShellView 
        /// Window is created.  It shows the Hardware Configuration
        /// Wizard if necessary when the application starts.
        /// </summary>
        public void CheckHardwareConfiguration()
        {
            //Get the Hardware Config
            ConfigHelper<HardwareConfig> helper = new ConfigHelper<HardwareConfig>(ConfigLocation.AllUsers);
            HardwareConfig config = helper.GetConfig();

            //If the Hardware hasn't been configured and the user
            //hasn't clicked the Do Not Configure checkbox, 
            //show the Wizard.
            if (config.IsConfigured == false && config.DoNotConfigure == false)
                this.OnConfigureHardware();
        }


        /// <summary>
        /// WireEvents hooks into the EventAggregator
        /// to and wires the events.
        /// </summary>
        private void WireEvents()
        {
            //Hook the Events
            this._eventAggregator.GetEvent<ShellEvent>().Subscribe(this.OnShellEvent);
            this._eventAggregator.GetEvent<TabChangedEvent>().Subscribe(this.OnTabChanged);
            this._eventAggregator.GetEvent<ErrorMessageEvent>().Subscribe(this.OnError);
            this._eventAggregator.GetEvent<SpectrumChangedEvent>().Subscribe(this.OnSpectrumChanged);
            this._eventAggregator.GetEvent<SetWindowStatusEvent>().Subscribe(this.OnSetWindowStatus);
        }
        #endregion
    }
}
