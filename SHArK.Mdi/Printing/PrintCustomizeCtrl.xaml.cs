using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace SHArK.Mdi.Printing
{
    /// <summary>
    /// Interaction logic for PrintCustomizeCtrl.xaml
    /// </summary>
    public partial class PrintCustomizeCtrl : UserControl
    {
        public PrintCustomizeCtrl()
        {
            InitializeComponent();
        }


        #region Public Properties
        /// <summary>
        /// PrintAll determines if all Windows should be printed or 
        /// just the current one.
        /// </summary>
        public Boolean PrintAll
        {
            get { return Convert.ToBoolean(this._printAll.IsChecked); }
        }


        /// <summary>
        /// ChartsPerPage allows the user to determine how many
        /// plots to put on one page.
        /// </summary>
        public Int32 ChartsPerPage
        {
            get 
            { 
                //Get the SelectedItem as a ComboBoxItem
                ComboBoxItem cbi = this._perPage.SelectedItem as ComboBoxItem;

                //Parse the Content in it
                return Int32.Parse(cbi.Content.ToString()); 
            }
            set { this._perPage.SelectedValue = value.ToString(); }
        }
        #endregion
    }
}
