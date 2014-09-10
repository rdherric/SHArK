using System;
using System.Collections.Generic;
using System.Text;

using SHArK.IO.Data;

namespace SHArK.Common.Spectrum
{
    public class ActiveSpectrumInfo
    {
        /// <summary>
        /// IsRunning determines if the current Spectrum
        /// is acquiring data.
        /// </summary>
        public Boolean IsRunning = false;


        /// <summary>
        /// IsPaused determines if the current Spectrum 
        /// is acquiring data but paused.
        /// </summary>
        public Boolean IsPaused = false;


        /// <summary>
        /// IsZoomed determines if the current Spectrum
        /// has been zoomed in.
        /// </summary>
        public Boolean IsZoomed = false;


        /// <summary>
        /// ChartPosition determines the current position of
        /// the Mouse over the Spectrum.
        /// </summary>
        public Point ChartPosition = null;
    }
}
