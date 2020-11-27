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
    public partial class DeletePlotForm : Form
    {
        public int userid;
        public int farmid;
        public int plotid;
        public DeletePlotForm(int userid, int farmid, int plotid)
        {
            InitializeComponent();
            this.userid = userid;
            this.farmid = farmid;
            this.plotid = plotid;
        }

        private void DeletePlotForm_Load(object sender, EventArgs e)
        {

        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            ClientForm cf = new ClientForm(userid, farmid, plotid);
            cf.Show();
            this.Hide();
        }

        private void btnDelete_Click(object sender, EventArgs e)
        {
            Plot pl = new Plot();
            int plotid = int.Parse(txtPlotID.Text);
            DialogResult dr = MessageBox.Show("Are you sure?", "There is no going back", MessageBoxButtons.YesNo);
            if (dr == DialogResult.Yes)
            {
                pl.deletePlot(plotid);
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
