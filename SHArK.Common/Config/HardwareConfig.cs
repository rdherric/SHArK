using System;
using System.Collections.Generic;
using System.Configuration;
using System.Text;

using RDH2.Configuration;

namespace SHArK.Common.Config
{
    /// <summary>
    /// HardwareConfig is used to hold the configuration 
    /// of the entire Hardware setup for the SHArK 
    /// application.
    /// </summary>
    [ConfigurationGroup(HardwareConfig.GroupName)]
    [ConfigurationSection(HardwareConfig._sectName)]
    public class HardwareConfig : ConfigurationSection
    {
        #region Constants and Member Variables
        public const String GroupName = "hardware";
        private const String _sectName = "general";
        private const String _configuredKey = "isConfigured";
        private const String _doNotConfigKey = "doNotConfig";
        #endregion


        #region Public Properties
        /// <summary>
        /// IsConfigured determines whether the SHArK application
        /// hardware has successfully been configured.
        /// </summary>
        [ConfigurationProperty(HardwareConfig._configuredKey, DefaultValue = false, IsRequired = false)]
        public Boolean IsConfigured
        {
            get { return Convert.ToBoolean(this[HardwareConfig._configuredKey]); }
            set { this[HardwareConfig._configuredKey] = value; }
        }


        /// <summary>
        /// DoNotConfigure determines whether the Hardware 
        /// Configuration Wizard should be displayed when the 
        /// application is started.
        /// </summary>
        [ConfigurationProperty(HardwareConfig._doNotConfigKey, DefaultValue = false, IsRequired = false)]
        public Boolean DoNotConfigure
        {
            get { return Convert.ToBoolean(this[HardwareConfig._doNotConfigKey]); }
            set { this[HardwareConfig._doNotConfigKey] = value; }
        }
        #endregion
    }
}
