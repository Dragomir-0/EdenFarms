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
            int roleid = int.Parse(txtRoleID.Text);
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
                if (theuserid == int.Parse(txtClientID.Text))
                {
                    us.updateUser(roleid, username, password, vatID, contact, email, address, theuserid);
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
                    MessageBox.Show("You cannot update someone else");
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
    }
}
