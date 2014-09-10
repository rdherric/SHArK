using System;
using System.Collections.Generic;
using System.Text;
using System.Threading;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using Microsoft.Practices.Unity;

using RDH2.SHArK.Interface;
using SHArK.Common;
using Syncfusion.Windows.Tools.Controls;

namespace SHArK.Wizards.Hardware
{
    /// <summary>
    /// PageInstalledHardwareViewModel is used to provide logic
    /// for the Page that displays installed hardware.
    /// </summary>
    internal class PageInstalledHardwareViewModel : HardwarePageViewModelBase
    {
        #region Member Variables
        private UnityContainer _unity = null;
        private PageInstalledHardwareView _view = null;
        private Boolean _hardwareSearched = false;
        private Boolean _backEnabled = false;
        private Boolean _nextEnabled = false;
        private String _mirrorName = String.Empty;
        private String _potstatName = String.Empty;
        private String _laserName = String.Empty;

        //Delegate types to pass to the Dispatcher of the Wizard
        private delegate void FindHardwareDelegate();
        private delegate void ChangeCursorDelegate(Cursor cursor);
        private delegate void DisableButtonsDelegate();
        private delegate void EnableButtonsDelegate(WizardControl wizard);
        private delegate void SetLabelTextDelegate(TextBlockType type, String text);
        #endregion


        #region Constructor
        /// <summary>
        /// Default constructor for the PageInstalledHardwareViewModel.
        /// </summary>
        /// <param name="unity">The UnityContainer passed by the System</param>
        public PageInstalledHardwareViewModel(UnityContainer unity)
        {
            //Save the input in the member variables
            this._unity = unity;
        }
        #endregion


        #region Public Properties
        /// <summary>
        /// BackEnabled determines whether the Back button
        /// is enabled.
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
        /// NextEnabled determines whether the Next button
        /// is enabled.
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
        /// MirrorName exposes the name of the Mirror to 
        /// the View.
        /// </summary>
        public String MirrorName
        {
            get { return this._mirrorName; }
            set
            {
                //Set the value and fire the event
                this._mirrorName = value;
                this.FirePropertyChanged("MirrorName");
            }
        }


        /// <summary>
        /// PotentiostatName exposes the name of the Potentiostat to 
        /// the View.
        /// </summary>
        public String PotentiostatName
        {
            get { return this._potstatName; }
            set
            {
                //Set the value and fire the event
                this._potstatName = value;
                this.FirePropertyChanged("PotentiostatName");
            }
        }


        /// <summary>
        /// LaserName exposes the name of the Laser to 
        /// the View.
        /// </summary>
        public String LaserName
        {
            get { return this._laserName; }
            set
            {
                //Set the value and fire the event
                this._laserName = value;
                this.FirePropertyChanged("LaserName");
            }
        }
        #endregion


        #region Event Handlers
        /// <summary>
        /// HookEvents hooks into the events of the WizardPage to 
        /// allow some background processing to occur.
        /// </summary>
        /// <param name="view">The WizardPage to hook events</param>
        public void HookEvents(PageInstalledHardwareView view)
        {
            //Save the view in the member variable -- this 
            //is required to set focus at the end of the 
            //multi-threading part
            this._view = view;

            //Hook the events 
            view.Selected += new System.Windows.RoutedEventHandler(view_Selected);
        }


        /// <summary>
        /// view_Selected starts a thread that finds the installed 
        /// hardware and displays it to the user.
        /// </summary>
        /// <param name="sender">The WizardPage that is Selected</param>
        /// <param name="e">The EventArgs sent by the System</param>
        void view_Selected(object sender, System.Windows.RoutedEventArgs e)
        {
            //If the Page has already been shown once, do not
            //search for the Hardware again
            if (this._hardwareSearched == true)
                return;

            //Get the WizardControl from the UnityContainer
            WizardControl wizard = this._unity.Resolve<WizardControl>(Strings.HardwareWizardName);

            //Start a thread to do the processing
            ParameterizedThreadStart pts = new ParameterizedThreadStart(this.FindHardware);
            Thread t = new Thread(pts);
            t.Start(wizard);
        }
        #endregion


