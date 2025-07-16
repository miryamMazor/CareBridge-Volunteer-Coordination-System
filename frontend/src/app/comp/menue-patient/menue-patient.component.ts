import { Component } from '@angular/core';
import { Router } from '@angular/router';

@Component({
  selector: 'app-menue-patient',
  templateUrl: './menue-patient.component.html',
  styleUrls: ['./menue-patient.component.css']
})
export class MenuePatientComponent {
  selectedComponent = 'TableP';

  constructor(private router: Router) {
    this.router.navigate(['/menu-patient/TableP']); // ברירת מחדל
  }

  navigate(component: string) {
    this.selectedComponent = component;
    this.router.navigate([`/menu-patient/${component}`]);
  }
}
