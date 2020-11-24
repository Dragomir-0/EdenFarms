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
    public partial class LoginForm : Form
    {
        public LoginForm()
        {
            InitializeComponent();
        }

        private void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text;
            string password = txtPassword.Text;
            User us = new User();
            DataTable details = new DataTable();
            bool allowed = false;
            details = us.returnDetails();
            foreach (DataRow item in details.Rows)
            {
                if (item["UserName"].ToString() == username)
                {
                    if (item["UserPassword"].ToString() == password)
                    {
                        allowed = true;
                        if (allowed)
                        {
                            if (int.Parse(item["RoleID"].ToString()) == 1)
                            {
                                ScientificForm sf = new ScientificForm(int.Parse(item["UserID"].ToString()), 0, 0);
                                sf.Show();
                                this.Hide();
                            }
                            else if (int.Parse(item["RoleID"].ToString()) == 2)
                            {
                                ClientForm cf = new ClientForm(int.Parse(item["UserID"].ToString()), 0, 0);
                                cf.Show();
                                this.Hide();
                            }
                            else
                            {
                                MessageBox.Show("Invalid role. Contact support");
                            }
                        }
                        else
                        {
                            MessageBox.Show("Login credentials are incorrect");
                        }
                    }
                    else
                    {
                        allowed = false;
                    }
                }
                    
            }
        }

        private void btnScientific_Click(object sender, EventArgs e)
        {
            ScientificForm sf = new ScientificForm(0,0,0);
            sf.Show();
            this.Hide();
        }

        private void btnClient_Click(object sender, EventArgs e)
        {
            ClientForm cf = new ClientForm(0,0,0);
            cf.Show();
            this.Hide();
        }

        private void btnStaff_Click(object sender, EventArgs e)
        {
            //TechnicalForm tf = new TechnicalForm(0,0,0);
            //tf.Show();
            //this.Hide();
        }

        private void btnViewPassword_Click(object sender, EventArgs e)
        {
            if (txtPassword.PasswordChar == '*')
            {
                txtPassword.PasswordChar = default(char);
            }
            else if (txtPassword.PasswordChar == default(char))
            {
                txtPassword.PasswordChar = '*';
            }
        }
    }
}
