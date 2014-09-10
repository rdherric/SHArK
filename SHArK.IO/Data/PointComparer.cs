using System;
using System.Collections.Generic;
using System.Text;

namespace SHArK.IO.Data
{
    /// <summary>
    /// PointComparer
    /// </summary>
    internal class PointComparer : IComparer<Point>
    {
        /// <summary>
        /// Compare determines if two Points are equal to, 
        /// less than, or greater than each other.
        /// </summary>
        /// <param name="x">The first Point to compare</param>
        /// <param name="y">The second Point to compare</param>
        /// <returns>-1 for x less than y; 0 for x equal to y; 1 for x greater than y</returns>
        public Int32 Compare(Point x, Point y)
        {
            //Declare a variable to return -- default to
            //the two Points being equal
            Int32 rtn = 0;

            //Sort by Rows, then Columns
            if ((x.Y < y.Y) || (x.Y == y.Y && x.X < y.X))
                rtn = -1;
            else if ((x.Y > y.Y) || (x.Y == y.Y && x.X > y.X))
                rtn = 1;

            //Return the result
            return rtn;
        }
    }
}