        #region Multi-Threading Methods
        /// <summary>
        /// FindHardware attempts to create the hardware objects
        /// and display them to the user.
        /// </summary>
        private void FindHardware(Object parameter)
        {
            //Unpack the Parameters
            WizardControl wizard = parameter as WizardControl;

            //Set the button Enable states
            wizard.Dispatcher.BeginInvoke(new DisableButtonsDelegate(this.DisableButtons));

            //Set the Cursor on the WizardControl
            wizard.Dispatcher.BeginInvoke(new ChangeCursorDelegate(this.ChangeCursor), Cursors.Wait);

            //Create the Hardware objects
            IMirror mirror = SHArKClassFactory.CreateIMirror();
            IPotentiostat potstat = SHArKClassFactory.CreateIPotentiostat();
            ILaser laser = SHArKClassFactory.CreateILaser();

            //Get the names of the hardware -- default to not found
            String mirrorName = Strings.DeviceNotFound;
            String potstatName = Strings.DeviceNotFound;
            String laserName = Strings.DeviceNotFound;

            if (mirror != null)
            {
                mirrorName = mirror.Name;
                mirror.Dispose();
            }


            if (potstat != null)
            {
                potstatName = potstat.Name;
                potstat.Dispose();
            }

            if (laser != null)
            {
                laserName = laser.Name;
                laser.Dispose();
            }

            //Set the labels in the Page
            wizard.Dispatcher.BeginInvoke(new SetLabelTextDelegate(this.SetLabelText), TextBlockType.Mirror, mirrorName);
            wizard.Dispatcher.BeginInvoke(new SetLabelTextDelegate(this.SetLabelText), TextBlockType.Potentiostat, potstatName);
            wizard.Dispatcher.BeginInvoke(new SetLabelTextDelegate(this.SetLabelText), TextBlockType.Laser, laserName);

            //Set the Cursor on the WizardControl
            wizard.Dispatcher.BeginInvoke(new ChangeCursorDelegate(this.ChangeCursor), Cursors.Arrow);

            //Enable the buttons as necessary
            wizard.Dispatcher.BeginInvoke(new EnableButtonsDelegate(this.EnableButtons), wizard);

            //Set the flag that the Hardware has been searched for
            this._hardwareSearched = true;
        }


        /// <summary>
        /// ChangeCursor changes the cursor on the Wizard.
        /// </summary>
        /// <param name="cursor">The cursor to set</param>
        private void ChangeCursor(Cursor cursor)
        {
            Mouse.OverrideCursor = cursor;
        }


        /// <summary>
        /// DisableButtons sets the properties such that the
        /// Next and Back buttons are disabled.
        /// </summary>
        private void DisableButtons()
        {
            this.BackEnabled = false;
            this.NextEnabled = false;
        }


        /// <summary>
        /// EnableButtons sets the values on the buttons based
        /// on the results of finding the hardware.
        /// </summary>
        /// <param name="wizard">The Wizard on which to enable buttons</param>
        private void EnableButtons(WizardControl wizard)
        {
            //Enable the Back button always
            this.BackEnabled = true;

            //If the labels have been filled with real values, 
            //enable the Next button
            if (this.MirrorName != Strings.DeviceNotFound &&
                this.PotentiostatName != Strings.DeviceNotFound &&
                this.LaserName != Strings.DeviceNotFound)
                this.NextEnabled = true;

            //Set the focus on the WizardPage
            this._view.Focus();
        }


        /// <summary>
        /// SetLabelText sets the input string on the TextBlock.
        /// </summary>
        /// <param name="type">The TextBlock on which to set the text</param>
        /// <param name="text">The text to set</param>
        private void SetLabelText(TextBlockType type, String text)
        {
            //Switch on the TextBlock to update
            switch (type)
            {
                case TextBlockType.Mirror:
                    this.MirrorName = text;
                    break;

                case TextBlockType.Potentiostat:
                    this.PotentiostatName = text;
                    break;

                case TextBlockType.Laser:
                    this.LaserName = text;
                    break;
            }
        }
        #endregion


        #region Private enum to determine TextBlocks
        /// <summary>
        /// TextBlockType is used to determine in a 
        /// multi-threaded method what TextBlock 
        /// should be updated.
        /// </summary>
        private enum TextBlockType
        {
            Mirror,
            Potentiostat,
            Laser
        }
        #endregion
    }
}
