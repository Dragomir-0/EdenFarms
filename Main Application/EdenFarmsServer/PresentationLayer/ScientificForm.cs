using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using BusinessLogicLayer;

namespace PresentationLayer
{
    public partial class ScientificForm : Form
    {
        public ScientificForm()
        {
            InitializeComponent();
        }

        private void btnEdit_Click(object sender, EventArgs e)
        {
            EditValuesForm evf = new EditValuesForm();
            evf.Show();
            this.Hide();
        }

        private void btnView_Click(object sender, EventArgs e)
        {
            Plant pl = new Plant();
            DataTable dt = new DataTable();
            dt = pl.readPlant();
            BindingSource bs = new BindingSource();
            bs.DataSource = dt;
            output.DataSource = bs;
        }

        private void btnExit_Click(object sender, EventArgs e)
        {
            Environment.Exit(0);
        }

        private void btnLogout_Click(object sender, EventArgs e)
        {
            LoginForm lf = new LoginForm();
            lf.Show();
            this.Hide();
        }

        private void btnAdd_Click(object sender, EventArgs e)
        {
            AddPlantForm apf = new AddPlantForm();
            apf.Show();
            this.Hide();
        }
    }
}
