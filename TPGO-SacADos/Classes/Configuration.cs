using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Controls;

namespace TPGO_ConneX.Classes
{
    class Configuration
    {
        public static Button btnPressed;
        
        public static void buttonClicked(Button btn)
        {
            if (btnPressed != null)
            {
                btnPressed.IsEnabled = true;
            }
            btn.IsEnabled = false;
            btnPressed = btn;
        }

       


    }
}
