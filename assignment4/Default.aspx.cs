using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LoginButton_Click(object sender, EventArgs e)
    {
        Community_AssistEntities cae = new Community_AssistEntities();
        int result = cae.usp_Login(UserNameTextBox.Text, PasswordTextBox.Text);
        if (result != -1)
        {
            string email = UserNameTextBox.Text;
            var key = (from p in cae.People where p.PersonEmail.Equals(email) select p.PersonKey).FirstOrDefault();
            int pKey = (int)key;
            Session["userKey"] = key;
            Response.Redirect("Donate.aspx");
        }
        else
        {
            ErrorLabel.Text = "Invalid login";
        }
        }
    }
