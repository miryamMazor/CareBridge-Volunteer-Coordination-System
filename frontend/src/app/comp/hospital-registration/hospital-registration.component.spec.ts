import { ComponentFixture, TestBed } from '@angular/core/testing';

import { HospitalRegistrationComponent } from './hospital-registration.component';

describe('HospitalRegistrationComponent', () => {
  let component: HospitalRegistrationComponent;
  let fixture: ComponentFixture<HospitalRegistrationComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [HospitalRegistrationComponent]
    });
    fixture = TestBed.createComponent(HospitalRegistrationComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
