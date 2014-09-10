using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SHArK.IO.Enums
{
    /// <summary>
    /// ImageExtension allows a user to save a Spectrum
    /// as a JPEG.
    /// </summary>
    public class ImageExtension
    {
        #region Const Members
        public const String JpegExt = ".JPG";
        public const String JpegFilter = "JPEG Image Files (*.JPG)|*.JPG";
        #endregion 


        #region ToString override
        /// <summary>
        /// ToString turns the extensions into a Filter String
        /// suitable for use in an Open / Save dialog.
        /// </summary>
        /// <returns>Filter String</returns>
        public static new String ToString()
        {
            return ImageExtension.JpegFilter;
        }
        #endregion
    }
}
