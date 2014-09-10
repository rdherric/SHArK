using System;
using System.ComponentModel;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using RDH2.Windows.ViewModel;
using SHArK.IO.Enums;
using Microsoft.Practices.Composite.Presentation.Commands;
using Microsoft.Win32;

namespace SHArK.Wizards.NewSpectrum
{
    /// <summary>
    /// PageFileOpenViewModel is the backing class
    /// for the PageFileOpenView.
    /// </summary>
    internal class PageFileOpenViewModel : NewSpectrumPageViewModelBase
    {
        #region Member Variables
        private DelegateCommand<Object> _fileOpenCommand = null;
        #endregion


        #region Constructor
        /// <summary>
        /// Default Constructor for the PageFileOpenViewModel.
        /// </summary>
        public PageFileOpenViewModel()
        {
            //Wire up the Commands
            this.WireCommands();
        }
        #endregion


        #region Command Properties
        /// <summary>
        /// FileOpenCommand is used to open the FileOpenDialog
        /// and get a File Name.
        /// </summary>
        public DelegateCommand<Object> FileOpenCommand
        {
            get { return this._fileOpenCommand; }
        }
        #endregion


        #region Command Implementations
        /// <summary>
        /// FileOpen opens the FileSaveDialog and returns 
        /// the value to the FileName property.
        /// </summary>
        /// <param name="parameter">Null parameter</param>
        private void FileOpen(Object parameter)
        {
            //Open a FileSaveDialog
            SaveFileDialog sfd = new SaveFileDialog();
            sfd.AddExtension = true;
            sfd.CheckPathExists = true;
            sfd.OverwritePrompt = true;
            sfd.Filter = SpectrumExtension.ToString(SpectrumType.R3D, SpectrumType.TXT);
            sfd.ValidateNames = true;

            //Show the Dialog
            Nullable<Boolean> result = sfd.ShowDialog();

            //If the user didn't cancel, update the 
            //FileName property
            if (result == true)
                this.FileName = sfd.FileName;
        }
        #endregion

        
        #region Public Properties
        /// <summary>
        /// FileName determines the name of the file that
        /// is being chosen.
        /// </summary>
        public String FileName
        {
            get { return this.NewSpectrumInfo.FileName; }
            set 
            {
                //Set the value and fire the event
                this.NewSpectrumInfo.FileName = value;
                this.FirePropertyChanged("FileName");
                this.FirePropertyChanged("NextEnabled");
            }
        }


        /// <summary>
        /// NextEnabled determines if the Next Button on 
        /// the Wizard Page is enabled.
        /// </summary>
        public Boolean NextEnabled
        {
            get { return (this.NewSpectrumInfo.FileName != String.Empty); }
        }
        #endregion


        #region Event Handlers
        /// <summary>
        /// HookEvents hooks the events of the WizardPage to
        /// methods on the ViewModel.
        /// </summary>
        /// <param name="view">The View on which to hook events</param>
        public void HookEvents(PageFileOpenView view)
        {
            //Hook the events
            view.Selected += new System.Windows.RoutedEventHandler(view_Selected);
        }


        /// <summary>
        /// view_Selected fires when the page is selected 
        /// in the Wizard.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        void view_Selected(object sender, System.Windows.RoutedEventArgs e)
        {
            //Call the FileOpen command if necessary
            if (this.FileName == String.Empty)
                this.FileOpenCommand.Execute(null);
        }
        #endregion


        #region Helper Methods
        /// <summary>
        /// WireCommands wires the Command objects to 
        /// methods on the class.
        /// </summary>
        private void WireCommands()
        {
            //Wire the Command objects
            this._fileOpenCommand = new DelegateCommand<Object>(this.FileOpen);
        }
        #endregion
    }
}
