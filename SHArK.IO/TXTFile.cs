using System;
using System.Collections.Generic;
using System.IO;
using System.Text;

using SHArK.IO.Data;
using SHArK.IO.Enums;
using SII = SHArK.IO.Input;
using SIO = SHArK.IO.Output;

namespace SHArK.IO
{
    /// <summary>
    /// TXTFile encapsulates a TXT type file by inheriting
    /// from SHArKFileBase.
    /// </summary>
    internal class TXTFile : SHArKFileBase
    {
        #region Member Variables
        private SIO.TXT _txtOutput = null;
        #endregion


        #region Constructors
        /// <summary>
        /// Constructor used to read a new TXT file into
        /// the object.
        /// </summary>
        /// <param name="filePath">The Path of the File to read</param>
        public TXTFile(String filePath) : base(filePath)
        {
        }


        /// <summary>
        /// Constructor used to create a new TXT file using
        /// the object.
        /// </summary>
        /// <param name="filePath">The Path of the file to create</param>
        /// <param name="overwrite">Boolean to determine if the file should be overwritten</param>
        public TXTFile(String filePath, Boolean overwrite) : base(filePath, overwrite)
        {
        }
        #endregion


        #region SHArKFileBase Overrides
        /// <summary>
        /// InternalSetSpectrumType sets up the TXT SpectrumType.
        /// </summary>
        protected override void InternalSetSpectrumType()
        {
            //Set the Type
            this.Type = SpectrumType.TXT;
        }


        /// <summary>
        /// InternalFillMemberVariables reads a file and fills
        /// the properties with the data.
        /// </summary>
        protected override void InternalFillMemberVariables()
        {
            //Create a TXTFile object to read the data
            SII.TXT txtInput = new SII.TXT(this.Path);
            this.CreateDate = File.GetCreationTime(this.Path);

            //Iterate through all of the data and create new
            //Point objects to hold it all
            Int32 y = 0;
            for ( ; y < txtInput.Values.Count; y++)
            {
                //Transform Y so that the 0-point is technically
                //the top of the screen
                Int32 transY = txtInput.Values.Count - y - 1;

                //Iterate through the X-points
                Int32 x = 0;
                for ( ; x < txtInput.Values[y].Count; x++)
                {
                    //Get the value from the List
                    Double z = txtInput.Values[y][x];

                    //Check to see if the value is larger than the
                    //last saved value
                    if (Math.Abs(z) > this.MaxZ)
                        this.MaxZ = Math.Abs(z);

                    //Create the Point and add it to the List
                    this.Points.Add(new Point(x, transY, z));
                }

                //Save the value of X
                if ((x - 1) > this.MaxX)
                    this.MaxX = (x - 1);
            }

            //Save the value of X
            if ((y - 1) > this.MaxY)
                this.MaxY = (y - 1);
        }


        /// <summary>
        /// InternalAddDataPoint adds a new Point to the TXT File.
        /// </summary>
        /// <param name="p">The Point to add to the File</param>
        protected override void InternalAddDataPoint(Point p)
        {
            //If the writer hasn't been created yet, create it
            //and set the Properties
            if (this._txtOutput == null)
            {
                this._txtOutput = new SIO.TXT(this.Path);
            }

            //Add new Lists if necessary
            for (Int32 i = this._txtOutput.Values.Count; i < p.X; i++)
                this._txtOutput.Values.Add(new List<Double>());

            //Add blank data points if necessary
            for (Int32 j = this._txtOutput.Values[p.X].Count; j < p.Y; j++)
                this._txtOutput.Values[p.X].Add(0.0);

            //Finally, add the data point
            this._txtOutput.Values[p.X].Add(p.Z);

            //Finally, save out the data to the disk
            this._txtOutput.Save();
        }
        #endregion
    }
}
