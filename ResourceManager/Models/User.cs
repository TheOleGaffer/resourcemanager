using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ResourceManager.Controllers
{
    public class User
    {
        public User(int userid, string username, string passwordhash, int passwordsalt, string email, DateTime createDateTime)
        {
            UserID = userid;
            Username = username;
            PasswordHash = passwordhash;
            PasswordSalt = passwordsalt;
            Email = email;
            CreatedOnDateTime = createDateTime;
        }
        public User(string username, string password, string email = "")
        {
            Username = username;
            Password = password;
            Email = email;
        }


        public int UserID { get; set; }
        public string Username { get; set; }
        public string Password { get; set; }
        public string PasswordHash { get; set; }
        public int PasswordSalt { get; set; }
        public string Email { get; set; }
        public DateTime CreatedOnDateTime { get; set; }
    }
}