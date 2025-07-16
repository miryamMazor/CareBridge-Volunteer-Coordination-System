using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace WebApi.models;

public partial class VolunteersDbContext : DbContext
{
    public VolunteersDbContext()
    {
    }

    public VolunteersDbContext(DbContextOptions<VolunteersDbContext> options)
        : base(options)
    {
    }

    public virtual DbSet<ActivitysTbl> ActivitysTbls { get; set; }

    public virtual DbSet<ApartmentsInActivitysTbl> ApartmentsInActivitysTbls { get; set; }

    public virtual DbSet<ContactStatusTbl> ContactStatusTbls { get; set; }

    public virtual DbSet<ContactsTbl> ContactsTbls { get; set; }

    public virtual DbSet<DepartmentsTbl> DepartmentsTbls { get; set; }

    public virtual DbSet<HospitalsTbl> HospitalsTbls { get; set; }

    public virtual DbSet<PatientsTbl> PatientsTbls { get; set; }

    public virtual DbSet<PresencesTbl> PresencesTbls { get; set; }

    public virtual DbSet<VolunteerStatusTbl> VolunteerStatusTbls { get; set; }

    public virtual DbSet<VolunteersTbl> VolunteersTbls { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see https://go.microsoft.com/fwlink/?LinkId=723263.
        => optionsBuilder.UseSqlServer("Server=mazor\\SQLEXPRESS;Database=VolunteersDB;Trusted_Connection=True;TrustServerCertificate=True;");

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<ActivitysTbl>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__Activity__3214EC271AAACCF0");

            entity.ToTable("Activitys_tbl");

            entity.Property(e => e.Id).HasColumnName("ID");
            entity.Property(e => e.DateAct).HasColumnType("datetime");
            entity.Property(e => e.Description)
                .HasMaxLength(100)
                .IsUnicode(false);
            entity.Property(e => e.EndTime).HasColumnType("datetime");
            entity.Property(e => e.StartTime).HasColumnType("datetime");

            entity.HasOne(d => d.Hospital).WithMany(p => p.ActivitysTbls)
                .HasForeignKey(d => d.HospitalId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__Activitys__Hospi__48CFD27E");
        });

        modelBuilder.Entity<ApartmentsInActivitysTbl>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__Apartmen__3214EC271DB287AD");

            entity.ToTable("ApartmentsInActivitys_tbl");

            entity.Property(e => e.Id).HasColumnName("ID");

            entity.HasOne(d => d.Activity).WithMany(p => p.ApartmentsInActivitysTbls)
                .HasForeignKey(d => d.ActivityId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__Apartment__Activ__49C3F6B7");

            entity.HasOne(d => d.Department).WithMany(p => p.ApartmentsInActivitysTbls)
                .HasForeignKey(d => d.DepartmentId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__Apartment__Depar__4AB81AF0");
        });

        modelBuilder.Entity<ContactStatusTbl>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__ContactS__3214EC27538FA9B6");

            entity.ToTable("ContactStatus_tbl");

