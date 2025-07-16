import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { HttpClientModule } from '@angular/common/http';
import { LoginComponent } from './comp/login/login.component';
import { AllApartmentComponent } from './comp/all-apartment/all-apartment.component';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { ContactComponent } from './comp/contact/contact.component';
import { VolunteerStatusComponent } from './comp/volunteer-status/volunteer-status.component';
import { Observable } from 'rxjs';
import { HospitalRegistrationComponent } from './comp/hospital-registration/hospital-registration.component';
import { AllHospitalComponent } from './comp/all-hospital/all-hospital.component';
import { ForgotPasswordComponent } from './comp/forgot-password/forgot-password.component';
import { VolunteerProfileComponent } from './comp/volunteer-profile/volunteer-profile.component';
import { PatientProfileComponent } from './comp/patient-profile/patient-profile.component';
import { RouterModule } from '@angular/router';
import { EnterComponent } from './comp/enter/enter.component';
import { TableVolunteerComponent } from './comp/table-volunteer/table-volunteer.component';
import { TablePatientComponent } from './comp/table-patient/table-patient.component';
import { MenuePatientComponent } from './comp/menue-patient/menue-patient.component';
import { MenuAdminComponent } from './comp/menu-admin/menu-admin.component';
import { HospitalManagementComponent } from './comp/hospital-management/hospital-management.component';
import { DepartmentManagementComponent } from './comp/department-management/department-management.component';
import { HospitalListComponent } from './comp/hospital-list/hospital-list.component';
import { HospitalAddComponent } from './comp/hospital-add/hospital-add.component';
import { VolunteerManagementComponent } from './comp/volunteer-management/volunteer-management.component';
import { PatientManagementComponent } from './comp/patient-management/patient-management.component';
import { RequestManagementComponent } from './comp/request-management/request-management.component';
import { AllPatientComponent } from './comp/Admin/all-patient/all-patient.component';
import { AddPatientComponent } from './comp/Admin/add-patient/add-patient.component';
import { AddVolunteerComponent } from './comp/Admin/add-volunteer/add-volunteer.component';
import { AllVolunteerComponent } from './comp/Admin/all-volunteer/all-volunteer.component';
import { AllContactsManagementComponent } from './comp/Admin/all-contacts-management/all-contacts-management.component';
//import { AdminLayoutComponent } from './comp/layouts/admin-layout/admin-layout.component';
//  import { AllApartmentComponent } from './comp/all-apartment/all-apartment.component'
import { MatDialogModule } from '@angular/material/dialog';

@NgModule({
  declarations: [
    AppComponent,
    LoginComponent,
    ContactComponent,
    VolunteerStatusComponent,
    HospitalRegistrationComponent,
    AllHospitalComponent,
    ForgotPasswordComponent,
    VolunteerProfileComponent,
    PatientProfileComponent,
    EnterComponent,
    TableVolunteerComponent,
    TablePatientComponent,
    MenuePatientComponent,
    MenuAdminComponent,
    HospitalManagementComponent,
    DepartmentManagementComponent,
    HospitalListComponent,
    HospitalAddComponent,
    VolunteerManagementComponent,
    PatientManagementComponent,
    RequestManagementComponent,
    AllPatientComponent,
    AddPatientComponent,
    AddVolunteerComponent,
    AllVolunteerComponent,
    AllContactsManagementComponent
       // AdminLayoutComponent
    
    // AllApartmentComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    HttpClientModule,
    AppRoutingModule,
    ReactiveFormsModule,
    FormsModule,
    RouterModule,
    MatDialogModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
