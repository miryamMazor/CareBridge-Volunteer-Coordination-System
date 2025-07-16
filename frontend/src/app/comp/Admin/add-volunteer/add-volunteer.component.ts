import { Component, OnInit } from '@angular/core';
import { Volunteer } from '../../../class/Volunteer';
import { VolunteerService } from '../../../services/Valunteers';
import { HospitalService } from '../../../services/Hospital';
import { DepartmentService } from '../../../services/Department';
import { StatusService } from 'src/app/services/Status';
import * as XLSX from 'xlsx'; // ייבוא ספריית XLSX

@Component({
  selector: 'app-add-volunteer',
  templateUrl: './add-volunteer.component.html',
  styleUrls: ['./add-volunteer.component.css']
})
export class AddVolunteerComponent implements OnInit {
  volunteer: Volunteer = new Volunteer();
  hospitals: any[] = [];
  departments: any[] = [];
  statuses: any[] = [];
  isDepartmentDisabled: boolean = true; // המחלקות מושבתות עד לבחירת בית חולים
  volunteersFromExcel: any[] = []; // מתנדבים שנקראו מה-Excel

  constructor(
    public volunteerService: VolunteerService,
    public hospitalService: HospitalService,
    public departmentService: DepartmentService,
    public statusService: StatusService
  ) {}
  onFileChange(event: any): void {
    const file = event.target.files[0];
    if (!file) return;

    const reader = new FileReader();
    reader.onload = (e: any) => {
      const data = new Uint8Array(e.target.result);
      const workbook = XLSX.read(data, { type: 'array' });

      const sheetName = workbook.SheetNames[0]; // גיליון ראשון
      const worksheet = workbook.Sheets[sheetName];

      this.volunteersFromExcel = XLSX.utils.sheet_to_json(worksheet); // המרת גיליון לאובייקטים
      console.log('נתונים שהתקבלו מה-Excel:', this.volunteersFromExcel);
    };
    reader.readAsArrayBuffer(file);
  }
  addVolunteersFromExcel(): void {
    this.volunteersFromExcel.forEach(volunteerData => {
      const newVolunteer: Volunteer = {
        id: 0,
        name: volunteerData.Name || 'שם לא ידוע',
        phone: volunteerData.Phone || 'אין טלפון',
        hospitalId: volunteerData.HospitalId || null,
        departmentId: volunteerData.DepartmentId || null
      };
      this.volunteerService.addVolunteer(newVolunteer); // הוספה ידנית למערך
    });

    console.log('מתנדבים לאחר הוספה:', this.volunteer);
    alert('כל המתנדבים נוספו לרשימה המקומית בהצלחה!');
  }

  // פונקציה ליצירת ID ייחודי זמני (במערכת אמיתית זה יבוא מהשרת)
 

  ngOnInit(): void {
    this.hospitalService.getAllHospitals().subscribe(data => {
      this.hospitals = data;
    });

    this.statusService.getAllStatuses().subscribe(data => {
      this.statuses = data;
    });
  }

  onHospitalChange(hospitalId: number): void {
    console.log(hospitalId)
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

  addVolunteer(): void {
    this.volunteerService.addVolunteer(this.volunteer).subscribe(response => {
      console.log('מתנדב נוסף בהצלחה:', response);
      alert('המתנדב נוסף בהצלחה!');
      this.volunteer = new Volunteer(); // איפוס הטופס
      this.isDepartmentDisabled = true; // החזרת המחלקות להיות מושבתות
    }, error => {
      console.error('שגיאה בהוספת מתנדב:', error);
      alert('אירעה שגיאה בעת הוספת המתנדב');
    });
  }

}
