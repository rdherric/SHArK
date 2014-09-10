using System;
using System.Collections.Generic;
using System.IO;
using System.Text;

using SHArK.IO.Data;
using SHArK.IO.Enums;

namespace SHArK.IO
{
    /// <summary>
    /// SHArKFileBase is the base class for the 
    /// SHArK file interfaces.
    /// </summary>
    internal abstract class SHArKFileBase : ISHArKFile
    {
        #region Member Variables
        private String _filePath = String.Empty;
        private DateTime _fileDate = DateTime.Now;
        private SpectrumType _type = SpectrumType.Invalid;
        private Boolean _overwrite = false;
        private Boolean _isNewFile = false;
        private String _comment = String.Empty;

        //List to hold the Points
        private List<Point> _points = new List<Point>();
        private Double _maxX = Double.MinValue;
        private Double _maxY = Double.MinValue;
        private Double _maxZ = Double.MinValue;
        #endregion


        #region Constructors
        /// <summary>
        /// Constructor used to read a new file into
        /// the object.
        /// </summary>
        /// <param name="filePath">The Path of the File to read</param>
        public SHArKFileBase(String filePath)
        {
            //Save the input in the member variables
            this._filePath = filePath;

            //Set the flag to imply that this is not a 
            //new file to write
            this._isNewFile = false;

            //Initialize the inherited class
            this.Initialize();
        }


        /// <summary>
        /// Constructor used to create a new file using
        /// the object.
        /// </summary>
        /// <param name="filePath">The Path of the file to create</param>
        /// <param name="overwrite">Boolean to determine if the file should be overwritten</param>
        public SHArKFileBase(String filePath, Boolean overwrite)
        {
            //Save the input in the member variables
            this._filePath = filePath;
            this._overwrite = overwrite;

            //Set the flag to imply that this is a new 
            //file to write
            this._isNewFile = true;

            //Initialize the inherited class
            this.Initialize();
        }
        #endregion


        #region ISHArKFile Properties
        /// <summary>
        /// The Path of the file that was read or written.
        /// </summary>
        public string Path
        {
            get { return this._filePath; }
            protected set { this._filePath = value; }
        }


        /// <summary>
        /// The DateTime at which the file was created.
        /// </summary>
        public DateTime CreateDate
        {
            get { return this._fileDate; }
            protected set { this._fileDate = value; }
        }


        /// <summary>
        /// The Type of the file.
        /// </summary>
        public SpectrumType Type
        {
            get { return this._type; }
            protected set { this._type = value; }
        }


        /// <summary>
        /// Comment holds the notes for the new Spectrum.
        /// </summary>
        public String Comment
        {
            get { return this._comment; }
            set { this._comment = value; }
        }


        /// <summary>
        /// The list of Point objects that were read or written
        /// to the file.
        /// </summary>
        public List<Point> Points
        {
            get { return this._points; }
        }


        /// <summary>
        /// MaxX determines the maximum value of the X-Axis
        /// detected in this file.
        /// </summary>
        public Double MaxX
        {
            get { return this._maxX; }
            protected set { this._maxX = value; }
        }


        /// <summary>
        /// MaxY determines the maximum value of the Y-Axis
        /// detected in this file.
        /// </summary>
        public Double MaxY
        {
            get { return this._maxY; }
            protected set { this._maxY = value; }
        }


        /// <summary>
        /// MaxZ determines the maximum value of the Z-Axis
        /// detected in this file.
        /// </summary>
        public Double MaxZ
        {
            get { return this._maxZ; }
            protected set { this._maxZ = value; }
        }
        #endregion


        #region ISHArKFile Methods
        /// <summary>
        /// AddDataPoint adds a new Point to the File and 
        /// to the Points List.
        /// </summary>
        /// <param name="p">The Point to add to the File</param>
        public void AddDataPoint(Point p)
        {
            //Call the inherited class method to add
            //the Point
            this.InternalAddDataPoint(p);

            //Add the Point to the list
            this._points.Add(p);
        }
        #endregion


        #region Private Methods
        /// <summary>
        /// Intialize does the initial setup of the object.
        /// </summary>
        private void Initialize()
        {
            //Setup the Type
            this.InternalSetSpectrumType();

            //If the File is supposed to be read, read it
            //and fill the Member Variables.  If the file
            //is supposed to be written, create the new
            //file.
            if (this._isNewFile == false)
            {
                //Get all of the data from the File
                this.InternalFillMemberVariables();

                //Sort the Points with the PointComparer
                this.Points.Sort(new PointComparer());
            }
            else
                this.InitializeNewFile();
        }

        
        /// <summary>
        /// InitializeNewFile takes the file Path 
        /// and creates a new file to which to 
        /// write data.
        /// </summary>
        private void InitializeNewFile()
        {
            //Check to see if the file exists.  If so, 
            //throw an Exception if necessary.
            if (File.Exists(this._filePath) == true &&
                this._overwrite == false)
                throw new InvalidOperationException("Cannot overwrite existing file.");
        }
        #endregion


        #region Abstract Methods
        /// <summary>
        /// SetSpectrumType does the setup of the SpectrumType 
        /// enum in the inherited objects.
        /// </summary>
        protected abstract void InternalSetSpectrumType();


        /// <summary>
        /// InternalFillMemberVariables reads the data from a file and
        /// puts the results in the properties
        /// </summary>
        protected abstract void InternalFillMemberVariables();


        /// <summary>
        /// InternalAddDataPoint is implemented by the inherited
        /// classes to add a new data Point.
        /// </summary>
        /// <param name="p">The Point to add to the File</param>
        protected abstract void InternalAddDataPoint(Point p);
        #endregion
    }
}
