import { ComponentFixture, TestBed } from '@angular/core/testing';

import { AllContactsManagementComponent } from './all-contacts-management.component';

describe('AllContactsManagementComponent', () => {
  let component: AllContactsManagementComponent;
  let fixture: ComponentFixture<AllContactsManagementComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [AllContactsManagementComponent]
    });
    fixture = TestBed.createComponent(AllContactsManagementComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
