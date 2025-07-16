import { Component, ElementRef, HostListener, OnInit, Renderer2 } from '@angular/core';
import { AbstractControl, FormControl, FormGroup, Validators } from '@angular/forms';
import { VolunteerService } from '.././../services/Valunteers';  // Adjust the path as needed
import { PatientService } from '../../services/Patient';  // Adjust the path as needed
import { Volunteer } from '../../class/Volunteer';  // Adjust the path as needed
import { Patient } from '../../class/Patient';  // Adjust the path as needed
import { concatAll, tap } from 'rxjs';
import { error } from 'jquery';
import { Router } from '@angular/router';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {
  private adminUsers = [
    { name: 'מרים', lastName: 'מזור', tz: '214272577', phone: '0546251321', password: '121212' },
    { name: 'שרה', lastName: 'מלול', tz: '326059748', phone: '0556668330', password: '212121' }
  ];
  Patients: boolean = false;
  Volunteers: boolean = false;
  flag: boolean = false;
  fromLogin: FormGroup = new FormGroup({});
  fromSingIn: FormGroup = new FormGroup({});
  vol: Volunteer = new Volunteer();
  patient: Patient = new Patient();

  constructor(
    public renderer: Renderer2,
    public el: ElementRef,
    public volunteerService: VolunteerService,
    public patientService: PatientService,
    public router: Router
  ) { }

  ngOnInit(): void {
    this.initEventListeners();
    this.fromLogin = new FormGroup({
      'id': new FormControl(null, [Validators.pattern('[0-9]'), this.checkID.bind(this)]),
      'password': new FormControl(null, Validators.required)
    });
    this.fromSingIn = new FormGroup({
      'name': new FormControl(null, Validators.required),
      'tz': new FormControl(null, Validators.required),
      'phone': new FormControl(null, Validators.required),
      'gender': new FormControl(null),
      'hospitalId': new FormControl(null, Validators.required),
      'departmentId': new FormControl(null, Validators.required),
      'password': new FormControl(null, Validators.required),
      'birthDate': new FormControl(null),
      'roomNumber': new FormControl(null),
      'password_s': new FormControl(null, Validators.required)
    });
  }

  get id() {
    return this.fromLogin.controls['id'];
  }
  get password() {
    return this.fromLogin.controls['password'];
  }
  get password_s() {
    return this.fromSingIn.controls['password_s'];
  }
  get name() {
    return this.fromSingIn.controls['name'];
  }
  get tz() {
    return this.fromSingIn.controls['tz'];
  }
  get phone() {
    return this.fromSingIn.controls['phone'];
  }
  get gender() {
    return this.fromSingIn.controls['gender'];
  }
  get hospitalId() {
    return this.fromSingIn.controls['hospitalId'];
  }
  get departmentId() {
    return this.fromSingIn.controls['departmentId'];
  }
  get birthDate() {
    return this.fromSingIn.controls['birthDate'];
  }
  get roomNumber() {
    return this.fromSingIn.controls['roomNumber'];
  }




  login() {debugger
    console.log('Form Values:', this.fromLogin.value); // בדיקה אם הנתונים מגיעים
    console.log('ID:', this.id.value, 'Password:', this.password.value); // בדיקה פרטנית
      if ((this.id.value === '214272577'||this.id.value === '326059748') && this.password.value === '121212') {
      if (this.id.value === '214272577' && this.password.value === '121212')
        localStorage.setItem('admin', JSON.stringify(this.adminUsers[0]));
      if (this.id.value === '326059748' && this.password.value === '121212')
        localStorage.setItem('admin', JSON.stringify(this.adminUsers[1]));

      alert("Admin logged in successfully!");
      
      this.router.navigate(['/admin']);
      return;
    }
    this.volunteerService.getById(this.id.value!, this.password.value!).subscribe(
      succ => {
        this.vol = succ;
        if (this.vol != null) {
          alert("התחברת בהצלחה!")
          localStorage.setItem('currentVolunteer', JSON.stringify(this.vol));
          this.volunteerService.userId = this.vol!.id;
          console.log(this.id, ",", this.vol);
          this.router.navigate([`TableP`])

        }
        else {
          this.patientService.getById(this.id.value!, this.password.value!).subscribe(
            succ => {
              this.patient = succ;
              if (this.patient != null) {
                alert("התחברת בהצלחה!")
                localStorage.setItem('currentVolunteer', JSON.stringify(this.patient));
                this.patientService.userId = this.patient!.id;
                console.log(this.patient.name, ",", this.patient.id);
                this.router.navigate([`menu-patient`])

              }
              else {
                alert("המשתמש לא נמצא" + "\n" + "אולי תנסה לתקן או להרשם")
              }
            },
            err => {
              alert("אופס..." + "\n" + "אין רשת")
            }
          )
        }
      },
      err => {
        alert("אופס..." + "\n" + "אין רשת")
        debugger
      }
    )
  }


  signUp() {
    debugger
    if (this.Volunteers) {

      this.handleVolunteerSignUp();
    } else if (this.Patients) {
      this.handlePatientSignUp();
    }
  }

  handleVolunteerSignUp() {
    debugger
    console.log(this.fromSingIn.value);

    const volunteer: Volunteer = {};
    volunteer.id = 6
    volunteer.name = this.name.value
    volunteer.tz = this.tz.value
    volunteer.password = this.password_s.value
    volunteer.phone = this.phone.value
    volunteer.gender = this.gender.value
    volunteer.hospitalId = this.hospitalId.value
    volunteer.departmentId = this.departmentId.value
    volunteer.StatusId = 1// צריך לבדוק על איזה מצב לשים את המתנדב, פנוי זה 1??
    volunteer.statusDesc = null!
    console.log(volunteer.id)
    debugger
    this.volunteerService.addVolunteer(volunteer).subscribe(sucss => {debugger
      if (sucss) {
        this.vol = sucss
        console.log('Volunteer added successfully');
        alert("התחברת בהצלחה!")
        localStorage.setItem('currentVolunteer', JSON.stringify(this.vol));
        this.volunteerService.userId = this.vol!.id;
        console.log(this.id, ",", this.vol);
        this.router.navigate([`TableP`])
      } else {

        console.log('Volunteer added dis-success!!!!')
      };
    })
    // debugger
    // this.volunteerService.getById(volunteer.Id!, volunteer.Password!).subscribe(existingVolunteer => {
    //   if (existingVolunteer) {
    //     // Handle existing volunteer case
    //     console.log('Volunteer already exists');
    //   }
    //   else {
    //     this.volunteerService.addVolunteer(volunteer).subscribe(sucss => {
    //       if (sucss) {
    //         console.log('Volunteer added successfully');

    //       }
    //       console.log('Volunteer added dis-success!!!!');
    //     });
    //   }
    // });
  }

  handlePatientSignUp() {
    const patient: Patient = {}
    patient.id = 6
    patient.name = this.name.value
    patient.tz = this.tz.value
    patient.password = this.password_s.value
    patient.phone = this.phone.value
    patient.gender = this.gender.value
    patient.hospitalId = this.hospitalId.value
    patient.departmentId = this.departmentId.value
    patient.birthDate=this.birthDate.value
    patient.roomNumber=this.roomNumber.value
    console.log(patient.name + "test name patient")
    this.patientService.getById(patient.id!, patient.password!).subscribe(existingPatient => {
      if (existingPatient) {
        alert("היי אתה רשום כבר, אם שחכת סיסמא אתה יכול להחליף")
        console.log('Patient already exists');
      } else {
        this.patientService.addPatient(patient).subscribe((succ) => {debugger
          console.log('Patient added successfully');
          this.patient = succ;
          if (this.patient != null) {
            alert("התחברת בהצלחה!")
            localStorage.setItem('currentVolunteer', JSON.stringify(this.patient));
            this.patientService.userId = this.patient!.id;
            console.log(this.patient.name, ",", this.patient.id);
            this.router.navigate([`menu-patient`])
          }
        });
      }
    });
  }

  initEventListeners() {
    const infoBtns = this.el.nativeElement.querySelectorAll('.info-item .btn');
    const container = this.el.nativeElement.querySelector('.container');
    const containerFormBtns = this.el.nativeElement.querySelectorAll('.container-form .btn');

    infoBtns.forEach((btn: ElementRef) => {
      this.renderer.listen(btn, 'click', () => {
        this.flag = !this.flag;
      });
    });
  }

  VolunteersY() {
    this.Volunteers = true;
    this.Patients = false;
  }

  PatientsY() {
    this.Patients = true;
    this.Volunteers = false;
  }

  checkID(ID: AbstractControl) {
    return null;
  }
  sendSingIn() {
    // Logic to handle sign-up
    console.log('Sign Up clicked');
  }
  sendLogin() {
    // Logic to handle login
    console.log('Login clicked');
  }

}
