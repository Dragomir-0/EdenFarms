﻿using System;
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
    }
}
