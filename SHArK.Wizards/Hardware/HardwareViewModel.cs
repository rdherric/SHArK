using System;
using System.Collections.Generic;
using System.Text;
using Microsoft.Practices.Composite.Presentation.Commands;
using Microsoft.Practices.Unity;

using RDH2.Configuration;
using RDH2.Windows.ViewModel;
using SHArK.Common.Config;
using Syncfusion.Windows.Tools.Controls;

namespace SHArK.Wizards.Hardware
{
    /// <summary>
    /// HardwareViewModel is used to provide the logic code
    /// that glues together all of the pages in the Hardware
    /// Configuration Wizard.
    /// </summary>
    public class HardwareViewModel : ViewModelBase
    {
        #region Member Variables
        private IUnityContainer _unity = null;
        private HardwareConfig _config = null;
        private List<WizardPage> _itemsSource = null;
        #endregion

    
        #region Constructor
        /// <summary>
        /// Default constructor for the HardwareViewModel object.
        /// </summary>
        /// <param name="unity">The Unity container to get objects</param>
        public HardwareViewModel(IUnityContainer unity)
        {
            //Save the input in member variables
            this._unity = unity;

            //Get the HardwareConfig from app.config
            ConfigHelper<HardwareConfig> helper = new ConfigHelper<HardwareConfig>(ConfigLocation.AllUsers);
            this._config = helper.GetWriteableConfig();

            //Set the value so that the hardware is not configured
            //by default
            this._config.IsConfigured = false;

            //Create the Wizard Pages
            this.CreateWizardPages();
        }
        #endregion


        #region Event Handlers
        /// <summary>
        /// HookEvents is used to handle the Wizard events in the 
        /// ViewModel.
        /// </summary>
        /// <param name="hv">The HardwareView whose events to handle</param>
        public void HookEvents(HardwareView hv)
        {
            //Hook the events
            hv.wizard.Finish += new System.Windows.RoutedEventHandler(wizard_Finish);
        }


        /// <summary>
        /// wizard_Finish handles the Finish click event.  Saves 
        /// the configuration to the app.config.
        /// </summary>
        /// <param name="sender">The WizardControl that is being finished</param>
        /// <param name="e">The EventArgs sent by the System</param>
        private void wizard_Finish(object sender, System.Windows.RoutedEventArgs e)
        {
            //Save the configuration
            ConfigHelper<HardwareConfig> helper = new ConfigHelper<HardwareConfig>(ConfigLocation.AllUsers);
            helper.SetConfig(this._config);
        }
        #endregion


        #region Public Properties
        /// <summary>
        /// ItemsSource contains the list of WizardPage Views 
        /// that should be added to the Wizard.
        /// </summary>
        public List<WizardPage> ItemsSource
        {
            get { return this._itemsSource; }
            set
            {
                //Set the object and fire the event
                this._itemsSource = value;
                this.FirePropertyChanged("ItemsSource");
            }
        }
        #endregion


        #region Helper Methods
        /// <summary>
        /// CreateWizardPages instantiates all of the Wizard Pages
        /// and hooks them up to the respective ViewModels.
        /// </summary>
        private void CreateWizardPages()
        {
            //Create a List to hold the Pages
            List<WizardPage> pages = new List<WizardPage>();

            //Create the Welcome Page
            PageWelcomeViewModel welcomeVM = this._unity.Resolve<PageWelcomeViewModel>();
            PageWelcomeView welcomeV = this._unity.Resolve<PageWelcomeView>();
            welcomeVM.Config = this._config;
            welcomeV.DataContext = welcomeVM;
            pages.Add(welcomeV);

            //Create the Installed Hardware Page
            PageInstalledHardwareViewModel installedVM = this._unity.Resolve<PageInstalledHardwareViewModel>();
            PageInstalledHardwareView installedV = this._unity.Resolve<PageInstalledHardwareView>();
            installedVM.Config = this._config;
            installedVM.HookEvents(installedV);
            installedV.DataContext = installedVM;
            pages.Add(installedV);

            //Create the License Page
            PageLicenseViewModel licenseVM = this._unity.Resolve<PageLicenseViewModel>();
            PageLicenseView licenseV = this._unity.Resolve<PageLicenseView>();
            licenseVM.Config = this._config;
            licenseV.DataContext = licenseVM;
            pages.Add(licenseV);

            //Create the Finish Page
            PageFinishViewModel finishVM = this._unity.Resolve<PageFinishViewModel>();
            PageFinishView finishV = this._unity.Resolve<PageFinishView>();
            finishVM.Config = this._config;
            finishVM.HookEvents(finishV);
            finishV.DataContext = finishVM;
            pages.Add(finishV);
            
            //Set the ItemsSource
            this.ItemsSource = pages;
        }
        #endregion
    }
}
