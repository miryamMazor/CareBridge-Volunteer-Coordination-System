import { Component, OnInit } from '@angular/core';
import { DepartmentService } from '../../services/Department';
import { HospitalService } from '../../services/Hospital';
import { Department } from '../../class/Department';
import { Hospital } from '../../class/Hospitals';

@Component({
  selector: 'app-hospital-registration',
  templateUrl: './hospital-registration.component.html',
  styleUrls: ['./hospital-registration.component.css']
})
export class HospitalRegistrationComponent implements OnInit {

  hospital: Hospital = new Hospital(0, '', '', '', '', ''); // יוזמה ראשונית של אובייקט בית החולים
  department: Department = new Department(0, '', null, null, 0, 0); // יוזמה ראשונית של אובייקט המחלקה

  constructor(
    private hospitalService: HospitalService,
    private departmentService: DepartmentService
  ) { }

  ngOnInit(): void {
    this.loadHospitals();
  }

  loadHospitals(): void {
    this.hospitalService.getAllHospitals().subscribe(
      (data) => console.log('רשימת בתי חולים נטענו בהצלחה', data),
      (error) => console.error('שגיאה בטעינת בתי חולים', error)
    );
  }

  registerHospital(): void {
    this.hospitalService.addHospital(this.hospital).subscribe(
      (hospitalId: number) => {
        console.log('בית החולים נרשם בהצלחה עם מזהה:', hospitalId);
        this.registerDepartment(hospitalId); // רישום מחלקה לאחר רישום בית החולים
      },
      (error) => console.error('שגיאה ברישום בית החולים', error)
    );
  }

  registerDepartment(hospitalId: number): void {
    this.department.hospitalId = hospitalId; // שיוך המחלקה לבית החולים
    this.departmentService.addDepartment(this.department).subscribe(
      (response) => console.log('המחלקה נרשמה בהצלחה:', response),
      (error) => console.error('שגיאה ברישום המחלקה', error)
    );
  }
}
