using System;
using System.Collections.Generic;
using System.IO;
using System.Text;

using SHArK.IO.Data;

namespace SHArK.IO.Output
{
    /// <summary>
    /// The CSV3D class writes a 3-D set of data in the
    /// following CSV-like format: Column, Row, Z-Value.
    /// </summary>
    internal class CSV3D
    {
        #region Member Variables
        private String _filePath = String.Empty;
        private Dictionary<String, String> _headerItems = new Dictionary<String, String>();
        private List<Point> _values = new List<Point>();

        //File writer variables
        private Boolean _saved = false;
        private Boolean _headerWritten = false;
        private Int32 _pointsWritten = 0;
        #endregion


        #region Constructor
        /// <summary>
        /// Default constructor for the Writer.R3D object.
        /// </summary>
        /// <param name="outputPath">The File Path to which to write</param>
        public CSV3D(String outputPath)
        {
            //Save the path in the Member variable
            this._filePath = outputPath;

            //Initialize the file
            this.Initialize();
        }
        #endregion


        #region Public Properties
        /// <summary>
        /// HeaderItems contains the list of items that were
        /// found in the header of the CSV file.
        /// </summary>
        public Dictionary<String, String> HeaderItems
        {
            get { return this._headerItems; }
        }


        /// <summary>
        /// Values returns the Point list for entry into the Lists
        /// </summary>
        public List<Point> Values
        {
            get { return this._values; }
        }
        #endregion

        
        #region Methods to persist data
        /// <summary>
        /// Initialize attempts to create the file.
        /// </summary>
        public void Initialize()
        {
            //First delete the file if it exists
            if (File.Exists(this._filePath) == true)
                File.Delete(this._filePath);

            //Declare a StreamWriter to write to the file
            StreamWriter sw = null;

            try
            {
                //Create the file
                sw = File.CreateText(this._filePath);
            }
            finally
            {
                //Close the StreamWriter if it got opened
                if (sw != null)
                    sw.Close();
            }
        }


        /// <summary>
        /// Save ensures that all of the data has been
        /// flushed to disk and the File object closed properly.
        /// </summary>
        public void Save()
        {
            //If the Header hasn't been written, write it
            if (this._headerWritten == false)
                this.WriteHeader();

            //If the number of points written is less than
            //the points in the Array, write the data
            if (this._pointsWritten < this._values.Count)
            {
                for (Int32 i = this._pointsWritten; i < this._values.Count; i++)
                    this.WriteDataPoint(this._values[i]);
            }
        }


        /// <summary>
        /// WriteHeader writes all of the HeaderItems out to 
        /// a CSV-delimited format.  Based on the Type of
        /// the SpectrumFile, this will have more or less info
        /// in it.
        /// </summary>
        private void WriteHeader()
        {
            //Declare a variable to hold the StreamWriter
            StreamWriter sw = null;

            try
            {
                //Get the SpectrumType based on the Extension
                Enums.SpectrumType type = Enums.SpectrumExtension.ToType(Path.GetExtension(this._filePath));

                //Open the file for writing
                sw = File.AppendText(this._filePath);

                //Add the file date if it exists, DateTime.Now otherwise
                DateTime fileDate = DateTime.Now;
                if (this._headerItems.ContainsKey(Enums.SpectrumKeys.FileDateKey) == true)
                    fileDate = Convert.ToDateTime(this._headerItems[Enums.SpectrumKeys.FileDateKey]);

                sw.WriteLine(fileDate);

                //Write the Comment
                sw.WriteLine(this._headerItems[Enums.SpectrumKeys.CommentKey]);
            }
            finally
            {
                //Close the StreamWriter if it got created
                if (sw != null)
                    sw.Close();
            }

            //Set the variable to true to indicate that the Header
            //has been written
            this._headerWritten = true;
        }


        /// <summary>
        /// WriteDataPoint writes a single comma-delimited set of 
        /// data points to the file.
        /// </summary>
        /// <param name="p">The Point of data to write</param>
        private void WriteDataPoint(Point p)
        {
            //Declare a variable to hold the StreamWriter
            StreamWriter sw = null;

            try
            {
                //Open the file to write data
                sw = File.AppendText(this._filePath);

                //Write the values to the file
                sw.Write(String.Format("{0:D},{1:D},{2:E2}" + Environment.NewLine, p.X, p.Y, p.Z));

                //Increment the Points Written
                this._pointsWritten++;
            }
            finally
            {
                //Close the StreamWriter if it got created
                if (sw != null)
                    sw.Close();
            }
        }
        #endregion


        #region IDisposable Members
        /// <summary>
        /// Dispose makes sure that the CSV class has been 
        /// Finalized.
        /// </summary>
        public void Dispose()
        {
            //If this object hasn't been finalized, do it
            if (this._saved == false)
                this.Save();
        }
        #endregion
    }
}
