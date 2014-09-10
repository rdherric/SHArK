using System;
using System.Collections.Generic;
using System.Text;

using Microsoft.Practices.Composite.Presentation.Commands;

namespace SHArK.Wizards.Hardware
{
    /// <summary>
    /// PageWelcomeViewModel is used to provide logic 
    /// for the PageWelcomeView.
    /// </summary>
    internal class PageWelcomeViewModel : HardwarePageViewModelBase
    {
        /// <summary>
        /// DoNotConfig exposes the CheckBox value to the View.
        /// </summary>
        public Boolean DoNotConfig
        {
            get { return this.Config.DoNotConfigure; }
            set 
            { 
                //Set the value and fire the PropertChanged event
                this.Config.DoNotConfigure = value;
                this.FirePropertyChanged("DoNotConfig");
                this.FirePropertyChanged("NextEnabled");
                this.FirePropertyChanged("FinishEnabled");
            }
        }


        /// <summary>
        /// NextEnabled exposes the value to set the Next button.
        /// </summary>
        public Boolean NextEnabled
        {
            get { return !(this.Config.DoNotConfigure); }
        }


        /// <summary>
        /// FinishEnabled exposes the value to set the Finish button.
        /// </summary>
        public Boolean FinishEnabled
        {
            get { return this.Config.DoNotConfigure; }
        }
    }
}
