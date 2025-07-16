import { Component, OnInit } from '@angular/core';
import { Patient } from 'src/app/class/Patient';
import { PatientService } from 'src/app/services/Patient';

@Component({
  selector: 'app-all-patient',
  templateUrl: './all-patient.component.html',
  styleUrls: ['./all-patient.component.css']
})
export class AllPatientComponent implements OnInit {
  patients: Patient[] = [];
  filteredPatients: Patient[] = [];
  searchTerm: string = '';

  constructor(private patientService: PatientService) {}

  ngOnInit(): void {
    this.loadPatients();
  }

  loadPatients(): void {
    this.patientService.getAllPatients().subscribe(
      (data) => {
        this.patients = data;
        this.filteredPatients = this.patients; // בהתחלה מציגים את כולם
      },
      (error) => console.error('שגיאה בטעינת מטופלים', error)
    );
  }

  filterPatients(): void {
    const term = this.searchTerm.toLowerCase();
    this.filteredPatients = this.patients.filter(patient =>
      patient.name!.toLowerCase().includes(term) ||
      patient.phone!.includes(term) ||
      patient.tz!.includes(term) ||
      patient.roomNumber!.toString().includes(term)
    );
  }
}
