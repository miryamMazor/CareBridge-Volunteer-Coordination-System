import { Component, OnInit } from '@angular/core';
import { Patient } from '../../../class/Patient';
import { PatientService } from '../../../services/Patient';
import { HospitalService } from '../../../services/Hospital';
import { DepartmentService } from '../../../services/Department';
import * as XLSX from 'xlsx';

@Component({
  selector: 'app-add-patient',
  templateUrl: './add-patient.component.html',
  styleUrls: ['./add-patient.component.css']
})
export class AddPatientComponent implements OnInit {
  patient: Patient = new Patient();
  hospitals: any[] = [];
  departments: any[] = [];
  isDepartmentDisabled: boolean = true;
  patientsFromExcel: any[] = [];

  constructor(
    public patientService: PatientService,
    public hospitalService: HospitalService,
    public departmentService: DepartmentService
  ) {}

  onFileChange(event: any): void {
    const file = event.target.files[0];
    if (!file) return;

    const reader = new FileReader();
    reader.onload = (e: any) => {
      const data = new Uint8Array(e.target.result);
      const workbook = XLSX.read(data, { type: 'array' });

      const sheetName = workbook.SheetNames[0];
      const worksheet = workbook.Sheets[sheetName];

      this.patientsFromExcel = XLSX.utils.sheet_to_json(worksheet);
      console.log('נתונים שהתקבלו מה-Excel:', this.patientsFromExcel);
    };
    reader.readAsArrayBuffer(file);
  }

  addPatientsFromExcel(): void {
    this.patientsFromExcel.forEach(patientData => {
      const newPatient: Patient = {
        id: 0,
        name: patientData.Name || 'שם לא ידוע',
        tz: patientData.Tz || 'אין ת"ז',
        phone: patientData.Phone || 'אין טלפון',
        gender: patientData.Gender || null,
        hospitalId: patientData.HospitalId || null,
        departmentId: patientData.DepartmentId || null,
        password: patientData.Password || '1234',
        roomNumber: patientData.RoomNumber || null,
        birthDate:patientData.BirthDate ? new Date(patientData.BirthDate) : null!
      };
      this.patientService.addPatient(newPatient).subscribe(response => {
        console.log('מטופל נוסף בהצלחה:', response);
      });
    });

    alert('כל המטופלים נוספו בהצלחה!');
  }

  ngOnInit(): void {
    this.hospitalService.getAllHospitals().subscribe(data => {
      this.hospitals = data;
    });
  }

  onHospitalChange(hospitalId: number): void {
    if (hospitalId) {
      this.isDepartmentDisabled = false;
      this.departmentService.getDepartmentsForHospital(hospitalId).subscribe(data => {
        this.departments = data;
      });
    } else {
      this.isDepartmentDisabled = true;
      this.departments = [];
    }
  }

  addPatient(): void {
    this.patientService.addPatient(this.patient).subscribe(response => {
      console.log('מטופל נוסף בהצלחה:', response);
      alert('המטופל נוסף בהצלחה!');
      this.patient = new Patient();
      this.isDepartmentDisabled = true;
    }, error => {
      console.error('שגיאה בהוספת מטופל:', error);
      alert('אירעה שגיאה בעת הוספת המטופל');
    });
  }
}