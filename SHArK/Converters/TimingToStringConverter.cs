using System;
using System.Collections.Generic;
using System.Text;
using System.Windows.Data;

using SHArK.IO.Data;

namespace SHArK.Converters
{
    /// <summary>
    /// TimingToStringConverter changes a Timing object
    /// to a human-readable String.
    /// </summary>
    public class TimingToStringConverter : IValueConverter
    {
        #region IValueConverter Members
        /// <summary>
        /// Convert takes a Timing object and converts it to a 
        /// human-readable String.
        /// </summary>
        /// <param name="value">The Timing object to Convert</param>
        /// <param name="targetType">The Type to which to convert it</param>
        /// <param name="parameter">NULL parameter</param>
        /// <param name="culture">The culture of the conversion</param>
        /// <returns>String of timing information</returns>
        public object Convert(object value, Type targetType, object parameter, System.Globalization.CultureInfo culture)
        {
            //Declare a variable to return
            String rtn = String.Empty;

            //Cast the value to a Timing object

            //If the cast was successful, make the string

            //Return the result
            return rtn;
        }


        /// <summary>
        /// ConvertBack takes a Timing String and changes it 
        /// to a Timing object.  It's not implemented, though.
        /// </summary>
        /// <param name="value"></param>
        /// <param name="targetType"></param>
        /// <param name="parameter"></param>
        /// <param name="culture"></param>
        /// <returns></returns>
        public object ConvertBack(object value, Type targetType, object parameter, System.Globalization.CultureInfo culture)
        {
            throw new NotImplementedException();
        }
        #endregion
    }
}
