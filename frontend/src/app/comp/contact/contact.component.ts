import { Component } from '@angular/core';
import { FormControl, FormGroup } from '@angular/forms';
import { ContactService } from '../../services/Contact';  // Adjust the path as needed
import { Contacts } from '../../class/Contacts';  // Adjust the path as needed
import { PatientService } from '../../services/Patient';  // Adjust the path as needed
import { Patient } from '../../class/Patient';  // Adjust the path as needed

@Component({
  selector: 'app-contact',
  templateUrl: './contact.component.html',
  styleUrls: ['./contact.component.css']
})
export class ContactComponent {

  formContact: FormGroup = new FormGroup({
    'Desc': new FormControl(null, []),

  })

  patient: Patient | null = null;
  contacts: Contacts[] = [];

  constructor(public ContactS: ContactService) { }
  get Desc() {
    return this.formContact.controls['ID'];
  }

  ngOnInit(): void {debugger
    this.formContact = new FormGroup({
      'Desc': new FormControl(null),
    })

    const patientData = localStorage.getItem('currentVolunteer');
    if (patientData) {
      this.patient = JSON.parse(patientData);
      this.getAllContacts();
    } else {
      console.error('Patient not found in localStorage');
    }
  }

  sendLogin() {
    const patientData = localStorage.getItem('currentVolunteer');
    const description = this.formContact.get('Desc')?.value;  // קבלת התיאור מהטופס

    if (!patientData) {
      console.error('מטופל לא נמצא ב-localStorage');
      return;
    }
    const patient: Patient = JSON.parse(patientData!);  // פרסוף הנתונים למודל של מטופל

    this.ContactS.addContact(patient, description).subscribe(
      (contact) => {
        console.log('Contact added successfully:', contact);
        alert("הבקשה התקבלה")
      },
      (error) => {
        console.error('Error adding contact:', error);

      }
    )
  }

  login() {

  }

  getAllContacts() {debugger
    if (!this.patient) {
      console.error('No patient data available');
      return;
    }

    this.ContactS.getAll().subscribe(
      (contacts) => {
        debugger
        console.log(contacts)
        this.contacts = contacts.filter(contact => contact.patientId === this.patient?.id);
      },
      (error) => {
        console.error('Error fetching contacts:', error);
      }
    );
  }
  
}
