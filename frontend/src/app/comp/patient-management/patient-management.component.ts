import { Component } from '@angular/core';
import { Router } from '@angular/router';

@Component({
  selector: 'app-patient-management',
  templateUrl: './patient-management.component.html',
  styleUrls: ['./patient-management.component.css']
})
export class PatientManagementComponent {
  selectedComponent = 'list'; // ברירת מחדל - רשימת בתי חולים

  constructor(private router: Router) {
  }

}
