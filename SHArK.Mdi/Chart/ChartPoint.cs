using System;
using System.Collections.Generic;
using System.Text;
using System.Windows.Media;

using SHArK.IO.Data;

namespace SHArK.Mdi.Chart
{
    /// <summary>
    /// ChartPoint holds the value of the Point as well
    /// as the Max Current value of the chart.
    /// </summary>
    public class ChartPoint : DrawingVisual
    {
        #region Member Variables
        private Point _point = null;
        private Double _maxZ = Double.MinValue;
        private Boolean _isRendered = false;
        #endregion


        #region Constructor
        /// <summary>
        /// Default constructor for the ChartPoint class.
        /// </summary>
        /// <param name="p">The Point to add to the Chart</param>
        /// <param name="maxCurr">The Maximum Z-Value to put into the chart</param>
        public ChartPoint(Point p, Double maxZ)
        {
            this._point = p;
            this._maxZ = maxZ;
        }
        #endregion


        #region Public Properties
        /// <summary>
        /// The X-Value of the Point
        /// </summary>
        public Int32 X
        {
            get { return this._point.X; }
        }


        /// <summary>
        /// The Y-Value of the Point
        /// </summary>
        public Int32 Y
        {
            get { return this._point.Y; }
        }


        /// <summary>
        /// The Z-Value of the Point
        /// </summary>
        public Double Z
        {
            get { return this._point.Z; }
        }


        /// <summary>
        /// The Maximum that the Z-Value will take
        /// </summary>
        public Double MaxZ
        {
            get { return this._maxZ; }
        }


        /// <summary>
        /// IsRendered determines if this ChartPoint has
        /// been rendered on the screen yet.
        /// </summary>
        public Boolean IsRendered
        {
            get { return this._isRendered; }
            set { this._isRendered = value; }
        }
        #endregion
    }
}
