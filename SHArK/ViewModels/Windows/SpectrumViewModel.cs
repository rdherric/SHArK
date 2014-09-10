using System;
using System.Collections.Generic;
using System.Text;

using Caliburn.PresentationFramework.ApplicationModel;

namespace SHArK.ViewModels.Windows
{
    /// <summary>
    /// SpectrumViewModel is the ViewModel class that creates and 
    /// manages a Spectrum Tab.  
    /// </summary>
    public class SpectrumViewModel : IPresenter
    {
        #region Member Variables
        private String _displayName = DateTime.Now.ToString();
        #endregion


        #region IPresenter Members
        /// <summary>
        /// Activate is called when the Spectrum is activated
        /// in the ShellView.
        /// </summary>
        public void Activate()
        {
        }


        /// <summary>
        /// CanShutDown is called to determine if the 
        /// current Spectrum can be closed.
        /// </summary>
        /// <returns></returns>
        public Boolean CanShutdown()
        {
            return true;
        }


        /// <summary>
        /// Deactivate is called when the Spectrum is deactivated
        /// in the ShellView.
        /// </summary>
        public void Deactivate()
        {
        }


        /// <summary>
        /// DisplayName returns the Name of the Spectrum.
        /// </summary>
        public string DisplayName
        {
            get { return this._displayName; }
            set { this._displayName = value; }
        }


        /// <summary>
        /// Initialize is called when the Spectrum is 
        /// first created.
        /// </summary>
        public void Initialize()
        {
        }


        /// <summary>
        /// Shutdown is called when the Spectrum is being
        /// closed.
        /// </summary>
        public void Shutdown()
        {
        }
        #endregion


        #region INotifyPropertyChanged Members
        public event System.ComponentModel.PropertyChangedEventHandler PropertyChanged;
        #endregion
    }
}
