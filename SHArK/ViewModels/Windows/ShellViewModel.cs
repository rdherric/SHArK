using System;
using System.Collections.Generic;
using System.Text;

using Caliburn.Core;
using Caliburn.PresentationFramework.ApplicationModel;
using Microsoft.Practices.ServiceLocation;

namespace SHArK.ViewModels.Windows
{
    /// <summary>
    /// ShellViewModel is the ViewModel for the ShellView
    /// Window.  This handles all of the primary UI 
    /// features of the Main SHArK Application Window.
    /// </summary>
    public class ShellViewModel : MultiPresenterManager
    {
        #region Member Variables
        private IServiceLocator _servLoc = null;
        private IWindowManager _wndMgr = null;
        #endregion


        #region Constructor
        /// <summary>
        /// Default Constructor for the ShellViewModel object.
        /// </summary>
        /// <param name="serviceLocator">The ServiceLocator object used to do the work of the Window</param>
        public ShellViewModel(IServiceLocator serviceLocator)
        {
            //Save the input in the member variables
            this._servLoc = serviceLocator;

            //Get a WindowManager from the ServiceLocator
            this._wndMgr = this._servLoc.GetService(typeof(IWindowManager)) as IWindowManager;
        }
        #endregion


        #region Ribbon Actions
        /// <summary>
        /// OpenSpectrum creates a new SpectrumViewModel.
        /// </summary>
        public void OpenSpectrum()
        {
            this.Open(new ViewModels.Windows.SpectrumViewModel());
        }


        /// <summary>
        /// AboutView displays the About window
        /// to the user.
        /// </summary>
        public void AboutView()
        {
            //Show the About ViewModel
            this._wndMgr.ShowDialog(new ViewModels.Windows.AboutViewModel());
        }


        /// <summary>
        /// Exit closes the application.
        /// </summary>
        public void Exit()
        {
            //Close this ShellViewModel and exit
            //the Application
            this.Close();
        }
        #endregion
    }
}
    