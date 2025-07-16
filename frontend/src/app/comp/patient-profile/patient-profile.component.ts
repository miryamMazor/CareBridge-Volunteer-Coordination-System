import { Component, OnInit } from '@angular/core';
import { ContactService } from 'src/app/services/Contact';
import { PatientService } from 'src/app/services/Patient';

@Component({
  selector: 'app-patient-profile',
  templateUrl: './patient-profile.component.html',
  styleUrls: ['./patient-profile.component.css']
})
export class PatientProfileComponent implements OnInit {
  contacts: Array<any> = [];
  patientsMap: Map<number, string> = new Map(); // מפת ID לשמות מטופלים

  constructor(
    private contactService: ContactService,
    private patientService: PatientService
  ) {}

  ngOnInit(): void {
    this.loadPatients();
  }
  
  loadPatients() {
    this.patientService.getAllPatients().subscribe((patients) => {
      // יצירת מיפוי בין מזהה המטופל לשמו
      this.patientsMap = new Map(
        patients
          // .filter(patient => patient.id !== undefined && patient.name !== undefined) // סינון רשומות לא תקינות
          .map(patient => [patient.id!, patient.name!])
      );
      
      this.loadContacts();
    });
  }
  loadContacts() {
    this.contactService.getAll().subscribe((data) => {
      this.contacts = data.map((contact) => ({
        ...contact,
        patientName: this.patientsMap.get(contact.patientId) || 'לא נמצא',
        status: this.getStatus(contact.statusId), // שינוי כאן לשימוש בפונקציה getStatus
      }));
    });
  }
  
  getStatus(statusCode: number): string {
    const statusMap: { [key: number]: string } = {
      7: '⏳ ממתינה',
      8: '🔒נסגרה',
      9: '🕛ממתינה 2 דק',
      10: ' 🕧 ממתינה 5 דק',
      11: '📵לא נענתה'
    };
    
    return statusMap[statusCode] || 'סטטוס לא זמין'; // ערך ברירת מחדל
  }
  

  viewPatientDetails(patientId: number) {
    console.log('View patient details for ID:', patientId);
  }

  assignContact(contactId: number) {
    console.log('Assigning contact ID:', contactId);
  }
}
