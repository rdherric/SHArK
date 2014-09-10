using System;
using System.Collections.Generic;
using System.Text;
using System.Threading;
using System.Windows;
using System.Windows.Input;
using Microsoft.Practices.Unity;
using Microsoft.Practices.Composite.Events;

using RDH2.SHArK.Interface;
using SHArK.Common;
using SHArK.Common.Events;
using Syncfusion.Windows.Tools.Controls;

namespace SHArK.Wizards.NewSpectrum
{
    /// <summary>
    /// PagePotstatLaserViewModel is the backing class
    /// for the PagePotstatLaserView class and provides
    /// logic for the WizardPage.
    /// </summary>
    internal class PagePotstatLaserViewModel : NewSpectrumPageViewModelBase
    {
        #region Member Variables
        private UnityContainer _unity = null;
        private IEventAggregator _eventAggregator = null;
        private PagePotstatLaserView _view = null;
        private Boolean _hardwareSearched = false;
        private Visibility _warningVisibility = Visibility.Collapsed;
        private Boolean _nextEnabled = true;
        private Boolean _backEnabled = true;

        //Delegate types for Multi-Threading
        private delegate void ChangeCursorDelegate(Cursor cursor);
        private delegate void ShowErrorDelegate(String message);
        private delegate void SetButtonsEnabledDelegate(Boolean enable);
        private delegate void SetTextBlockVisibilityDelegate(Visibility visibility);
        #endregion


        #region Constructor
        /// <summary>
        /// Default Constructor for the PagePotstatLaserViewModel.
        /// </summary>
        /// <param name="unity"></param>
        public PagePotstatLaserViewModel(UnityContainer unity, IEventAggregator eventAggregator)
        {
            //Save the input in the member variables
            this._unity = unity;
            this._eventAggregator = eventAggregator;
        }
        #endregion


        #region Event Handlers
        /// <summary>
        /// HookEvents hooks the events of the View to the 
        /// logic of the ViewModel.
        /// </summary>
        /// <param name="view">The View to hook the events</param>
        public void HookEvents(PagePotstatLaserView view)
        {
            //Save the View in the member variable for
            //focusing on it later
            this._view = view;

            //Hook the events
            view.Selected += new RoutedEventHandler(view_Selected);
        }


        /// <summary>
        /// view_Selected spins off a thread to get the Potentiostat
        /// type and show a message if necessary.
        /// </summary>
        /// <param name="sender">The WizardPage that is being selected</param>
        /// <param name="e">The EventArgs sent by the System</param>
        void view_Selected(object sender, RoutedEventArgs e)
        {
            //If the potentiostat has already been found, 
            //don't do it again
            if (this._hardwareSearched == true)
                return;

            //Get the Wizard from the UnityContainer
            WizardControl wizard = this._unity.Resolve<WizardControl>(Strings.NewSpectrumWizardName);

            //Start a thread to do the processing
            ParameterizedThreadStart pts = new ParameterizedThreadStart(this.CheckPotentiostat);
            Thread t = new Thread(pts);
            t.Start(wizard);
        }
        #endregion


        #region Public Properties
        /// <summary>
        /// NextEnabled determines if the Next Button should
        /// be enabled.
        /// </summary>
        public Boolean NextEnabled
        {
            get { return this._nextEnabled; }
            set
            {
                //Set the value and fire the event
                this._nextEnabled = value;
                this.FirePropertyChanged("NextEnabled");
            }
        }


        /// <summary>
        /// BackEnabled determines if the Back Button should
        /// be enabled.
        /// </summary>
        public Boolean BackEnabled
        {
            get { return this._backEnabled; }
            set
            {
                //Set the value and fire the event
                this._backEnabled = value;
                this.FirePropertyChanged("BackEnabled");
            }
        }


        /// <summary>
        /// BiasPotential determines the potential to be set
        /// on the electrode by the Potentiostat.
        /// </summary>
        public Double BiasPotential
        {
            get { return this.NewSpectrumInfo.BiasPotential; }
            set
            {
                //Set the value and fire the event
                this.NewSpectrumInfo.BiasPotential = value;
                this.FirePropertyChanged("BiasPotential");
            }
        }


        /// <summary>
        /// LaserOnDelay determines the ms for which
        /// the laser will be delayed prior to acquiring
        /// data.
        /// </summary>
        public Int32 LaserOnDelay
        {
            get { return this.NewSpectrumInfo.MillisecondsLaserOnDelay; }
            set
            {
                //Set the value and fire the event
                this.NewSpectrumInfo.MillisecondsLaserOnDelay = value;
                this.FirePropertyChanged("LaserOnDelay");
            }
        }


