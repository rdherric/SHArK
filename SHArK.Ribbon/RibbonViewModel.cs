using System;
using System.Windows.Media;
using System.Windows.Media.Imaging;

using SHArK.Common;
using SHArK.Common.Config;
using SHArK.Common.Enums;
using SHArK.Common.Events;
using SHArK.Common.Spectrum;
using SHArK.Common.Tab;
using RDH2.Configuration;
using RDH2.Windows.Markup;
using RDH2.Windows.ViewModel;
using Microsoft.Practices.Composite.Events;
using Microsoft.Practices.Composite.Presentation.Commands;

namespace SHArK.Ribbon
{
    /// <summary>
    /// RibbonViewModel is the backing class for the 
    /// Ribbon View.
    /// </summary>
    public class RibbonViewModel : ViewModelBase
    {
        #region Member Variables
        private IEventAggregator _eventAggregator = null;
        private Boolean _newEnabled = false;
        private Boolean _tabsAvailable = false;

        //Variables to handle the Acquisition Controls
        private Boolean _acquisitionRunning = false;
        private ImageSource _pauseImageSource = new 
            BitmapImage(new PackUri(Strings.SHArKCommonName, Strings.PauseImageSource));
        private String _pauseLabel = Strings.Pause;
        private String _pauseScreenTipDesc = Strings.PauseScreenTipDesc;

        //Command objects
        private DelegateCommand<Object> _configHardwareCommand = null;
        private DelegateCommand<Object> _newCommand = null;
        private DelegateCommand<Object> _openCommand = null;
        private DelegateCommand<Object> _saveAsCommand = null;
        private DelegateCommand<Object> _closeCommand = null;
        private DelegateCommand<Object> _printCommand = null;
        private DelegateCommand<Object> _aboutCommand = null;
        private DelegateCommand<Object> _exitCommand = null;

        //Acquisition Control Commands
        private DelegateCommand<Object> _pauseCommand = null;
        private DelegateCommand<Object> _stopCommand = null;
        #endregion


        #region Constructor
        /// <summary>
        /// Default constructor for the RibbonViewModel object.
        /// </summary>
        public RibbonViewModel(IEventAggregator eventAggregator)
        {
            //Save the input in the Member variables
            this._eventAggregator = eventAggregator;

            //Hook up the Commands and Events
            this.WireCommands();
            this.WireEvents();

            //Setup the New Spectrum Button
            this.SetNewSpectrumControls();
        }
        #endregion


        #region Command Properties
        /// <summary>
        /// ConfigureHardwareCommand is used to wire the Configure button 
        /// to the ViewModel.
        /// </summary>
        public DelegateCommand<Object> ConfigureHardwareCommand
        {
            get { return this._configHardwareCommand; }
        }


        /// <summary>
        /// NewCommand is used to wire the New button 
        /// to the ViewModel.
        /// </summary>
        public DelegateCommand<Object> NewCommand
        {
            get { return this._newCommand; }
        }


        /// <summary>
        /// OpenCommand is used to wire the Open Ribbon
        /// button to the ViewModel.
        /// </summary>
        public DelegateCommand<Object> OpenCommand
        {
            get { return this._openCommand; }
        }


        /// <summary>
        /// SaveAsCommand is used to wire the Save As Ribbon
        /// button to the ViewModel.
        /// </summary>
        public DelegateCommand<Object> SaveAsCommand
        {
            get { return this._saveAsCommand; }
        }


        /// <summary>
        /// CloseCommand is used to wire the Close Ribbon
        /// button to the ViewModel.
        /// </summary>
        public DelegateCommand<Object> CloseCommand
        {
            get { return this._closeCommand; }
        }


        /// <summary>
        /// PrintCommand is used to wire the Print Ribbon
        /// buttons to the ViewModel.
        /// </summary>
        public DelegateCommand<Object> PrintCommand
        {
            get { return this._printCommand; }
        }


        /// <summary>
        /// AboutCommand is used to wire the About Ribbon
        /// button to the ViewModel.
        /// </summary>
        public DelegateCommand<Object> AboutCommand
        {
            get { return this._aboutCommand; }
        }


        /// <summary>
        /// ExitCommand is used to wire the Exit Ribbon 
        /// button to the ViewModel.
        /// </summary>
        public DelegateCommand<Object> ExitCommand
        {
            get { return this._exitCommand; }
        }


        /// <summary>
        /// PauseCommand is used to wire the Pause / Restart Ribbon 
        /// button to the ViewModel.
        /// </summary>
        public DelegateCommand<Object> PauseCommand
        {
            get { return this._pauseCommand; }
        }


        /// <summary>
        /// StopCommand is used to wire the Stop Ribbon 
        /// button to the ViewModel.
        /// </summary>
        public DelegateCommand<Object> StopCommand
        {
            get { return this._stopCommand; }
        }
        #endregion

        
        #region Command Implementations
        /// <summary>
        /// ConfigureHardware publishes an event to the Shell
        /// to open the Hardware Configuration Wizard.
        /// </summary>
        /// <param name="parameter"></param>
        private void ConfigureHardware(Object parameter)
        {
            this._eventAggregator.GetEvent<ShellEvent>().Publish(ShellAction.ConfigureHardware);
        }


