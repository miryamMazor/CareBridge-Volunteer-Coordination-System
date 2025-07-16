import { ComponentFixture, TestBed } from '@angular/core/testing';

import { AllHospitalComponent } from './all-hospital.component';

describe('AllHospitalComponent', () => {
  let component: AllHospitalComponent;
  let fixture: ComponentFixture<AllHospitalComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [AllHospitalComponent]
    });
    fixture = TestBed.createComponent(AllHospitalComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
