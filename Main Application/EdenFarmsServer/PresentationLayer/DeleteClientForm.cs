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
    public partial class DeleteClientForm : Form
    {
        public int userid;
        public int farmid;
        public int plotid;
        public DeleteClientForm(int userid, int farmid, int plotid)
        {
            InitializeComponent();
            this.userid = userid;
            this.farmid = farmid;
            this.plotid = plotid;
        }

        private void DeleteClientForm_Load(object sender, EventArgs e)
        {

        }

        private void txtClientID_TextChanged(object sender, EventArgs e)
        {
            int userid = 0;
            try
            {
                userid = int.Parse(txtClientID.Text);
            }
            catch (FormatException)
            { }
            finally
            {
                User us = new User();
                DataTable data = new DataTable();
                data = us.returnSpecific(userid);
                if (userid != null || userid != 0)
                {
                    foreach (DataRow item in data.Rows)
                    {
                        txtRoleID.Text = item["RoleID"].ToString();
                        txtUsername.Text = item["UserName"].ToString();
                        txtPassword.Text = item["UserPassword"].ToString();
                        txtIDNum.Text = item["VatIDNumber"].ToString();
                        txtContactNumber.Text = item["ContactNumber"].ToString();
                        txtEmail.Text = item["Email"].ToString();
                        txtAddress.Text = item["UserAddress"].ToString();
                    }
                }
            }
        }

        private void btnDelete_Click(object sender, EventArgs e)
        {
            User us = new User();
            int clientid = int.Parse(txtClientID.Text);
            if (userid == clientid)
            {
                DialogResult dr = MessageBox.Show("Are you sure?", "There is no going back", MessageBoxButtons.YesNo);
                if (dr == DialogResult.Yes)
                {
                    us.deleteUser(clientid);
                    ClientForm cf = new ClientForm(userid, farmid, plotid);
                    cf.Show();
                    this.Hide();
                }
            }
            else
            {
                MessageBox.Show("You cannot delete someone else");
            }

        }

        private void btnViewPassword_Click(object sender, EventArgs e)
        {
            if (txtPassword.PasswordChar == '*' && txtConfirmPassword.PasswordChar == '*')
            {
                txtPassword.PasswordChar = default(char);
                txtConfirmPassword.PasswordChar = default(char);
            }
            else if (txtPassword.PasswordChar == default(char) && txtConfirmPassword.PasswordChar == default(char))
            {
                txtPassword.PasswordChar = '*';
                txtConfirmPassword.PasswordChar = '*';
            }
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            ClientForm cf = new ClientForm(userid, farmid, plotid);
            cf.Show();
            this.Hide();
        }
    }
}
