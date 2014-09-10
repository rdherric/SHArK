using System;
using System.Collections.Generic;
using System.Text;
using System.Windows.Data;

using SHArK.Common;
using SHArK.IO.Data;

namespace SHArK.Converters
{
    /// <summary>
    /// PointToPositionConverter takes a Point object 
    /// and formats it into a string that is readable
    /// by a human.
    /// </summary>
    public class PointToPositionConverter : IValueConverter
    {
        #region IValueConverter Members
        /// <summary>
        /// Convert takes a Point argument and turns it into
        /// a human-readable string.
        /// </summary>
        /// <param name="value">The Point to convert</param>
        /// <param name="targetType">The Type to which is should be converted</param>
        /// <param name="parameter">NULL parameter</param>
        /// <param name="culture">The culture of the conversion</param>
        /// <returns>String value of the Point location</returns>
        public Object Convert(Object value, Type targetType, object parameter, System.Globalization.CultureInfo culture)
        {
            //Declare a variable to return
            String rtn = String.Empty;

            //Cast the value as a Point
            Point p = value as Point;
            
            //If the cast was successful, format the string
            if (p != null)
                rtn = String.Format(Strings.ChartPositionFormatString, p.X, p.Y, p.Z);

            //Return the result
            return rtn;
        }


        /// <summary>
        /// ConvertBack is used to convert a String into a Point.
        /// It's not implemented at this point in time.
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