            entity.Property(e => e.Id).HasColumnName("ID");
            entity.Property(e => e.Description)
                .HasMaxLength(20)
                .IsUnicode(false);
        });

        modelBuilder.Entity<ContactsTbl>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__Contacts__3214EC27F1B12F81");

            entity.ToTable("Contacts_tbl");

            entity.Property(e => e.Id).HasColumnName("ID");
            entity.Property(e => e.Date).HasColumnType("datetime");
            entity.Property(e => e.Description)
                .HasMaxLength(100)
                .IsUnicode(false);
            entity.Property(e => e.PatientId).HasColumnName("PatientID");

            entity.HasOne(d => d.Patient).WithMany(p => p.ContactsTbls)
                .HasForeignKey(d => d.PatientId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__Contacts___Patie__4BAC3F29");

            entity.HasOne(d => d.Status).WithMany(p => p.ContactsTbls)
                .HasForeignKey(d => d.StatusId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__Contacts___Statu__4CA06362");

            entity.HasOne(d => d.Volunteer).WithMany(p => p.ContactsTbls)
                .HasForeignKey(d => d.VolunteerId)
                .HasConstraintName("FK__Contacts___Volun__4D94879B");
        });

        modelBuilder.Entity<DepartmentsTbl>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__Departme__3214EC27A7E42367");

            entity.ToTable("Departments_tbl");

            entity.Property(e => e.Id).HasColumnName("ID");
            entity.Property(e => e.Build)
                .HasMaxLength(25)
                .IsUnicode(false);
            entity.Property(e => e.Name)
                .HasMaxLength(30)
                .IsUnicode(false);
            entity.Property(e => e.Wing)
                .HasMaxLength(25)
                .IsUnicode(false);

            entity.HasOne(d => d.Hospital).WithMany(p => p.DepartmentsTbls)
                .HasForeignKey(d => d.HospitalId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__Departmen__Hospi__4E88ABD4");
        });

        modelBuilder.Entity<HospitalsTbl>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__Hospital__3214EC279BABAA60");

            entity.ToTable("Hospitals_tbl");

            entity.Property(e => e.Id).HasColumnName("ID");
            entity.Property(e => e.Manager)
                .HasMaxLength(30)
                .IsUnicode(false);
            entity.Property(e => e.Name)
                .HasMaxLength(30)
                .IsUnicode(false);
            entity.Property(e => e.Password)
                .HasMaxLength(30)
                .IsUnicode(false);
            entity.Property(e => e.Phone)
                .HasMaxLength(30)
                .IsUnicode(false);
            entity.Property(e => e.Tz)
                .HasMaxLength(30)
                .IsUnicode(false);
        });

        modelBuilder.Entity<PatientsTbl>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__Patients__3214EC27FD0E1A2C");

            entity.ToTable("Patients_tbl");

            entity.Property(e => e.Id).HasColumnName("ID");
            entity.Property(e => e.BirthDate).HasColumnType("datetime");
            entity.Property(e => e.Gender)
                .HasMaxLength(10)
                .IsUnicode(false);
            entity.Property(e => e.Name)
                .HasMaxLength(30)
                .IsUnicode(false);
            entity.Property(e => e.Password)
                .HasMaxLength(30)
                .IsUnicode(false);
            entity.Property(e => e.Phone)
                .HasMaxLength(30)
                .IsUnicode(false);
            entity.Property(e => e.Tz)
                .HasMaxLength(30)
                .IsUnicode(false);

            entity.HasOne(d => d.Department).WithMany(p => p.PatientsTbls)
                .HasForeignKey(d => d.DepartmentId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__Patients___Depar__4F7CD00D");

            entity.HasOne(d => d.Hospital).WithMany(p => p.PatientsTbls)
                .HasForeignKey(d => d.HospitalId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__Patients___Hospi__5070F446");
        });

        modelBuilder.Entity<PresencesTbl>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__Presence__3214EC27442BFEC3");

            entity.ToTable("Presences_tbl");

            entity.Property(e => e.Id).HasColumnName("ID");
            entity.Property(e => e.BreakTime).HasColumnType("datetime");
            entity.Property(e => e.Date).HasColumnType("datetime");
            entity.Property(e => e.EnterTime).HasColumnType("datetime");
            entity.Property(e => e.ExitTime).HasColumnType("datetime");
            entity.Property(e => e.TotalHours).HasColumnType("datetime");

            entity.HasOne(d => d.Volunteer).WithMany(p => p.PresencesTbls)
                .HasForeignKey(d => d.VolunteerId)
                .HasConstraintName("FK__Presences__Volun__5165187F");
        });

        modelBuilder.Entity<VolunteerStatusTbl>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__Voluntee__3214EC2797AAF2CD");

            entity.ToTable("VolunteerStatus_tbl");

            entity.Property(e => e.Id).HasColumnName("ID");
            entity.Property(e => e.Description)
                .HasMaxLength(10)
                .IsUnicode(false);
        });

        modelBuilder.Entity<VolunteersTbl>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__Voluntee__3214EC279F4F2DBE");

            entity.ToTable("Volunteers_tbl");

            entity.Property(e => e.Id).HasColumnName("ID");
            entity.Property(e => e.Gender)
                .HasMaxLength(10)
                .IsUnicode(false);
            entity.Property(e => e.Name)
                .HasMaxLength(30)
                .IsUnicode(false);
            entity.Property(e => e.Password)
                .HasMaxLength(30)
                .IsUnicode(false);
            entity.Property(e => e.Phone)
                .HasMaxLength(30)
                .IsUnicode(false);
            entity.Property(e => e.Tz)
                .HasMaxLength(30)
                .IsUnicode(false);

            entity.HasOne(d => d.Department).WithMany(p => p.VolunteersTbls)
                .HasForeignKey(d => d.DepartmentId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__Volunteer__Depar__52593CB8");

            entity.HasOne(d => d.Hospital).WithMany(p => p.VolunteersTbls)
                .HasForeignKey(d => d.HospitalId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__Volunteer__Hospi__534D60F1");

            entity.HasOne(d => d.Status).WithMany(p => p.VolunteersTbls)
                .HasForeignKey(d => d.StatusId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__Volunteer__Statu__5441852A");
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
