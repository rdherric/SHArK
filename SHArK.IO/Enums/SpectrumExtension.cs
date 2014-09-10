using System;
using System.Collections.Generic;
using System.Text;

namespace SHArK.IO.Enums
{
    /// <summary>
    /// SpectrumExtension holds the Extensions and Filters
    /// for all of the different types of Spectrum.
    /// </summary>
    public class SpectrumExtension
    {
        #region Const Members
        public const String TxtExt = ".TXT";
        public const String TxtFilter = "3D Photocurrent Files (*.TXT)|*.TXT";
        public const String Raw3DExt = ".R3D";
        public const String Raw3DFilter = "3D RAW Photocurrent Files (*.R3D)|*.R3D";
        #endregion


        #region ToString Overrides
        /// <summary>
        /// The default ToString returns the complete list of File Types
        /// and Extensions.
        /// </summary>
        /// <returns>FileDialog Filter String</returns>
        public static new String ToString()
        {
            //Format a string with all of the Extensions
            return SpectrumExtension.ToString(SpectrumType.CSV3D, SpectrumType.TAB3D);
        }


        /// <summary>
        /// This override of ToString returns only the relevant 
        /// Filter strings
        /// </summary>
        /// <param name="type"></param>
        /// <returns></returns>
        public static String ToString(params SpectrumType[] types)
        {
            //Declare a string to return
            String rtn = String.Empty;

            //Iterate through the parameter list and 
            //add up the Filters
            foreach (SpectrumType type in types)
            {
                //Get the Filters
                List<String> refExt = new List<String>();
                List<String> refFilter = new List<String>();
                SpectrumExtension.TranslateType(type, ref refExt, ref refFilter);

                //Add the Filters if anything matched
                foreach (String currFilter in refFilter)
                {
                    //If there are any filters applied yet, add the separator
                    if (rtn != String.Empty)
                        rtn += "|";

                    //Add the current Filter
                    rtn += currFilter;
                }
            }

            //Return the result
            return rtn;
        }


        /// <summary>
        /// ToExtension changes the SpectrumType into a file extension.
        /// </summary>
        /// <param name="type">The SpectrumType of the file</param>
        /// <returns>String Extension of the desired file</returns>
        public static String ToExtension(SpectrumType type)
        {
            //Declare a variable to return
            String rtn = String.Empty;

            //Get the Filter
            List<String> refExt = new List<String>();
            List<String> refFilter = new List<String>();
            SpectrumExtension.TranslateType(type, ref refExt, ref refFilter);

            //Return the result if anything matched
            if (refExt.Count > 0)
                rtn = refExt[0];

            //Return the result
            return rtn;
        }


        /// <summary>
        /// ToType translates from a File Extension to a SpectrumType.
        /// </summary>
        /// <param name="fileExt">The Extension to translate</param>
        /// <returns>The SpectrumType of the Extension</returns>
        public static SpectrumType ToType(String fileExt)
        {
            return SpectrumExtension.TranslateExtFilter(fileExt, String.Empty);
        }
        #endregion


        #region Translation Methods
        /// <summary>
        /// TranslateType takes a SpectrumType and fills it with
        /// the appropriate Extension and Filter.
        /// </summary>
        /// <param name="type">The SpectrumType of the file to translate</param>
        /// <param name="refExt">The ref parameter to the Extension</param>
        /// <param name="refFilter">The ref parameter to the Filter</param>
        private static void TranslateType(SpectrumType type, ref List<String> refExt, ref List<String> refFilter)
        {
            //Clear the values on the ref parameters
            refExt.Clear();
            refFilter.Clear();

            //Add the desired filters
            if ((type & SpectrumType.CSVFILE) > 0)
            {
                refExt.Add(SpectrumExtension.Raw3DExt);
                refFilter.Add(SpectrumExtension.Raw3DFilter);
            }

            if ((type & SpectrumType.TABFILE) > 0)
            {
                refExt.Add(SpectrumExtension.TxtExt);
                refFilter.Add(SpectrumExtension.TxtFilter);
            }
        }


        /// <summary>
        /// TranslateExtension turns a file extension into a SpectrumType
        /// </summary>
        /// <param name="fileExt">The Extension or Filter to translate</param>
        /// <returns>The SpectrumType of the file</returns>
        private static SpectrumType TranslateExtFilter(String fileExt, String fileFilter)
        {
            //Declare a variable to return 
            SpectrumType rtn = SpectrumType.Invalid;

            //Make the Strings uppercase
            String ucExt = fileExt.ToUpper();
            String ucFilter = fileFilter.ToUpper();

            //Choose the SpectrumType based on the Strings
            if (ucExt == SpectrumExtension.Raw3DExt.ToUpper() || ucFilter == SpectrumExtension.Raw3DFilter.ToUpper())
                rtn = SpectrumType.R3D;
            else if (ucExt == SpectrumExtension.TxtExt.ToUpper() || ucFilter == SpectrumExtension.TxtFilter.ToUpper())
                rtn = SpectrumType.TXT;

            //Return the result
            return rtn;
        }
        #endregion
    }
}
