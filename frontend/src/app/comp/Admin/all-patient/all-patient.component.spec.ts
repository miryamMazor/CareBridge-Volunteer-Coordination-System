import { ComponentFixture, TestBed } from '@angular/core/testing';

import { AllPatientComponent } from './all-patient.component';

describe('AllPatientComponent', () => {
  let component: AllPatientComponent;
  let fixture: ComponentFixture<AllPatientComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [AllPatientComponent]
    });
    fixture = TestBed.createComponent(AllPatientComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
