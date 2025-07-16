import { Component, OnInit } from '@angular/core';
import { Department } from 'src/app/class/Department';
import { Hospital } from 'src/app/class/Hospitals';
import { DepartmentService } from 'src/app/services/Department';
import { HospitalService } from 'src/app/services/Hospital';

@Component({
  selector: 'app-department-management',
  templateUrl: './department-management.component.html',
  styleUrls: ['./department-management.component.css']
})
export class DepartmentManagementComponent implements OnInit {
  departments: Department[] = [];
  hospitals: Hospital[] = [];
  department: Department = new Department(0, '', '', '', 0, 0); // יצירת אובייקט ריק עם כל השדות

  constructor(
    private departmentService: DepartmentService,
    private hospitalService: HospitalService
  ) {}

  ngOnInit(): void {
    this.loadDepartments();
    this.loadHospitals();
  }

  loadDepartments(): void {
    // this.departmentService.getAllDepartments().subscribe(
    //   (data) => this.departments = data
    // );
  }

  loadHospitals(): void {
    this.hospitalService.getAllHospitals().subscribe(
      (data) => this.hospitals = data
    );
  }

  addDepartment(): void {
    if (!this.department.name || !this.department.hospitalId) {
      alert("יש למלא את כל הפרטים!");
      return;
    }

    const newDepartment = new Department(
      0,
      this.department.name,
      this.department.build,
      this.department.wing,
      this.department.floorNum,
      this.department.hospitalId
    );
console.log(newDepartment);

    this.departmentService.addDepartment(newDepartment).subscribe(() => {
      this.loadDepartments();
      this.department = new Department(0, '', '', '', 0, 0); // איפוס הטופס
    });
  }

  deleteDepartment(id: number): void {
    // this.departmentService.deleteDepartment(id).subscribe(() => this.loadDepartments());
  }

  getHospitalName(id: number) {
    // return this.hospitals.find(h => h.id === id)?.name || 'לא ידוע';
  }
}
