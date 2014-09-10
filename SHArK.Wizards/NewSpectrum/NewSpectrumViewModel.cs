using System;
using System.ComponentModel;
using System.Collections.ObjectModel;
using System.Text;
using System.Windows;

using RDH2.Windows.ViewModel;
using SHArK.Common;
using SHArK.Common.Spectrum;
using Syncfusion.Windows.Tools.Controls;
using Microsoft.Practices.Composite.Presentation.Commands;
using Microsoft.Practices.Unity;

namespace SHArK.Wizards.NewSpectrum
{
    public class NewSpectrumViewModel : ViewModelBase
    {
        #region Member Variables
        private IUnityContainer _unity = null;
        private ObservableCollection<WizardPage> _itemsSource = null;
        private NewSpectrumInfo _info = new NewSpectrumInfo();
        #endregion


        #region Constructor
        /// <summary>
        /// Default constructor for the NewSpectrumViewModel object.
        /// </summary>
        /// <param name="unity">The Unity container to get objects</param>
        public NewSpectrumViewModel(IUnityContainer unity)
        {
            //Save the input in member variables
            this._unity = unity;

            //Set up the ItemsSource
            this.SetupItems();
        }
        #endregion


        #region Public Properties
        /// <summary>
        /// ItemsSource contains the list of WizardPage Views 
        /// that should be added to the Wizard.
        /// </summary>
        public ObservableCollection<WizardPage> ItemsSource
        {
            get { return this._itemsSource; }
            set
            {
                //Set the object and fire the event
                this._itemsSource = value;
                this.FirePropertyChanged("ItemsSource");
            }
        }


        /// <summary>
        /// NewSpectrumInfo exposes the information 
        /// about the new spectrum being created.
        /// </summary>
        public NewSpectrumInfo NewSpectrumInfo
        {
            get { return this._info; }
        }
        #endregion


        #region Helper Methods
        /// <summary>
        /// SetupItems creates all of the pages in the 
        /// Wizard and hooks them to ViewModels.
        /// </summary>
        private void SetupItems()
        {
            //Create a List to hold the WizardPages
            ObservableCollection<WizardPage> list = new ObservableCollection<WizardPage>();

            //Add the Boundary Page
            PageBoundaryViewModel boundVM = this._unity.Resolve<PageBoundaryViewModel>();
            PageBoundaryView pbv = this._unity.Resolve<PageBoundaryView>();
            boundVM.NewSpectrumInfo = this.NewSpectrumInfo;
            boundVM.HookEvents(pbv);
            pbv.DataContext = boundVM;
            list.Add(pbv);

            //Add the Potstat / Laser properties Page
            PagePotstatLaserViewModel potstatVM = this._unity.Resolve<PagePotstatLaserViewModel>();
            PagePotstatLaserView potstatV = this._unity.Resolve<PagePotstatLaserView>();
            potstatVM.NewSpectrumInfo = this.NewSpectrumInfo;
            potstatVM.HookEvents(potstatV);
            potstatV.DataContext = potstatVM;
            list.Add(potstatV);

            //Add the File Open Page
            PageFileOpenViewModel fileVM = this._unity.Resolve<PageFileOpenViewModel>();
            PageFileOpenView pfov = this._unity.Resolve<PageFileOpenView>();
            fileVM.NewSpectrumInfo = this.NewSpectrumInfo;
            fileVM.HookEvents(pfov);
            pfov.DataContext = fileVM;
            list.Add(pfov);

            //Add the Finish Page
            PageFinishViewModel finishVM = this._unity.Resolve<PageFinishViewModel>();
            PageFinishView pfv = this._unity.Resolve<PageFinishView>();
            finishVM.NewSpectrumInfo = this.NewSpectrumInfo;
            finishVM.HookEvents(pfv);
            pfv.DataContext = finishVM;
            list.Add(pfv);

            //Assign the value
            this.ItemsSource = list;
        }
        #endregion
    }
}
