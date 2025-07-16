using Microsoft.EntityFrameworkCore;
using Dal.models;
using Bll.Interface;
using Bll.Function;
using Dal.Interface;
using Dal.Function;
var builder = WebApplication.CreateBuilder(args);

// Add services to the container.

builder.Services.AddDbContext<VolunteersDbContext>(y => y.UseSqlServer("Server=mazor.\\SQLEXPRESS;Database=VolunteersDB;Trusted_Connection=True;TrustServerCertificate=True;"));
builder.Services.AddAutoMapper(typeof(Program));

//dal
builder.Services.AddScoped<IPatientDal, PatientDal>();
builder.Services.AddScoped<IVolunteerDal, VolunteersDal>();
builder.Services.AddScoped<IHospitalDal, HospitalDal>();
builder.Services.AddScoped<IDepartmentDall,DepartmentDal>();
builder.Services.AddScoped<IstatusDal, StatusDal>();
builder.Services.AddScoped<IcontactsDal, ContactsDal>();
builder.Services.AddScoped<IContactStatus, ContactStatusDal>();

//bll
builder.Services.AddScoped<IPatientBll, PatientBll>();
builder.Services.AddScoped<IVolunteerBll, VolunteerBll>();
builder.Services.AddScoped<IHospitalBll, HospitalBll>();
builder.Services.AddScoped<IDepartmentBll,DepartmentBll>();
builder.Services.AddScoped<IstatusBll, StatusBll>();
builder.Services.AddScoped<IContactBll, ContactBll>();

builder.Services.AddCors(options =>
{
    options.AddPolicy("AllowSpecificOrigin",
        builder => builder.WithOrigins("http://localhost:4200")
                          .AllowAnyMethod()
                          .AllowAnyHeader());
});

builder.Services.AddControllers();

// Swagger configuration
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();
builder.Services.AddScoped<ContactStatusDal>();

var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseHttpsRedirection();

// Apply CORS
app.UseCors("AllowSpecificOrigin");

app.UseAuthorization();

app.MapControllers();

app.Run();