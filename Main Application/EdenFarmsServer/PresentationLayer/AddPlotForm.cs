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
    public partial class AddPlotForm : Form
    {
        public int userid;
        public int farmid;
        public int plotid;
        public AddPlotForm(int userid, int farmid, int plotid)
        {
            InitializeComponent();
            this.userid = userid;
            this.farmid = farmid;
            this.plotid = plotid;
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            ClientForm cf = new ClientForm(userid, farmid, plotid);
            cf.Show();
            this.Hide();
        }

        private void btnAdd_Click(object sender, EventArgs e)
        {
            Plot pl = new Plot();
            int farmid = int.Parse(txtFarmID.Text);
            int plantid = int.Parse(txtPlant.Text);
            string user = txtUser.Text;
            string performance = txtPerformance.Text;
            pl.insertPlot(farmid, plantid, user, performance);
            DialogResult ds = MessageBox.Show("Successful", "Return to Client Form?", MessageBoxButtons.OK);
            if (ds == DialogResult.OK)
            {
                ClientForm cf = new ClientForm(userid, farmid, plotid);
                cf.Show();
                this.Hide();
            }
        }
    }
}
