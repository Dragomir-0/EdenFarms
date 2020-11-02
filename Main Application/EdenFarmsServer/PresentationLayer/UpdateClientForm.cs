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
    public partial class UpdateClientForm : Form
    {
        public int userid;
        public int farmid;
        public int plotid;
        public UpdateClientForm(int userid, int farmid, int plotid)
        {
            InitializeComponent();
            this.userid = userid;
            this.farmid = farmid;
            this.plotid = plotid;
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            ClientForm cf = new ClientForm(userid, farmid, plotid);
            cf.Show();
            this.Hide();
        }

        private void btnEdit_Click(object sender, EventArgs e)
        {
            User us = new User();
            string username = txtUsername.Text;
            string password = txtPassword.Text;
            string confirm = txtConfirmPassword.Text;
            string vatID = txtIDNum.Text;
            string contact = txtContactNumber.Text;
            string email = txtEmail.Text;
            string address = txtAddress.Text;
            int theuserid = userid;
            if (password == confirm)
            {
                us.updateUser(username, password, vatID, contact, email, address, theuserid);
                DialogResult ds = MessageBox.Show("Successful", "Return to Client Form?", MessageBoxButtons.OK);
                if (ds == DialogResult.OK)
                {
                    ClientForm cf = new ClientForm(userid, farmid, plotid);
                    cf.Show();
                    this.Hide();
                }
            }
            else
            {
                MessageBox.Show("Your passwords do not match");
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
    }
}
