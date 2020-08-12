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
    public partial class LoginForm : Form
    {
        public LoginForm()
        {
            InitializeComponent();
        }

        private void btnLogin_Click(object sender, EventArgs e)
        {

        }

        private void btnScientific_Click(object sender, EventArgs e)
        {
            ScientificForm sf = new ScientificForm();
            sf.Show();
            this.Hide();
        }

        private void btnClient_Click(object sender, EventArgs e)
        {
            ClientForm cf = new ClientForm();
            cf.Show();
            this.Hide();
        }

        private void btnStaff_Click(object sender, EventArgs e)
        {
            TechnicalForm tf = new TechnicalForm();
            tf.Show();
            this.Hide();
        }
    }
}
