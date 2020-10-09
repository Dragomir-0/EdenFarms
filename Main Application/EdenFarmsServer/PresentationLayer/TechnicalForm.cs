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
    public partial class TechnicalForm : Form
    {
        public int userid;
        public int farmid;
        public int plotid;
        public TechnicalForm(int userid, int farmid, int plotid)
        {
            InitializeComponent();
            this.userid = userid;
            this.farmid = farmid;
            this.plotid = plotid;
        }

        private void btnLogout_Click(object sender, EventArgs e)
        {
            LoginForm lf = new LoginForm();
            lf.Show();
            this.Hide();
        }

        private void btnDeleteStaff_Click(object sender, EventArgs e)
        {
            DeleteStaffForm dsf = new DeleteStaffForm(userid, farmid, plotid);
            dsf.Show();
            this.Hide();
        }

        private void btnUpdateStaff_Click(object sender, EventArgs e)
        {
            UpdateStaffForm usf = new UpdateStaffForm(userid, farmid, plotid);
            usf.Show();
            this.Hide();
        }

        private void btnAddStaff_Click(object sender, EventArgs e)
        {
            AddStaffForm asf = new AddStaffForm(userid, farmid, plotid);
            asf.Show();
            this.Hide();
        }

        private void TechnicalForm_Load(object sender, EventArgs e)
        {

        }
    }
}
