using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace LAB11_5
{
   class SakilaContext : DbContext
    {

        public DbSet<Film> Film { get; set; }
        protected override void OnConfiguring(DbContextOptionsBuilder options)
        {
            options.UseSqlServer(@"Server=localhost\sqlexpress;Database=sakila;Trusted_Connection=True;")
;        }
    }
}
