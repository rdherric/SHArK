using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SHArK.IO.Data
{
    /// <summary>
    /// The Point class represents a single data point within
    /// the SHArK Spectrum file.
    /// </summary>
    public class Point
    {
        #region Member Variables
        private Int32 _x = 0;
        private Int32 _y = 0;
        private Double _z = 0.0;
        #endregion


        #region Constructor
        /// <summary>
        /// Default constructor for the Point object.
        /// </summary>
        /// <param name="x">The X-Axis value of the point</param>
        /// <param name="y">The Y-Axis value of the point</param>
        /// <param name="z">The Z-Axis value of the point</param>
        public Point(Int32 x, Int32 y, Double z)
        {
            //Save the input in the member variables
            this._x = x;
            this._y = y;
            this._z = z;
        }
        #endregion


        #region Public Properties
        /// <summary>
        /// X determines the X-Axis value of the Point.
        /// </summary>
        public Int32 X
        {
            get { return this._x; }
        }


        /// <summary>
        /// Y determines the Y-Axis value of the Point.
        /// </summary>
        public Int32 Y
        {
            get { return this._y; }
        }


        /// <summary>
        /// Z determines the Z-Axis value of the Point.
        /// </summary>
        public Double Z
        {
            get { return this._z; }
        }
        #endregion
    }
}
