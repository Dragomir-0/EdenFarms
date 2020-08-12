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
    public partial class UpdateClientForm : Form
    {
        public UpdateClientForm()
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

        }
    }
}
