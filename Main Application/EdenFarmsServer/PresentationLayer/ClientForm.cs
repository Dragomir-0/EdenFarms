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
        public int userid;
        public int farmid;
        public int plotid;
        public ClientForm(int userid, int farmid, int plotid)
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

        private void btnAddClient_Click(object sender, EventArgs e)
        {
            AddClientForm adf = new AddClientForm(userid, farmid, plotid);
            adf.Show();
            this.Hide();
        }

        private void btnEditClient_Click(object sender, EventArgs e)
        {
            UpdateClientForm ucf = new UpdateClientForm(userid, farmid, plotid);
            ucf.Show();
            this.Hide();
        }

        private void btnDeleteClient_Click(object sender, EventArgs e)
        {
            DeleteClientForm dcf = new DeleteClientForm(userid, farmid, plotid);
            dcf.Show();
            this.Hide();
        }

        private void btnAddPlot_Click(object sender, EventArgs e)
        {
            AddPlotForm apf = new AddPlotForm(userid, farmid, plotid);
            apf.Show();
            this.Hide();
        }

        private void btnEditPlot_Click(object sender, EventArgs e)
        {
            UpdatePlotForm upf = new UpdatePlotForm(userid, farmid, plotid);
            upf.Show();
            this.Hide();
        }

        private void btnDeletePlot_Click(object sender, EventArgs e)
        {
            DeletePlotForm dpf = new DeletePlotForm(userid, farmid, plotid);
            dpf.Show();
            this.Hide();
        }

        private void ClientForm_Load(object sender, EventArgs e)
        {

        }
    }
}
