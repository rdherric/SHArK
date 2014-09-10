using System;
using System.Collections.Generic;
using System.IO;
using System.Text;

namespace SHArK.Wizards.NewSpectrum
{
    /// <summary>
    /// PageFinishViewModel is the backing class for the
    /// PageFinishView.
    /// </summary>
    internal class PageFinishViewModel : NewSpectrumPageViewModelBase
    {
        #region Event Handlers
        public void HookEvents(PageFinishView view)
        {
            //Hook the events
            view.Selected += new System.Windows.RoutedEventHandler(view_Selected);
        }


        /// <summary>
        /// view_Selected refreshes the values in the TextBlocks
        /// in case any of them changed.
        /// </summary>
        /// <param name="sender">The WizardPage that was selected</param>
        /// <param name="e">The EventArgs sent by the System</param>
        void view_Selected(object sender, System.Windows.RoutedEventArgs e)
        {
            //Fire all of the refresh events
            this.FirePropertyChanged("Rows");
            this.FirePropertyChanged("Columns");
            this.FirePropertyChanged("StepSize");
            this.FirePropertyChanged("BiasPotential");
            this.FirePropertyChanged("LaserFrequency");
            this.FirePropertyChanged("FileName");
        }
        #endregion


        #region Public Properties
        /// <summary>
        /// Rows exposes the New Spectrum rows property
        /// to the View.
        /// </summary>
        public Int32 Rows
        {
            get { return this.NewSpectrumInfo.Rows; }
        }


        /// <summary>
        /// Columns exposes the New Spectrum columns property
        /// to the View.
        /// </summary>
        public Int32 Columns
        {
            get { return this.NewSpectrumInfo.Columns; }
        }


        /// <summary>
        /// StepSize exposes the New Spectrum step size property
        /// to the View.
        /// </summary>
        public Int32 StepSize
        {
            get { return this.NewSpectrumInfo.StepSize; }
        }


        /// <summary>
        /// BiasPotential exposes the New Spectrum bias property
        /// to the View.
        /// </summary>
        public Double BiasPotential
        {
            get { return this.NewSpectrumInfo.BiasPotential; }
        }


        /// <summary>
        /// LaserFrequency exposes the New Spectrum laser frequency property
        /// to the View.
        /// </summary>
        public Double LaserFrequency
        {
            get { return this.NewSpectrumInfo.LaserFrequency; }
        }


        /// <summary>
        /// FileName exposes the New Spectrum file name property
        /// to the View.
        /// </summary>
        public String FileName
        {
            get { return Path.GetFileName(this.NewSpectrumInfo.FileName); }
        }
        #endregion
    }
}
