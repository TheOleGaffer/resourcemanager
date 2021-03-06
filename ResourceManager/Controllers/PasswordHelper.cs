﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;

namespace ResourceManager.Controllers
{
    public static class PasswordHelper
    {
        public static int CreateRandomSalt()
        {
            var _saltBytes = new Byte[4];
            var rng = new RNGCryptoServiceProvider();
            rng.GetBytes(_saltBytes);

            return ((((int)_saltBytes[0]) << 24) + (((int)_saltBytes[1]) << 16) +
                    (((int)_saltBytes[2]) << 8) + ((int)_saltBytes[3]));
        }


        public static string ComputeSaltedHash(string password, int salt)
        {
            // Create Byte array of password string
            var encoder = new ASCIIEncoding();
            var _secretBytes = encoder.GetBytes(password);

            // Create a new salt
            var _saltBytes = new Byte[4];
            _saltBytes[0] = (byte)(salt >> 24);
            _saltBytes[1] = (byte)(salt >> 16);
            _saltBytes[2] = (byte)(salt >> 8);
            _saltBytes[3] = (byte)(salt);

            // append the two arrays
            var toHash = new Byte[_secretBytes.Length + _saltBytes.Length];
            Array.Copy(_secretBytes, 0, toHash, 0, _secretBytes.Length);
            Array.Copy(_saltBytes, 0, toHash, _secretBytes.Length, _saltBytes.Length);

            SHA1 sha1 = SHA1.Create();
            var computedHash = sha1.ComputeHash(toHash);

            return encoder.GetString(computedHash);
        }
    }
}