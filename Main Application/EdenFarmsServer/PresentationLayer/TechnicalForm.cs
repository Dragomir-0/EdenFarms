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
        public TechnicalForm()
        {
            InitializeComponent();
        }

        private void btnLogout_Click(object sender, EventArgs e)
        {
            LoginForm lf = new LoginForm();
            lf.Show();
            this.Hide();
        }

        private void btnDeleteStaff_Click(object sender, EventArgs e)
        {

        }

        private void btnUpdateStaff_Click(object sender, EventArgs e)
        {
            UpdateStaffForm usf = new UpdateStaffForm();
            usf.Show();
            this.Hide();
        }

        private void btnAddStaff_Click(object sender, EventArgs e)
        {
            AddStaffForm asf = new AddStaffForm();
            asf.Show();
            this.Hide();
        }
    }
}
