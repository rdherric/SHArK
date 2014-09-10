using System;
using System.Collections.Generic;
using System.Text;

using SHArK.Common.Spectrum;
using RDH2.Windows.ViewModel;

namespace SHArK.Wizards.NewSpectrum
{
    /// <summary>
    /// NewSpectrumPageViewModelBase is a base class
    /// for the Pages in the NewSpectrum Wizard.
    /// </summary>
    internal abstract class NewSpectrumPageViewModelBase : ViewModelBase
    {
        #region Member Variables
        private NewSpectrumInfo _info = null;
        #endregion


        #region Public Properties
        /// <summary>
        /// NewSpectrumInfo is the way that NewSpectrumViewModel
        /// communicates with the child ViewModels.
        /// </summary>
        public NewSpectrumInfo NewSpectrumInfo
        {
            get { return this._info; }
            set { this._info = value; }
        }
        #endregion
    }
}
