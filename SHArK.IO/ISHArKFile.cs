using System;
using System.Collections.Generic;
using System.Text;

using SHArK.IO.Enums;
using SHArK.IO.Data;

namespace SHArK.IO
{
    /// <summary>
    /// ISHArKFile defines the interface for the I/O
    /// properties of a file in the SHArK application.
    /// </summary>
    public interface ISHArKFile
    {
        #region Public Properties
        /// <summary>
        /// Path determines the path of the file 
        /// </summary>
        String Path { get; }


        /// <summary>
        /// CreateDate determines the date that the file was
        /// created by the user.
        /// </summary>
        DateTime CreateDate { get; }


        /// <summary>
        /// Type determines the type of file based on the extension.
        /// </summary>
        SpectrumType Type { get; }


        /// <summary>
        /// Comment holds the notes on the Spectrum.
        /// </summary>
        String Comment { get; set; }

        
        /// <summary>
        /// Points holds all of the data in the Spectrum file.
        /// </summary>
        List<Point> Points { get; }


        /// <summary>
        /// MaxX determines the maximum value of the X-Axis 
        /// detected in this file.
        /// </summary>
        Double MaxX { get; }


        /// <summary>
        /// MaxY determines the maximum value of the Y-Axis 
        /// detected in this file.
        /// </summary>
        Double MaxY { get; }


        /// <summary>
        /// MaxZ determines the maximum value of the Z-Axis 
        /// detected in this file.
        /// </summary>
        Double MaxZ { get; }
        #endregion


        #region Public Methods
        /// <summary>
        /// AddDataPoint allows the addition of a Point to the 
        /// Spectrum File.
        /// </summary>
        /// <param name="p">The Point to add to the File</param>
        void AddDataPoint(Point p);
        #endregion
    }
}
