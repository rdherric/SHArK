using System;
using System.Collections.Generic;
using System.Text;

using RDH2.Windows.ViewModel;
using SHArK.Common.Config;

namespace SHArK.Wizards.Hardware
{
    /// <summary>
    /// HardwarePageViewModelBase is the base class for the 
    /// Page ViewModels in the Hardware Wizard.  
    /// </summary>
    internal abstract class HardwarePageViewModelBase : ViewModelBase
    {
        #region Member Variables
        private HardwareConfig _config = null;
        #endregion


        #region Public Properties
        /// <summary>
        /// Config gets or sets the ConfigurationSection object
        /// used to run the Hardware Wizard.
        /// </summary>
        public HardwareConfig Config
        {
            get { return this._config; }
            set { this._config = value; }
        }
        #endregion
    }
}
