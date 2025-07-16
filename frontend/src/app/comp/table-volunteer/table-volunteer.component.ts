import { Component, OnInit } from '@angular/core';
import { ContactService } from 'src/app/services/Contact';
import { PatientService } from 'src/app/services/Patient';

@Component({
  selector: 'app-table-volunteer',
  templateUrl: './table-volunteer.component.html',
  styleUrls: ['./table-volunteer.component.css']
})
export class TableVolunteerComponent implements OnInit{
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
    this.patientService.getAllPatients().subscribe((patientsT) => {debugger
      // יצירת מיפוי בין מזהה המטופל לשמו
      this.patientsMap = new Map(
        patientsT
           .filter(patient => patient.id !== undefined && patient.name !== undefined) // סינון רשומות לא תקינות
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
  handleContact(contact: any) {
    // עדכון הסטטוס של הפנייה לאחר הלחיצה
    // contact.statusId = 8; // לדוגמה, סטטוס חדש שמסמן שהפנייה טופלה
    contact.status = this.getStatus(contact.statusId); // מעדכן את השם בהתאם לסטטוס החדש
  
    // עדכון בשרת (אם צריך)
    this.contactService.updateContact(contact.id, contact.statusId+1).subscribe(
      () => {
        console.log('Contact updated successfully');
      },
      (error) => {
        console.error('Error updating contact:', error);
      }
    );
  }
  
}
