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
        public int userid;
        public int farmid;
        public int plotid;
        public ScientificForm(int userid, int farmid, int plotid)
        {
            InitializeComponent();
            this.userid = userid;
            this.farmid = farmid;
            this.plotid = plotid;
        }

        private void btnEdit_Click(object sender, EventArgs e)
        {
            EditValuesForm evf = new EditValuesForm(userid, farmid, plotid);
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
            AddPlantForm apf = new AddPlantForm(userid, farmid, plotid);
            apf.Show();
            this.Hide();
        }

        private void ScientificForm_Load(object sender, EventArgs e)
        {

        }
    }
}
