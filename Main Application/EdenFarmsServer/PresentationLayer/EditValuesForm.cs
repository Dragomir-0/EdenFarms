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
        public int userid;
        public int farmid;
        public int plotid;
        public EditValuesForm(int userid, int farmid, int plotid)
        {
            InitializeComponent();
            this.userid = userid;
            this.farmid = farmid;
            this.plotid = plotid;
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            ScientificForm sf = new ScientificForm(userid, farmid, plotid);
            sf.Show();
            this.Hide();
        }

        private void btnEdit_Click(object sender, EventArgs e)
        {
            Plant pl = new Plant();
            string category = txtCategory.Text;
            string name = txtName.Text;
            int plantid = int.Parse(txtPlantID.Text);
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
            pl.updatePlant(category, name, optambtem, optambhum, optamblig, optinttem, optinthum, optintlig, optintoxy, optnit, optpho, optpot, plantid);
            DialogResult ds = MessageBox.Show("Successful", "Return to Scientific Form?", MessageBoxButtons.OK);
            if (ds == DialogResult.OK)
            {
                ScientificForm sf = new ScientificForm(userid, farmid, plotid);
                sf.Show();
                this.Hide();
            }
        }

        private void EditValuesForm_Load(object sender, EventArgs e)
        {

        }

        private void txtPlantID_TextChanged(object sender, EventArgs e)
        {
            int plantid = 0;
            try
            {
                plantid = int.Parse(txtPlantID.Text);
            }
            catch (FormatException)
            { }
            finally
            {
                Plant pl = new Plant();
                DataTable data = new DataTable();
                data = pl.SpecificPlant(plantid);
                if (plantid != null || plantid != 0)
                {
                    foreach (DataRow item in data.Rows)
                    {
                        txtName.Text = item["PlantName"].ToString();
                        txtCategory.Text = item["PlantCategoryID"].ToString();
                        txtOptAmbTemp.Text = item["OptimalAmbientTemp"].ToString();
                        txtOptAmbHum.Text = item["OptimalAmbientHumidity"].ToString();
                        txtOptAmbLig.Text = item["OptimalAmbientLight"].ToString();
                        txtOptIntTemp.Text = item["OptimalInternalTemp"].ToString();
                        txtOptIntHum.Text = item["OptimalInternalHumidity"].ToString();
                        txtOptIntLig.Text = item["OptimalInternalLight"].ToString();
                        txtOptIntOxy.Text = item["OptimalInternalOxygen"].ToString();
                        txtOptNit.Text = item["OptimalNitrogen"].ToString();
                        txtOptPho.Text = item["OptimalPhosphorus"].ToString();
                        txtOptPot.Text = item["OptimalPotassium"].ToString();
                    }
                }
            }
        }
    }
}
