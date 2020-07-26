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
    public partial class ClientForm : Form
    {
        public ClientForm()
        {
            InitializeComponent();
        }

        private void btnLogout_Click(object sender, EventArgs e)
        {
            LoginForm lf = new LoginForm();
            lf.Show();
            this.Hide();
        }

        private void btnAddClient_Click(object sender, EventArgs e)
        {

        }

        private void btnEditClient_Click(object sender, EventArgs e)
        {

        }

        private void btnDeleteClient_Click(object sender, EventArgs e)
        {

        }

        private void btnAddPlot_Click(object sender, EventArgs e)
        {

        }

        private void btnEditPlot_Click(object sender, EventArgs e)
        {

        }

        private void btnDeletePlot_Click(object sender, EventArgs e)
        {

        }
    }
}
