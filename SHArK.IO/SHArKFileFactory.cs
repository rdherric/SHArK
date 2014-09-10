using System;
using System.Collections.Generic;
using System.IO;
using System.Text;

using SHArK.IO.Enums;

namespace SHArK.IO
{
    /// <summary>
    /// SHArKFileFactory is a factory class for the ISHArKFile
    /// interface.  It takes a file name and creates the 
    /// appropriate object.
    /// </summary>
    public class SHArKFileFactory
    {
        /// <summary>
        /// Create takes the input file path and creates a 
        /// blank ISHArKFile interface for the application 
        /// to fill with data.
        /// </summary>
        /// <param name="filePath">The path of the specified file</param>
        /// <param name="overwrite">Boolean to determine if the file should be overwritten if it exists</param>
        /// <returns>Valid ISHArKFile interface if successful, null otherwise</returns>
        public static ISHArKFile Create(String filePath, Boolean overwrite)
        {
            //Declare a variable to return
            ISHArKFile rtn = null;

            //Create the appropriate File Writer and return it
            switch (SpectrumExtension.ToType(Path.GetExtension(filePath)))
            {
                case SpectrumType.R3D:
                    rtn = new R3DFile(filePath, overwrite);
                    break;

                case SpectrumType.TXT:
                    rtn = new TXTFile(filePath, overwrite);
                    break;
            }

            //Return the result
            return rtn;
        }


        /// <summary>
        /// Read takes the input file path and reads in the 
        /// data into a filled ISHArKFile interface.
        /// </summary>
        /// <param name="filePath">The path of the specified file</param>
        /// <returns>Valid ISHArKFile interface if successful, null otherwise</returns>
        public static ISHArKFile Read(String filePath)
        {
            //Declare a variable to return
            ISHArKFile rtn = null;

            //Create the appropriate File Reader and return it
            switch (SpectrumExtension.ToType(Path.GetExtension(filePath)))
            {
                case SpectrumType.R3D:
                    rtn = new R3DFile(filePath);
                    break;

                case SpectrumType.TXT:
                    rtn = new TXTFile(filePath);
                    break;
            }

            //Return the result
            return rtn;
        }
    }
}
