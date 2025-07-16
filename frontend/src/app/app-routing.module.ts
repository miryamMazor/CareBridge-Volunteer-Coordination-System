import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { ContactComponent } from './comp/contact/contact.component';
import { LoginComponent } from './comp/login/login.component';
import { ForgotPasswordComponent } from './comp/forgot-password/forgot-password.component';
import { VolunteerProfileComponent } from './comp/volunteer-profile/volunteer-profile.component';
import { PatientProfileComponent } from './comp/patient-profile/patient-profile.component';
import { EnterComponent } from './comp/enter/enter.component';
import { AllApartmentComponent } from './comp/all-apartment/all-apartment.component';
import { AllHospitalComponent } from './comp/all-hospital/all-hospital.component';
import { VolunteerStatusComponent } from './comp/volunteer-status/volunteer-status.component';
import { HospitalRegistrationComponent } from './comp/hospital-registration/hospital-registration.component';
import { TablePatientComponent } from './comp/table-patient/table-patient.component';
import { TableVolunteerComponent } from './comp/table-volunteer/table-volunteer.component';
import { MenuePatientComponent } from './comp/menue-patient/menue-patient.component';
import { MenuAdminComponent } from './comp/menu-admin/menu-admin.component';
import { HospitalManagementComponent } from './comp/hospital-management/hospital-management.component';
import { DepartmentManagementComponent } from './comp/department-management/department-management.component';
import { HospitalAddComponent } from './comp/hospital-add/hospital-add.component';
import { HospitalListComponent } from './comp/hospital-list/hospital-list.component';

const routes: Routes = [
  {
  path: 'admin',
  component: MenuAdminComponent, // תבנית דפים של המנהל
  children: [
    { path: '', redirectTo: 'hospitals', pathMatch: 'full' }, // ניהול בתי חולים מוצג כברירת מחדל
    { path: 'hospitals', component: HospitalManagementComponent },
    { path: 'departments', component: DepartmentManagementComponent }
  ]
},

  { path: '', component: EnterComponent },
  { path: 'login', component: LoginComponent },
  { path: 'con', component: VolunteerStatusComponent },
  { path: 'Hospital', component: HospitalRegistrationComponent },
  { path: 'contact', component: ContactComponent },
  { path: 'forgot-password', component: ForgotPasswordComponent },
  { path: 'volunteer-profile', component: TableVolunteerComponent },
  { path: 'TableP', component: TablePatientComponent },
  { path: 'TableV', component: TableVolunteerComponent },
  { path: 'Admin', component: MenuAdminComponent },
  { path: 'departments', component: DepartmentManagementComponent },

  { path: 'hospitals', component: HospitalManagementComponent },

  
  { path: 'menu-patient', component: MenuePatientComponent, 
    children: [
      { path: '', redirectTo: 'TableP', pathMatch: 'full' }, // ברירת מחדל TableP
      { path: 'TableP', component: TablePatientComponent },
      { path: 'contact', component: ContactComponent }
    ] 
  },

  { path: 'patient-profile', component: MenuePatientComponent }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
