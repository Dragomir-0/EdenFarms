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
    public partial class UpdatePlotForm : Form
    {
        public int userid;
        public int farmid;
        public int plotid;
        public UpdatePlotForm(int userid, int farmid, int plotid)
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

        private void btnEdit_Click(object sender, EventArgs e)
        {
            Plot pl = new Plot();
            int farmid = int.Parse(txtFarmID.Text);
            int plantid = int.Parse(txtPlant.Text);
            string user = txtUserOverride.Text;
            string performance = txtPerformance.Text;
            int userid = int.Parse(txtPlotID.Text);
            pl.updatePlot(farmid, plantid, user, performance, userid);
            DialogResult ds = MessageBox.Show("Successful", "Return to Client Form?", MessageBoxButtons.OK);
            if (ds == DialogResult.OK)
            {
                ClientForm cf = new ClientForm(userid, farmid, plotid);
                cf.Show();
                this.Hide();
            }
        }

        private void txtPlotID_TextChanged(object sender, EventArgs e)
        {
            int plotid = 0;
            try
            {
                plotid = int.Parse(txtPlotID.Text);
            }
            catch (FormatException)
            { }
            finally
            {
                Plot pl = new Plot();
                DataTable data = new DataTable();
                data = pl.returnSpecific(plotid);
                if (plotid != null || plotid != 0)
                {
                    foreach (DataRow item in data.Rows)
                    {
                        txtFarmID.Text = item["FarmID"].ToString();
                        txtPlant.Text = item["PlantID"].ToString();
                        txtUserOverride.Text = item["UserOverride"].ToString();
                        txtPerformance.Text = item["PerformanceReview"].ToString();
                    }
                }
            }
        }
    }
}
