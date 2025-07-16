import { Component } from '@angular/core';
import { Router } from '@angular/router';

@Component({
  selector: 'app-volunteer-management',
  templateUrl: './volunteer-management.component.html',
  styleUrls: ['./volunteer-management.component.css']
})
export class VolunteerManagementComponent {
  selectedComponent = 'list'; // ברירת מחדל - רשימת בתי חולים

  constructor(private router: Router) {
  }

}
