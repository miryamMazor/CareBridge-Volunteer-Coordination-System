// import { Component, OnInit } from '@angular/core';
// import { Hospital } from 'src/app/class/Hospitals';
// import { HospitalService } from 'src/app/services/Hospital';

// @Component({
//   selector: 'app-hospital-list',
//   templateUrl: './hospital-list.component.html',
//   styleUrls: ['./hospital-list.component.css']
// })
// export class HospitalListComponent implements OnInit {
//   hospitals: Hospital[] = [];

//   constructor(private hospitalService: HospitalService) {}

//   ngOnInit(): void {
//     this.loadHospitals();
//   }

//   loadHospitals(): void {
//     this.hospitalService.getAllHospitals().subscribe(
//       (data) => this.hospitals = data,
//       (error) => console.error('שגיאה בטעינת בתי חולים', error)
//     );
//   }

//   deleteHospital(id: number): void {
//     // this.hospitalService.deleteHospital(id).subscribe(() => this.loadHospitals());
//   }
// }
import { Component, OnInit } from '@angular/core';
import { Hospital } from 'src/app/class/Hospitals';
import { HospitalService } from 'src/app/services/Hospital';
import { Department } from 'src/app/class/Department';
import { DepartmentService } from 'src/app/services/Department';

@Component({
  selector: 'app-hospital-list',
  templateUrl: './hospital-list.component.html',
  styleUrls: ['./hospital-list.component.css']
})
export class HospitalListComponent implements OnInit {
  hospitals: Hospital[] = [];
  expandedHospitalId: number | null = null;
  departments: { [key: number]: Department[] } = {}; // מילון שמכיל את רשימת המחלקות לכל בית חולים

  constructor(
    private hospitalService: HospitalService,
    private departmentService: DepartmentService
  ) {}

  ngOnInit(): void {
    this.loadHospitals();
  }

  loadHospitals(): void {
    this.hospitalService.getAllHospitals().subscribe(
      (data) => this.hospitals = data,
      (error) => console.error('שגיאה בטעינת בתי חולים', error)
    );
  }

  toggleDepartments(hospitalId: number): void {
    if (this.expandedHospitalId === hospitalId) {
      this.expandedHospitalId = null; // סגירה במקרה של לחיצה חוזרת
    } else {
      this.expandedHospitalId = hospitalId;
      if (!this.departments[hospitalId]) {
        this.departmentService.getDepartmentsForHospital(hospitalId).subscribe(
          (data) => this.departments[hospitalId] = data,
          (error) => console.error('שגיאה בטעינת מחלקות', error)
        );
      }
    }
  }
}
