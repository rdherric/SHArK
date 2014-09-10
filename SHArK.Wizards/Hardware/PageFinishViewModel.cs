using System;
using System.Collections.Generic;
using System.Text;

namespace SHArK.Wizards.Hardware
{
    /// <summary>
    /// PageFinishViewModel is used to provide logic
    /// for the Finish page of the Hardware Wizard.
    /// </summary>
    internal class PageFinishViewModel : HardwarePageViewModelBase
    {
        #region Event Handlers
        /// <summary>
        /// HookEvents hooks the events on the View to the 
        /// Methods on the ViewModel.
        /// </summary>
        /// <param name="view">The View to hook events</param>
        public void HookEvents(PageFinishView view)
        {
            //Hook the events
            view.Selected += new System.Windows.RoutedEventHandler(view_Selected);
        }


        /// <summary>
        /// view_Selected simply sets the configuration setting 
        /// in the HardwareConfig.  This page should never be
        /// reached unless everything finished completely.
        /// </summary>
        /// <param name="sender">The WizardPage being Selected</param>
        /// <param name="e">The EventArgs sent by the System</param>
        void view_Selected(object sender, System.Windows.RoutedEventArgs e)
        {
            //Set the flag on the HardwareConfig
            this.Config.IsConfigured = true;
        }
        #endregion
    }
}
