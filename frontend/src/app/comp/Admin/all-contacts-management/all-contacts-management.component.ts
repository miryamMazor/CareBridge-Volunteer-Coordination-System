import { Component, OnInit } from '@angular/core';
import { MatDialog } from '@angular/material/dialog';
import { ContactService } from 'src/app/services/Contact';
import { VolunteerService } from 'src/app/services/Valunteers';
import { RequestManagementComponent } from '../../../comp/request-management/request-management.component';
import { Volunteer } from 'src/app/class/Volunteer';

@Component({
  selector: 'app-all-contacts-management',
  templateUrl: './all-contacts-management.component.html',
  styleUrls: ['./all-contacts-management.component.css']
})
export class AllContactsManagementComponent implements OnInit {
  contacts: Array<any> = [];
  volunteersMap: Map<number, Volunteer> = new Map();
  volunteers: Volunteer[] = [];
  selectedVolunteer: Volunteer | null = null; // 🔹 נשמור כאן את המתנדב שנבחר


  constructor(
    private contactService: ContactService,
    private volunteerService: VolunteerService,
    private dialog: MatDialog
  ) {}

  ngOnInit(): void {
    this.loadVolunteers();
  }

  loadVolunteers(): void {
    this.volunteerService.getAllVolunteers().subscribe(
      (data) => {        
        this.volunteers = data.map(v => {
          const volunteer: Volunteer = {
            id: v.id,          
            name: v.name,
            phone: v.phone ?? '',  
            tz: v.tz
          };
          this.volunteersMap.set(v.id!, volunteer); // שמירת מתנדב במפה
          return volunteer;
        });

        this.loadContacts(); // נטען את הפניות רק אחרי שהמתנדבים נטענו
      },
      (error) => console.error('שגיאה בטעינת מתנדבים', error)
    );
  }

  loadContacts(): void {
    this.contactService.getAll().subscribe((data) => {
      this.contacts = data.map((contact) => ({
        ...contact,
        volunteername: this.volunteersMap.get(contact.volunteerId)?.name ?? 'לא נמצא',
        status: this.getStatus(contact.statusId),
      }));
    });
  }

  getStatus(statusCode: number): string {
    const statusMap: { [key: number]: string } = {
      7: '⏳ ממתינה',
      8: '🔒 נסגרה',
      9: '🕛 ממתינה 2 דק',
      10: '🕧 ממתינה 5 דק',
      11: '📵 לא נענתה'
    };
    return statusMap[statusCode] || 'סטטוס לא זמין';
  }

  openVolunteerDetails(volunteerId: number): void {
    // const volunteer = this.volunteersMap.get(volunteerId);
    // if (volunteer) {debugger
    //   this.dialog.open(RequestManagementComponent, {
    //     width: '400px',
    //     data: volunteer
    //   });
    // }
    this.selectedVolunteer = this.volunteers.find(v => v.id === volunteerId) || null;

  }

  viewPatientDetails(volunteerId: number): void {
    console.log('Viewing details for:', volunteerId);
  }

  assignContact(contactId: number): void {
    console.log('Assigning contact:', contactId);
  }
 
  
  //  פונקציה לסגירת התצוגה
  closeVolunteerDetails() {
    this.selectedVolunteer = null;
  }
}