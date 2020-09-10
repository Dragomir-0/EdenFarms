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
    public partial class EditValuesForm : Form
    {
        public EditValuesForm()
        {
            InitializeComponent();
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            ScientificForm sf = new ScientificForm();
            sf.Show();
            this.Hide();
        }

        private void btnEdit_Click(object sender, EventArgs e)
        {
            Plant pl = new Plant();
            string category = txtCategory.Text;
            string name = txtName.Text;
            decimal optambtem = decimal.Parse(txtOptAmbTemp.Text);
            decimal optambhum = decimal.Parse(txtOptAmbHum.Text);
            string optamblig = txtOptAmbLig.Text;
            decimal optinttem = decimal.Parse(txtOptIntTemp.Text);
            decimal optinthum = decimal.Parse(txtOptIntHum.Text);
            string optintlig = txtOptIntLig.Text;
            decimal optintoxy = decimal.Parse(txtOptIntOxy.Text);
            decimal optnit = decimal.Parse(txtOptNit.Text);
            decimal optpho = decimal.Parse(txtOptPho.Text);
            decimal optpot = decimal.Parse(txtOptPot.Text);
            pl.updatePlant(category, name, optambtem, optambhum, optamblig, optinttem, optinthum, optintlig, optintoxy, optnit, optpho, optpot, 0);
        }

        private void EditValuesForm_Load(object sender, EventArgs e)
        {

        }
    }
}
