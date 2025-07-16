// import { Component, OnInit } from '@angular/core';
// import { Hospital } from 'src/app/class/Hospitals';
// import { HospitalService } from 'src/app/services/Hospital';

// @Component({
//   selector: 'app-hospital-management',
//   templateUrl: './hospital-management.component.html',
//   styleUrls: ['./hospital-management.component.css']
// })
// export class HospitalManagementComponent implements OnInit {
//   hospitals: Hospital[] = [];
//   hospital: Hospital = { id: 0, name: '',manager:'', tz:'', password:'', phone:'' };

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
//   addHospital(): void {
//     this.hospitalService.addHospital(this.hospital).subscribe(() => {
//       this.loadHospitals();
//       this.hospital = { id: 0, name: '', manager: '', tz: '', password: '', phone: '' }; // איפוס השדות
//     });
//   }
  
// }

import { Component } from '@angular/core';
import { Router } from '@angular/router';

@Component({
  selector: 'app-hospital-management',
  templateUrl: './hospital-management.component.html',
  styleUrls: ['./hospital-management.component.css']
})
export class HospitalManagementComponent {
  selectedComponent = 'list'; // ברירת מחדל - רשימת בתי חולים

  constructor(private router: Router) {
  }

}
