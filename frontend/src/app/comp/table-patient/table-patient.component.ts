import { Component, OnInit } from '@angular/core';
import { ContactService } from 'src/app/services/Contact';
import { VolunteerService } from 'src/app/services/Valunteers';

@Component({
  selector: 'app-table-patient',
  templateUrl: './table-patient.component.html',
  styleUrls: ['./table-patient.component.css']
})
export class TablePatientComponent implements OnInit {
  contacts: Array<any> = [];
  volunteersMap: Map<number, string> = new Map(); // מפת ID לשמות מתנדבים

  constructor(
    private contactService: ContactService,
    private volunteerService: VolunteerService
  ) { }

  ngOnInit(): void {
    this.loadvolunteers();
  }

  // טוען את המתנדבים וממלא את המפה
  loadvolunteers() {
    this.volunteerService.getAllVolunteers().subscribe((volunteersT) => {debugger
      //   console.log('Volunteers Data:', volunteers[340].Id); // הדפסת נתוני המתנדבים
      this.volunteersMap = new Map(
        volunteersT
           .filter(volf => volf.id !== undefined && volf.name !== undefined) // סינון רשומות לא תקינות
          .map(vol => [vol.id!, vol.name!])
      );

      this.loadContacts();
    });
  }

  // טוען את הקשרים וממלא את השם של המתנדב ממפת המתנדבים
  loadContacts() {
    this.contactService.getAll().subscribe((data) => {
      this.contacts = data.map((contact) => ({
        ...contact,
        volunteername: this.volunteersMap.get(contact.volunteerId!) || 'לא נמצא',
        status: this.getStatus(contact.statusId), // שינוי כאן לשימוש בפונקציה getStatus
      }));
    });
  }

  // פונקציה להחזרת סטטוס פנייה
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

  // פונקציה לצפייה בפרטי החולה
  viewPatientDetails(volunteerId: number) {
    console.log('View patient details for ID:', volunteerId);
  }

  // פונקציה להקצאת פנייה
  assignContact(contactId: number) {
    console.log('Assigning contact ID:', contactId);
  }
}