        /// <summary>
        /// NewSpectrum publishes an event to the Shell
        /// to create a new Spectrum.
        /// </summary>
        /// <param name="parameter"></param>
        private void NewSpectrum(Object parameter)
        {
            //Fire the event
            this._eventAggregator.GetEvent<ShellEvent>().Publish(ShellAction.New);
        }


        /// <summary>
        /// OpenSpectrum publishes an event to the Shell
        /// to open a Spectrum.
        /// </summary>
        /// <param name="parameter">Object required by DelegateCommand</param>
        private void OpenSpectrum(Object parameter)
        {
            //Fire the event
            this._eventAggregator.GetEvent<ShellEvent>().Publish(ShellAction.Open);
        }


        /// <summary>
        /// SaveSpectrumAs publishes an event to the Shell
        /// to save a Spectrum.
        /// </summary>
        /// <param name="parameter">Object required by DelegateCommand</param>
        private void SaveSpectrumAs(Object parameter)
        {
            //Fire the event
            this._eventAggregator.GetEvent<ShellEvent>().Publish(ShellAction.SaveAs);
        }


        /// <summary>
        /// CloseSpectrum publishes an event to close 
        /// the Active Spectrum.
        /// </summary>
        /// <param name="parameter">Object required by DelegateCommand</param>
        private void CloseSpectrum(Object parameter)
        {
            //Fire the event
            this._eventAggregator.GetEvent<CloseSpectrumEvent>().Publish(null);
        }


        /// <summary>
        /// PrintSpectrum publishes an event to print
        /// the Active Spectrum.
        /// </summary>
        /// <param name="parameter">Object required by DelegateCommand</param>
        private void PrintSpectrum(Object parameter)
        {
            //Fire the event
            this._eventAggregator.GetEvent<PrintSpectrumEvent>().Publish(null);
        }


        /// <summary>
        /// About publishes an event to show the About box.
        /// </summary>
        /// <param name="parameter">Object required by DelegateCommand</param>
        private void About(Object parameter)
        {
            //Publish the event
            this._eventAggregator.GetEvent<ShellEvent>().Publish(ShellAction.About);
        }


        /// <summary>
        /// Exit closes the Application.
        /// </summary>
        /// <param name="parameter">Object that is required by DelegateCommand</param>
        private void Exit(Object parameter)
        {
            //Publish the Event 
            this._eventAggregator.GetEvent<ShellEvent>().Publish(ShellAction.Exit);
        }


        /// <summary>
        /// PauseSpectrum pauses the currently acquiring Spectrum.
        /// </summary>
        /// <param name="parameter">Object that is required by DelegateCommand</param>
        private void PauseSpectrum(Object parameter)
        {
            //Determine the type of Action based on the
            //label of the Pause button
            AcquisitionAction action = AcquisitionAction.Pause;
            if (this.PauseLabel != Strings.Pause)
                action = AcquisitionAction.Restart;

            //Publish the Event
            this._eventAggregator.GetEvent<ChangeAcquisitionEvent>().Publish(action);
        }


        /// <summary>
        /// StopSpectrum stops the currently acquiring Spectrum.
        /// </summary>
        /// <param name="parameter">Object that is required by DelegateCommand</param>
        private void StopSpectrum(Object parameter)
        {
            //Publish the Event
            this._eventAggregator.GetEvent<ChangeAcquisitionEvent>().Publish(AcquisitionAction.Stop);
        }
        #endregion


        #region Event Handlers
        /// <summary>
        /// OnTabChange is called when a Tab in the MDI region
        /// is changed in some way.  The SpectrumInfo is exposed
        /// directly to the View for DataBinding.
        /// </summary>
        /// <param name="info">The SpectrumInfo </param>
        private void OnTabChanged(ActiveTabInfo info)
        {
            //Set the TabsAvailable Property
            this.TabsAvailable = (info.TabsOpen > 0);
        }


        /// <summary>
        /// OnSpectrumZoomed is called when a Spectrum has
        /// been Zoomed.
        /// </summary>
        /// <param name="parameter"></param>
        private void OnSpectrumChanged(ActiveSpectrumInfo info)
        {
            //Set the acquisition Controls
            this.SetAcquisitionControls(info);
        }


        /// <summary>
        /// OnHardwareChanged is called when the user has configured
        /// the Hardware through the Wizard.
        /// </summary>
        /// <param name="parameter">Object parameter to make the Event Aggregator happy</param>
        private void OnHardwareChanged(Object parameter)
        {
            //Set the New Spectrum Controls
            this.SetNewSpectrumControls();
        }
        #endregion


