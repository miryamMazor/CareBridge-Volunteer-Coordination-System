import { ComponentFixture, TestBed } from '@angular/core/testing';

import { HospitalAddComponent } from './hospital-add.component';

describe('HospitalAddComponent', () => {
  let component: HospitalAddComponent;
  let fixture: ComponentFixture<HospitalAddComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [HospitalAddComponent]
    });
    fixture = TestBed.createComponent(HospitalAddComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