        /// <summary>
        /// NumberOfSamples determines the number of samples
        /// to be acquired and averaged.
        /// </summary>
        public Int32 NumberOfSamples
        {
            get { return this.NewSpectrumInfo.NumberCurrentSamples; }
            set
            {
                //Set the value and fire the event
                this.NewSpectrumInfo.NumberCurrentSamples = value;
                this.FirePropertyChanged("NumberOfSamples");
            }
        }

        
        /// <summary>
        /// LaserOffDelay determines the ms for which
        /// the laser will be delayed prior to moving to
        /// the next data point.
        /// </summary>
        public Int32 LaserOffDelay
        {
            get { return this.NewSpectrumInfo.MillisecondsLaserOffDelay; }
            set
            {
                //Set the value and fire the event
                this.NewSpectrumInfo.MillisecondsLaserOffDelay = value;
                this.FirePropertyChanged("LaserOffDelay");
            }
        }


        /// <summary>
        /// BiasWarningVisibility determines whether the 
        /// bias warning for a SHArK box is visible or not.
        /// </summary>
        public Visibility HardwareWarningVisibility
        {
            get { return this._warningVisibility; }
            private set
            {
                //Set the value and fire the event
                this._warningVisibility = value;
                this.FirePropertyChanged("HardwareWarningVisibility");
            }
        }
        #endregion


        #region Multi-Threading Methods
        /// <summary>
        /// CheckPotentiostat looks for the type of 
        /// potentiostat in the background thread.
        /// </summary>
        /// <param name="parameter">The View that is being modified</param>
        private void CheckPotentiostat(Object parameter)
        {
            //Unpack the Parameters
            WizardControl wizard = parameter as WizardControl;

            //Set the button Enable states
            wizard.Dispatcher.Invoke(new SetButtonsEnabledDelegate(this.SetButtonsEnabled), false);

            //Set the Cursor on the WizardControl
            wizard.Dispatcher.Invoke(new ChangeCursorDelegate(this.ChangeCursor), Cursors.Wait);

            //Create the Hardware objects
            IPotentiostat potstat = SHArKClassFactory.CreateIPotentiostat();

            //If the Potentiostat could be created, check the 
            //Name and see if it is a SHArK box.  Otherwise, 
            //popup an error message.
            if (potstat != null)
            {
                //Set the Visibility on the TextBlock if this is 
                //a SHArK box
                if (potstat.Name.ToUpper().IndexOf("SHARK") > 0)
                    wizard.Dispatcher.Invoke(new SetTextBlockVisibilityDelegate(this.SetTextBlockVisibility), Visibility.Visible);

                //Set the MaxCurrentValue property in the NewSpectrumInfo
                this.NewSpectrumInfo.MaxCurrentValue = potstat.MaximumCurrent;

                //Clean up the potentiostat
                potstat.Dispose();
            }
            else
                wizard.Dispatcher.Invoke(new ShowErrorDelegate(this.ShowError), Strings.DeviceNotFound);

            //Set the Cursor on the WizardControl
            wizard.Dispatcher.Invoke(new ChangeCursorDelegate(this.ChangeCursor), Cursors.Arrow);

            //Enable the buttons as necessary
            wizard.Dispatcher.Invoke(new SetButtonsEnabledDelegate(this.SetButtonsEnabled), true);

            //Set the flag that the Hardware has been searched for
            this._hardwareSearched = true;
        }


        /// <summary>
        /// SetButtonsEnabled enables or disables the Back
        /// and Next buttons while the Wizard is searching
        /// for the potentiostat.
        /// </summary>
        /// <param name="enable">Boolean to determine whether to enable or disable the buttons</param>
        private void SetButtonsEnabled(Boolean enable)
        {
            //Set the values on the Buttons
            this.BackEnabled = enable;
            this.NextEnabled = enable;

            //Focus on the WizardPage
            this._view.Focus();
        }


        /// <summary>
        /// ChangeCursor changes the cursor for the application.
        /// </summary>
        /// <param name="cursor">The Cursor to set</param>
        private void ChangeCursor(Cursor cursor)
        {
            //Set the cursor for the application
            Mouse.OverrideCursor = cursor;
        }


        /// <summary>
        /// SetTextBlockVisibility sets the visibility on 
        /// the Bias Warning TextBlock in a thread-safe 
        /// manner.
        /// </summary>
        /// <param name="visibility">The Visibility to set</param>
        private void SetTextBlockVisibility(Visibility visibility)
        {
            //Set the Visibility
            this.HardwareWarningVisibility = visibility;
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
        #endregion
    }
}
