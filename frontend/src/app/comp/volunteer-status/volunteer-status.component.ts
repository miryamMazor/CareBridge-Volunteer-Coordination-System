import { Component } from '@angular/core';

import { FormBuilder, FormGroup, Validators } from '@angular/forms';


@Component({
  selector: 'app-volunteer-status',
  templateUrl: './volunteer-status.component.html',
  styleUrls: ['./volunteer-status.component.css']
})
export class VolunteerStatusComponent {

  loginForm: FormGroup;
  signupForm: FormGroup;

  constructor(private fb: FormBuilder) {
    this.loginForm = this.fb.group({
      username: ['', [Validators.required, Validators.minLength(3)]],
      password: ['', [Validators.required, Validators.minLength(6)]],
    });

    this.signupForm = this.fb.group({
      name: ['', [Validators.required]],
      email: ['', [Validators.required, Validators.email]],
    });
  }

  onLogin() {
    if (this.loginForm.valid) {
      console.log('Login Successful:', this.loginForm.value);
    }
  }

  onSignup() {
    if (this.signupForm.valid) {
      console.log('Signup Successful:', this.signupForm.value);
    }
  }
}
