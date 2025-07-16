import { ComponentFixture, TestBed } from '@angular/core/testing';

import { VolunteerManagementComponent } from './volunteer-management.component';

describe('VolunteerManagementComponent', () => {
  let component: VolunteerManagementComponent;
  let fixture: ComponentFixture<VolunteerManagementComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [VolunteerManagementComponent]
    });
    fixture = TestBed.createComponent(VolunteerManagementComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
