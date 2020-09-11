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
        public UpdatePlotForm()
        {
            InitializeComponent();
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            ClientForm cf = new ClientForm();
            cf.Show();
            this.Hide();
        }

        private void btnEdit_Click(object sender, EventArgs e)
        {
            Plot pl = new Plot();
            int farmid = int.Parse(txtFarmID.Text);
            int plantid = int.Parse(txtPlant.Text);
            string user = "";
            string performance = txtPerformance.Text;
            int userid = 0;
            pl.updatePlot(farmid, plantid, user, performance, userid);
        }
    }
}
