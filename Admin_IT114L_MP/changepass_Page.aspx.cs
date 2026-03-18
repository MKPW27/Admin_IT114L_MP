using System;
using System.Collections.Generic;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Admin_IT114L_MP
{
    public partial class changePasswordPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void btnChangePass_Click(object sender, EventArgs e)
        {
            string strcon = @"Provider=Microsoft.ACE.OleDb.12.0;Data Source=" + Server.MapPath("~/App_Data/information.mdb");

            string email = txtEmail.Text; // make sure you still have Email textbox
            string oldPass = txtOldPassword.Text;
            string newPass = txtNewPassword.Text;
            string confirmPass = txtConfirmPassword.Text;

            // check if new passwords match
            if (newPass != confirmPass)
            {
                Response.Write("<script>alert('New passwords do not match');</script>");
                return;
            }

            using (OleDbConnection con = new OleDbConnection(strcon))
            {
                con.Open();

                // check if old password is correct for that email
                string checkQuery = "SELECT COUNT(*) FROM Employees WHERE Email = ? AND Password = ?";
                OleDbCommand checkCmd = new OleDbCommand(checkQuery, con);
                checkCmd.Parameters.AddWithValue("@p1", email);
                checkCmd.Parameters.AddWithValue("@p2", oldPass);

                int count = (int)checkCmd.ExecuteScalar();

                if (count == 0)
                {
                    Response.Write("<script>alert('Old password is incorrect');</script>");
                    return;
                }

                // update password
                string updateQuery = "UPDATE Employees SET Password = ? WHERE Email = ?";
                OleDbCommand updateCmd = new OleDbCommand(updateQuery, con);
                updateCmd.Parameters.AddWithValue("@p1", newPass);
                updateCmd.Parameters.AddWithValue("@p2", email);

                updateCmd.ExecuteNonQuery();

                Response.Write("<script>alert('Password changed successfully');</script>");
            }
        }
    }
}