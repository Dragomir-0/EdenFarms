using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace PresentationLayer
{
    public partial class DeleteStaffForm : Form
    {
        public int userid;
        public int farmid;
        public int plotid;
        public DeleteStaffForm(int userid, int farmid, int plotid)
        {
            InitializeComponent();
            this.userid = userid;
            this.farmid = farmid;
            this.plotid = plotid;
        }

        private void DeleteStaffForm_Load(object sender, EventArgs e)
        {

        }
    }
}
