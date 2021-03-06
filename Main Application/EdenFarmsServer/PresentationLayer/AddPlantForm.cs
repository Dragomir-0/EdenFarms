﻿using System;
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
    public partial class AddPlantForm : Form
    {
        public int userid;
        public int farmid;
        public int plotid;
        public AddPlantForm(int userid, int farmid, int plotid)
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

        private void btnAdd_Click(object sender, EventArgs e)
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
            pl.insertPlant(category, name, optambtem, optambhum, optamblig, optinttem, optinthum, optintlig, optintoxy, optnit, optpho, optpot);
            DialogResult ds = MessageBox.Show("Successful", "Return to Scientific Form?", MessageBoxButtons.OK);
            if (ds == DialogResult.OK)
            {
                ScientificForm sf = new ScientificForm(userid, farmid, plotid);
                sf.Show();
                this.Hide();
            }
        }
    }
}
