using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using SHArK.IO.Data;
using SHArK.IO.Enums;
using SII = SHArK.IO.Input;
using SIO = SHArK.IO.Output;

namespace SHArK.IO
{
    /// <summary>
    /// R3DFile encapsulates a 3D CSV type file by implementing
    /// the ISHArKFile interface.
    /// </summary>
    internal class R3DFile : SHArKFileBase
    {
        #region Member Variables
        private SIO.CSV3D _csv3dOutput = null;
        #endregion


        #region Constructors
        /// <summary>
        /// Constructor used to read a new R3D file into
        /// the object.
        /// </summary>
        /// <param name="filePath">The Path of the File to read</param>
        public R3DFile(String filePath) : base(filePath)
        {
        }


        /// <summary>
        /// Constructor used to create a new TXT file using
        /// the object.
        /// </summary>
        /// <param name="filePath">The Path of the file to create</param>
        /// <param name="overwrite">Boolean to determine if the file should be overwritten</param>
        public R3DFile(String filePath, Boolean overwrite) : base(filePath, overwrite)
        {
        }
        #endregion


        #region SHArKFileBase Overrides
        /// <summary>
        /// Initialize sets up the R3D SpectrumType.
        /// </summary>
        protected override void InternalSetSpectrumType()
        {
            //Set the Type
            this.Type = SpectrumType.R3D;
        }


        /// <summary>
        /// InternalFillMemberVariables opens the R3D file and
        /// pulls all of the interesting data out of it.
        /// </summary>
        protected override void InternalFillMemberVariables()
        {
            //Create a file reader to get the data
            SII.CSV3D csv3dInput = new SII.CSV3D(this.Path);

            //Put the data in the member variables
            this.Comment = csv3dInput.HeaderItems[SpectrumKeys.CommentKey];
            this.CreateDate = Convert.ToDateTime(csv3dInput.HeaderItems[SpectrumKeys.FileDateKey]);

            //Iterate through all of the data
            foreach (Point p in csv3dInput.Values)
            {
                //Check to see if the values are larger than 
                //the last saved values.  Save if necessary.
                if (p.X > this.MaxX)
                    this.MaxX = p.X;

                if (p.Y > this.MaxY)
                    this.MaxY = p.Y;

                if (Math.Abs(p.Z) > this.MaxZ)
                    this.MaxZ = Math.Abs(p.Z);

                //Create a new Point and add it to the List
                this.Points.Add(new Point(p.X, p.Y, p.Z));
            }
        }

        
        /// <summary>
        /// InternalAddDataPoint adds a new Point to the TXT File.
        /// </summary>
        /// <param name="p">The Point to add to the File</param>
        protected override void InternalAddDataPoint(Point p)
        {
            //If the writer hasn't been created yet, create it
            //and set the Properties
            if (this._csv3dOutput == null)
            {
                this._csv3dOutput = new SIO.CSV3D(this.Path);
                this._csv3dOutput.HeaderItems[SpectrumKeys.CommentKey] = this.Comment;
                this._csv3dOutput.HeaderItems[SpectrumKeys.FileDateKey] = this.CreateDate.ToString();
            }

            //Add the data point
            this._csv3dOutput.Values.Add(p);

            //Finally, save out the data to the disk
            this._csv3dOutput.Save();
        }
        #endregion
    }
}
