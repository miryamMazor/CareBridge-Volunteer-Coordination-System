// import { Component } from '@angular/core';
// import { Patient } from 'src/app/class/Patient';
// import { Volunteer } from 'src/app/class/Volunteer';
// import { PatientService } from 'src/app/services/Patient';
// //import { StatusService} from '../../services/Status';
// import { VolunteerService } from 'src/app/services/Valunteers';

// @Component({
//   selector: 'app-volunteer-profile',
//   templateUrl: './volunteer-profile.component.html',
//   styleUrls: ['./volunteer-profile.component.css']
// })
// export class VolunteerProfileComponent {

//   selectedOption: number = 1; // הערך ברירת מחדל
//   volunteerId_string: string | null = null;
//   patient: Patient = new Patient();

//   volunteerId_number: number | null = null;
//   volunteer_password: string | null = null;
//   volunteer: Volunteer|null=null
//   volunteer_updated: Volunteer|null=null


//   constructor(private volunteerService: VolunteerService
//   ) {}
//   ngOnInit(): void {
//     const storedVolunteer = localStorage.getItem('currentVolunteer');
//     if (storedVolunteer) {
//         this.volunteer = Object.assign(new Volunteer(), JSON.parse(storedVolunteer));
//         console.log('Volunteer loaded:', this.volunteer);
//     } else {
//         console.error('❌ לא נמצא מתנדב בלוקל סטורג׳!');
//     }

//     if (!this.volunteer?.Id) {
//         console.error('❌ לא נמצא זיהוי מתנדב בלוקל סטורג׳!');
//     }

//   }
//   onToggleChange(option: number): void {
//     this.selectedOption = option;
//     console.log('Selected option:', this.selectedOption);
//     if (this.volunteerId_string) {
//       this.volunteerService.updateStatus(this.volunteerId_string,this.selectedOption);
//       console.trace('update stutus sucssefully');

//       //עדכון המשתמש בלוקל סטורג:
//       //דרך 1 לייבא את האוביקט המעודכן:
//       this.volunteerService.getById(this.volunteerId_string, this.volunteer_password!).subscribe(
//         succ => {
//           this.volunteer_updated = succ;
//           if (this.volunteer_updated != null) {
//             console.log("updated");
//             localStorage.setItem('currentVolunteer', JSON.stringify(this.volunteer_updated));
//           }
//           else{console.log("un-updated");
//           }
//         }
//       )
//       //דרך 2 לעדכן ישירות בלוקל:
     
//       if (this.volunteer) {
//         localStorage.setItem('currentVolunteer', JSON.stringify(this.volunteer));
//         console.log('הנתון עודכן בהצלחה:', this.volunteer);
//       } else {
//         console.error('❌ עדכון נכשל – אין מתנדב תקף.');
//       }
      


//     } else {
//       console.error('לא ניתן לעדכן סטטוס – אין זיהוי מתנדב.');
//     }
  
//   }
// }
import { Component } from '@angular/core';
import { Patient } from 'src/app/class/Patient';
import { Volunteer } from 'src/app/class/Volunteer';
import { PatientService } from 'src/app/services/Patient';
//import { StatusService} from '../../services/Status';
import { VolunteerService } from 'src/app/services/Valunteers';

@Component({
  selector: 'app-volunteer-profile',
  templateUrl: './volunteer-profile.component.html',
  styleUrls: ['./volunteer-profile.component.css']
})
export class VolunteerProfileComponent {

  selectedOption: number = 1; // הערך ברירת מחדל
  volunteerId_string: string | null = null;
  patient: Patient = new Patient();

  volunteerId_number: number | null = null;
  volunteer_password: string | null = null;
  volunteer: Volunteer|null=null
  volunteer_updated: Volunteer|null=null


  constructor(private volunteerService: VolunteerService,   public patientService: PatientService,
  ) {}
  ngOnInit(): void {
  
    // console.log("updated");

    // const storedVolunteer = localStorage.getItem('currentVolunteer');
    // this.volunteer = storedVolunteer ? JSON.parse(storedVolunteer) as Volunteer : null;
    //     console.group('data volunteer:'+this.volunteer);
    //     if (this.volunteer) {
    //       console.log(this.volunteer.Id ? this.volunteer.Name?.toString() : 'name: null');
    //       console.log(this.volunteer.Id ? this.volunteer.Tz?.toString() : 't.z: null');
        
    //       this.volunteerId_string = this.volunteer.Id ? this.volunteer.Id.toString() : null;
    //      // this.volunteerId_number = this.volunteer.Tz ? this.volunteer.Tz?.toString() : null;
    //       this.volunteer_password = this.volunteer.Password ? this.volunteer.Password?.toString() : null;
    //     } else {
    //       console.error('❌ לא נמצא מתנדב בלוקל סטורג׳!');
    //     }
    let volunteerData = localStorage.getItem('currentVolunteer');

    if (volunteerData) {
      // המרה מאובייקט JSON
      let volunteer = JSON.parse(volunteerData);
      this.volunteerId_string = volunteer.id ? volunteer.id.toString() : null;
    }
    else
    if (!this.volunteerId_string) {
      console.error('❌ לא נמצא זיהוי מתנדב בלוקל סטורג׳!');
    }
       
  }
  onToggleChange(option: number): void {
    this.selectedOption = option;
    console.log('Selected option:', this.selectedOption);
    if (this.volunteerId_string) {
      this.volunteerService.updateStatus(this.volunteerId_string,this.selectedOption);
      console.trace('update stutus sucssefully');

      //עדכון המשתמש בלוקל סטורג:
      //דרך 1 לייבא את האוביקט המעודכן:
      this.volunteerService.getById(this.volunteerId_string, this.volunteer_password!).subscribe(
        succ => {
          this.volunteer_updated = succ;
          if (this.volunteer_updated != null) {
            console.log("updated");
            localStorage.setItem('currentVolunteer', JSON.stringify(this.volunteer_updated));
          }
          else{console.log("un-updated");
          }
        }
      )
      //דרך 2 לעדכן ישירות בלוקל:
     
      if (this.volunteer) {
        localStorage.setItem('currentVolunteer', JSON.stringify(this.volunteer));
        console.log('הנתון עודכן בהצלחה:', this.volunteer);
      } else {
        console.error('❌ עדכון נכשל – אין מתנדב תקף.');
      }
      


    } else {
      console.error('לא ניתן לעדכן סטטוס – אין זיהוי מתנדב.');
    }
  
  }
}
