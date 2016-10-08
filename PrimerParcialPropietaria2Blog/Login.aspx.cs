using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PrimerParcialPropietaria2Blog.Models;

namespace PrimerParcialPropietaria2Blog
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void LogIn(object sender, EventArgs e)
        {


            var age = Convert.ToInt32(this.age.Text);

            if (age <18 )
            {
                lblMessage.Text = "Debe de ser Mayor de Edad";
                lblMessage.Visible = true;
            }

            else {
                lblMessage.Visible = false;
            User user = new User();
            user.Career = txtCareer.Text;
            user.Name = txtName.Text;
            user.LastName = txtLastname.Text;
                user.Age = age;
            user.UserName = txtusername.Text;
            user.Telephone = txtTelephone.Text;
            user.Password = txtpassword.Text;
            user.Email = txtEmail.Text;
            user.Nationality = dpNationality.SelectedItem.Text;
            Session["user"] = user;

            Response.Redirect("Post.aspx");
           
            } 

        }



    }
}