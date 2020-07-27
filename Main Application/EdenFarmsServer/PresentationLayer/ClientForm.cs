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
            AddClientForm adf = new AddClientForm();
            adf.Show();
            this.Hide();
        }

        private void btnEditClient_Click(object sender, EventArgs e)
        {
            UpdateClientForm ucf = new UpdateClientForm();
            ucf.Show();
            this.Hide();
        }

        private void btnDeleteClient_Click(object sender, EventArgs e)
        {
            DeleteClientForm dcf = new DeleteClientForm();
            dcf.Show();
            this.Hide();
        }

        private void btnAddPlot_Click(object sender, EventArgs e)
        {
            AddPlotForm apf = new AddPlotForm();
            apf.Show();
            this.Hide();
        }

        private void btnEditPlot_Click(object sender, EventArgs e)
        {
            UpdatePlotForm upf = new UpdatePlotForm();
            upf.Show();
            this.Hide();
        }

        private void btnDeletePlot_Click(object sender, EventArgs e)
        {
            DeletePlotForm dpf = new DeletePlotForm();
            dpf.Show();
            this.Hide();
        }
    }
}
