using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PrimerParcialPropietaria2Blog.Models;

namespace PrimerParcialPropietaria2Blog
{
    public partial class Post : System.Web.UI.Page
    {
        private User user;
        public List<Comment> comment;
        protected void Page_Load(object sender, EventArgs e)
        {
            comment = new List<Comment>();
            user = (User)Session["user"];
            if (user == null)
            {
                Response.Redirect("Login.aspx");

            }
            else
            {
                list.DataSource = LoadList();

                list.DataBind();
                ;
            }

        }

        protected void PostInfo(object sender, EventArgs e)
        {
            FileStream stream = new FileStream("C:\\Users\\LENOVO\\Desktop\\post.txt", FileMode.Append, FileAccess.Write);
            StreamWriter writer = new StreamWriter(stream);
            writer.WriteLine(user.UserName + " dijo : " + txtPost.Text + " a las " + DateTime.Now.ToString());
            writer.Close();

        }



        public List<Comment> LoadList()
        {
            FileStream stream = new FileStream("C:\\Users\\LENOVO\\Desktop\\post.txt", FileMode.Open, FileAccess.Read);
            StreamReader reader = new StreamReader(stream);
            List<Comment> c = new List<Comment>();
            while (!reader.EndOfStream)
            {
                var comments = new Comment();
                comments.Data = reader.ReadLine();
                c.Add(comments);
            }

            reader.Close();
            return c;

        }
    }
}