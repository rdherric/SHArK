using System;
using System.Collections.Generic;
using System.Configuration;
using System.Text;
using System.Windows;

using RDH2.Configuration;

namespace SHArK.Config
{
    /// <summary>
    /// ShellViewConfig holds the configuration information
    /// for the main ShellView Window.
    /// </summary>
    [ConfigurationGroup(ShellViewConfig._groupName)]
    [ConfigurationSection(ShellViewConfig._sectName)]
    internal class ShellViewConfig : ConfigurationSection
    {
        #region Constants and Member Variables
        private const String _groupName = "views";
        private const String _sectName = "shell";
        private const String _widthKey = "width";
        private const String _heightKey = "height";
        private const String _windowStateKey = "windowState";
        #endregion


        #region Public Properties
        /// <summary>
        /// Width defines the height of the Window when the Config
        /// was saved.
        /// </summary>
        [ConfigurationProperty(ShellViewConfig._heightKey, DefaultValue = 600, IsRequired = false)]
        public Int32 Height
        {
            get { return Convert.ToInt32(this[ShellViewConfig._heightKey]); }
            set { this[ShellViewConfig._heightKey] = value; }
        }


        /// <summary>
        /// Width defines the width of the Window when the Config
        /// was saved.
        /// </summary>
        [ConfigurationProperty(ShellViewConfig._widthKey, DefaultValue = 800, IsRequired = false)]
        public Int32 Width
        {
            get { return Convert.ToInt32(this[ShellViewConfig._widthKey]); }
            set { this[ShellViewConfig._widthKey] = value; }
        }

        
        /// <summary>
        /// State defines the state of the Window when the Config
        /// was saved -- Normal or Maximized.
        /// </summary>
        [ConfigurationProperty(ShellViewConfig._windowStateKey, DefaultValue = WindowState.Normal, IsRequired = false)]
        public WindowState State
        {
            get
            {
                //Get the value from the config
                WindowState fws = (WindowState)Enum.Parse(typeof(WindowState), this[ShellViewConfig._windowStateKey].ToString());

                //If the value is Minimized, turn it to Normal
                if (fws == WindowState.Minimized)
                    fws = WindowState.Normal;

                //Return the result
                return fws;
            }

            set
            {
                //If the value is Minimized, turn it to Normal
                if (value == WindowState.Minimized)
                    value = WindowState.Normal;

                //Save the value
                this[ShellViewConfig._windowStateKey] = value;
            }
        }
        #endregion
    }
}
