using System;
using System.Collections.Generic;
using System.Text;

namespace SHArK.IO.Enums
{
    public enum SpectrumType
    {
        //Base Spectrum Types
        Invalid = 0,
        IPCE = 1,
        RAW = 2,

        //File Types
        CSVFILE = 32,
        TABFILE = 64,

        //Spectrum Dimension
        THREED = 256,

        //Compound Spectrum Types
        R3D = THREED | CSVFILE | RAW,
        TXT = THREED | TABFILE | RAW,
        CSV3D = THREED | CSVFILE | IPCE | RAW,
        TAB3D = THREED | TABFILE
    }
}