        #region Public Properties
        /// <summary>
        /// NewEnabled enables or disables the New Spectrum 
        /// button based on whether the Hardware has been
        /// configured.
        /// </summary>
        public Boolean NewEnabled
        {
            get { return this._newEnabled; }
            private set
            {
                //Set the value and fire the event
                this._newEnabled = value;
                this.FirePropertyChanged("NewEnabled");
            }
        }
        
        
        /// <summary>
        /// TabsAvailable determines if there are any Tabs
        /// that have been opened or made new.
        /// </summary>
        public Boolean TabsAvailable
        {
            get { return this._tabsAvailable; }
            set
            {
                //Set the value and fire the event
                this._tabsAvailable = value;
                this.FirePropertyChanged("TabsAvailable");
            }
        }

        
        /// <summary>
        /// AcquisitionRunning determines if the active 
        /// Spectrum is acquiring data.
        /// </summary>
        public Boolean AcquisitionRunning
        {
            get { return this._acquisitionRunning; }
            set 
            { 
                //Set the value and fire the event
                this._acquisitionRunning = value;
                this.FirePropertyChanged("AcquisitionRunning");
            }
        }


        /// <summary>
        /// PauseImageSource determines the ImageSource
        /// for the Pause button.
        /// </summary>
        public ImageSource PauseImageSource 
        {
            get { return this._pauseImageSource; }
            set 
            { 
                //Set the value and fire the event
                this._pauseImageSource = value;
                this.FirePropertyChanged("PauseImageSource");
            }
        }


        /// <summary>
        /// PauseLabel determines the Label
        /// for the Pause button.
        /// </summary>
        public String PauseLabel
        {
            get { return this._pauseLabel; }
            set
            {
                //Set the value and fire the event
                this._pauseLabel = value;
                this.FirePropertyChanged("PauseLabel");
            }
        }


        /// <summary>
        /// PauseScreenTipDesc determines the ScreenTip Description
        /// for the Pause button.
        /// </summary>
        public String PauseScreenTipDesc
        {
            get { return this._pauseScreenTipDesc; }
            set
            {
                //Set the value and fire the event
                this._pauseScreenTipDesc = value;
                this.FirePropertyChanged("PauseScreenTipDesc");
            }
        }
        #endregion


        #region Helper Methods
        /// <summary>
        /// WireCommands hooks up the methods to the Commands;
        /// </summary>
        private void WireCommands()
        {
            //Wire the Commands
            this._configHardwareCommand = new DelegateCommand<Object>(this.ConfigureHardware);
            this._newCommand = new DelegateCommand<Object>(this.NewSpectrum);
            this._openCommand = new DelegateCommand<Object>(this.OpenSpectrum);
            this._saveAsCommand = new DelegateCommand<Object>(this.SaveSpectrumAs);
            this._closeCommand = new DelegateCommand<Object>(this.CloseSpectrum);
            this._printCommand = new DelegateCommand<Object>(this.PrintSpectrum);
            this._aboutCommand = new DelegateCommand<Object>(this.About);
            this._exitCommand = new DelegateCommand<Object>(this.Exit);
            this._pauseCommand = new DelegateCommand<Object>(this.PauseSpectrum);
            this._stopCommand = new DelegateCommand<Object>(this.StopSpectrum);
        }


        /// <summary>
        /// WireEvents hooks the Event publishing to the class
        /// Methods.
        /// </summary>
        private void WireEvents()
        {
            //Wire the events
            this._eventAggregator.GetEvent<TabChangedEvent>().Subscribe(this.OnTabChanged);
            this._eventAggregator.GetEvent<SpectrumChangedEvent>().Subscribe(this.OnSpectrumChanged);
            this._eventAggregator.GetEvent<HardwareChangedEvent>().Subscribe(this.OnHardwareChanged);
        }


        /// <summary>
        /// SetNewSpectrumControls retrieves the Hardware configuration
        /// and enables or disables the New Spectrum button.
        /// </summary>
        private void SetNewSpectrumControls()
        {
            //Get the Hardware Configuration and set the New Enable
            ConfigHelper<HardwareConfig> helper = new ConfigHelper<HardwareConfig>(ConfigLocation.AllUsers);
            HardwareConfig hc = helper.GetConfig();
            this.NewEnabled = hc.IsConfigured;
        }


        /// <summary>
        /// SetAcquisitionControls sets up the Properties that
        /// change based on whether the Spectrum is acquiring
        /// data or not.
        /// </summary>
        /// <param name="info"></param>
        private void SetAcquisitionControls(ActiveSpectrumInfo info)
        {
            //Set the acquistion controls based on the Booleans
            this.AcquisitionRunning = info.IsRunning;
            this.NewEnabled = !(info.IsRunning);

            if (info.IsPaused == false)
            {
                this.PauseImageSource = new 
                    BitmapImage(new PackUri(Strings.SHArKCommonName, Strings.PauseImageSource));
                this.PauseLabel = Strings.Pause;
                this.PauseScreenTipDesc = Strings.PauseScreenTipDesc;
            }
            else
            {
                this.PauseImageSource = 
                    new BitmapImage(new PackUri(Strings.SHArKCommonName, Strings.RestartImageSource));
                this.PauseLabel = Strings.Restart;
                this.PauseScreenTipDesc = Strings.RestartScreenTipDesc;
            }
        }
        #endregion
    }
}
