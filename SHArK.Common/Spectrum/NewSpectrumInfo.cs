using System;
using System.Collections.Generic;
using System.Text;

namespace SHArK.Common.Spectrum
{
    /// <summary>
    /// NewSpectrumInfo encapsulates all of the
    /// properties associated with creating a new
    /// Spectrum.
    /// </summary>
    public class NewSpectrumInfo
    {
        #region Member Variables
        private TimeSpan _totalTime = TimeSpan.MinValue;
        #endregion


        #region Public Properties
        /// <summary>
        /// FileName determines the name of the 
        /// file to create.
        /// </summary>
        public String FileName = String.Empty;


        /// <summary>
        /// MaxCurrentValue determines the maximum amount
        /// of current in Amps that can be detected in this
        /// Spectrum.  For SHArK, that will be 10 microamps.
        /// </summary>
        public Double MaxCurrentValue = 0.00001;


        /// <summary>
        /// Rows determines the number of Rows that will
        /// be in the Spectrum.
        /// </summary>
        public Int32 Rows = 0;


        /// <summary>
        /// Columns determines the number of Columns that
        /// will be in the Spectrum.
        /// </summary>
        public Int32 Columns = 0;


        /// <summary>
        /// StepSize determines the size of each step that 
        /// will taken when rastering the Laser in the 
        /// Spectrum.
        /// </summary>
        public Int32 StepSize = 5;


        /// <summary>
        /// SecondsPerStep determines the amount of time that 
        /// is taken to move the Mirror one step.
        /// </summary>
        public Double SecondsPerStep = 0.01;


        /// <summary>
        /// NumberCurrentSamples determines the number of samples
        /// that will be acquired and averaged when retrieving
        /// Current data.
        /// </summary>
        public Int32 NumberCurrentSamples = 10;


        /// <summary>
        /// MillisecondsLaserOnDelay determines the amount of 
        /// time that the laser will sit at a point prior to 
        /// taking a Current reading.
        /// </summary>
        public Int32 MillisecondsLaserOnDelay = 50;


        /// <summary>
        /// MillisecondsLaserOffDelay determines the amount
        /// of time that the laser will sit at a point prior
        /// to moving to the next point and starting over.
        /// </summary>
        public Int32 MillisecondsLaserOffDelay = 50;


        /// <summary>
        /// BiasPotential determines the potential that will
        /// be set on the electrode by the Potentiostat.
        /// </summary>
        public Double BiasPotential = 0.0;


        /// <summary>
        /// LaserFrequency determines the frequency at which
        /// the laser will be modulated as it is rastered.
        /// </summary>
        public Double LaserFrequency = 13.0;


        /// <summary>
        /// TotalPoints returns the number of Points that are
        /// in the current Spectrum.
        /// </summary>
        public Int32 TotalPoints
        {
            get { return this.Rows * this.Columns; }
        }


        /// <summary>
        /// TotalTime returns a TimeSpan that holds the total
        /// amount of time for a scan to be completed.
        /// </summary>
        public TimeSpan TotalTime
        {
            get 
            { 
                //If the Total Time hasn't been calculated, 
                //calculate it now
                if (this._totalTime == TimeSpan.MinValue)
                    this._totalTime = this.CalculateTimeRemaining(0, this.Rows);

                //Return the result
                return this._totalTime;
            }
        }
        #endregion


        #region Helper Methods
        /// <summary>
        /// CalculateTimeRemaining returns a TimeSpan that represents
        /// the amount of time remaining based on the specified rows
        /// and columns.
        /// </summary>
        /// <param name="currCol">The current Column in the Spectrum</param>
        /// <param name="currRow">The current Row in the Spectrum</param>
        public TimeSpan CalculateTimeRemaining(Int32 currCol, Int32 currRow)
        {
            //Calculate the number of seconds per acquisition -- 
            //start with the delay that the laser will sit on a point
            Double secPerAcq = this.MillisecondsLaserOnDelay / 1000d;

            //Add in the amount of time required to acquire data --
            //call it 1 ms / sample 
            secPerAcq += 0.01 * this.NumberCurrentSamples;

            //Add in the delay that the laser will wait after
            //turning off
            secPerAcq += this.MillisecondsLaserOffDelay / 1000d;

            //Add in the amount of time that it takes to move 
            //to the next point based on the StepSize
            secPerAcq += this.StepSize * this.SecondsPerStep;

            //Finally, figure in the number of points
            Double totalSeconds = secPerAcq * this.CalculatePointsRemaining(currCol, currRow);

            //Now, turn the figure into ticks (100 ns steps);
            Int64 ticks = Convert.ToInt64(totalSeconds * 1E7);

            //Return the TimeSpan
            return new TimeSpan(ticks);
        }


        /// <summary>
        /// CalculatePointsRemaining gets the number of points that
        /// are left in the Spectrum based on the current Column
        /// and Row.
        /// </summary>
        /// <param name="currCol">The current Column in the Spectrum</param>
        /// <param name="currRow">The current Row in the Spectrum</param>
        /// <returns>Number of points remaining in the Spectrum</returns>
        public Int32 CalculatePointsRemaining(Int32 currCol, Int32 currRow)
        {
            //The columns that are remaining in the row are
            //based on whether this is an even or odd row.
            //If the row is going forward, subtract the currCol
            //from the total columns.
            Int32 columnsRemaining = currCol;

            if ((this.Rows % 2 == 0 && currRow % 2 == 1) ||
                (this.Rows % 2 == 1 && currRow % 2 == 0))
                columnsRemaining = this.Columns - currCol;

            //Assume that the current Row is valid -- that the 
            //scan is heading downward.  Subtract one to indicate
            //that there is a current row with columns calculated
            //above.
            Int32 rowsRemaining = currRow - 1;

            //Calculate the total number of Points Remaining
            return (rowsRemaining * this.Columns) + columnsRemaining;
        }
        #endregion
    }
}
