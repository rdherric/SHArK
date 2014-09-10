using System;
using System.Collections.Generic;
using System.Text;
using System.Threading;
using Microsoft.Practices.Composite.Presentation.Commands;

using RDH2.SHArK.Interface;
using RDH2.Windows.ViewModel;

namespace SHArK.Mdi
{
    /// <summary>
    /// DarkCurrentViewModel is used to back the DarkCurrentView
    /// Dialog Box with application logic.
    /// </summary>
    internal class DarkCurrentViewModel : ViewModelBase
    {
        #region Member Variables
        private DarkCurrentView _view = null;
        private IPotentiostat _potstat = null;
        private Double _darkCurrent = Double.NaN;
        private Timer _timer = null;

        //Command Objects
        private DelegateCommand<Object> _cancelCommand = null;

        //Delegate declarations for Multi-threading
        private delegate void CloseViewDelegate();
        #endregion


        #region Constructor
        /// <summary>
        /// Default Constructor for the DarkCurrentViewModel object.
        /// </summary>
        /// <param name="view">The View that will be filled by this ViewModel</param>
        /// <param name="potstat">The IPotentiostat that the ViewModel uses to display data</param>
        public DarkCurrentViewModel(DarkCurrentView view, IPotentiostat potstat)
        {
            //Save the input in the member variables
            this._view = view;
            this._potstat = potstat;

            //Start the Timer going
            this._timer = new Timer(new TimerCallback(this.GetDarkCurrent), null, 0, 500);

            //Set up the Commands
            this.WireCommands();
        }
        #endregion


        #region Command Implementations
        /// <summary>
        /// Cancel does the actual canceling of the Dialog.
        /// </summary>
        /// <param name="parameter">Object parameter to make the Delegate happy</param>
        private void Cancel(Object parameter)
        {
            //Close the View
            this.CloseView();
        }
        #endregion


        #region Command Properties
        /// <summary>
        /// CancelCommand exposes the Cancel button's Command.
        /// </summary>
        public DelegateCommand<Object> CancelCommand
        {
            get { return this._cancelCommand; }
        }
        #endregion


        #region Timer Callback Method
        /// <summary>
        /// GetDarkCurrent retrieves the dark current from the
        /// Potentiostat and displays it on the View.  Closes
        /// the view if necessary.
        /// </summary>
        /// <param name="state"></param>
        private void GetDarkCurrent(Object state)
        {
            //Get the current from the IPotentiostat and save it
            //in the Property
            this.DarkCurrent = this._potstat.GetCurrent(1);

            //If the current has settled, close the View
            if (this._potstat.IsCurrentSettled == true)
                this._view.Dispatcher.Invoke(new CloseViewDelegate(this.CloseView));
        }
        #endregion


        #region Public Properties
        /// <summary>
        /// DarkCurrent determines the actual value of Dark Current
        /// on the Potentiostat.
        /// </summary>
        public Double DarkCurrent
        {
            get { return this._darkCurrent; }
            set
            {
                //Set the value and fire the event
                this._darkCurrent = value;
                this.FirePropertyChanged("DarkCurrent");
            }
        }


        /// <summary>
        /// TargetDarkCurrent determines the target value of Dark Current
        /// on the Potentiostat.
        /// </summary>
        public Double TargetDarkCurrent
        {
            get { return this._potstat.TargetDarkCurrent; }
        }
        #endregion


        #region Helper Methods
        /// <summary>
        /// WireCommands wires the Command objects to the methods
        /// that will implement them.
        /// </summary>
        private void WireCommands()
        {
            //Wire the Commands
            this._cancelCommand = new DelegateCommand<Object>(this.Cancel);
        }
        #endregion


        #region Multi-Threading Methods
        /// <summary>
        /// CloseView closes the view in a Thread-safe manner.
        /// </summary>
        private void CloseView()
        {
            this._view.Close();
        }
        #endregion
    }
}
