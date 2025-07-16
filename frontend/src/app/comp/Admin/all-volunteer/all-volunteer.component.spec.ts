import { ComponentFixture, TestBed } from '@angular/core/testing';

import { AllVolunteerComponent } from './all-volunteer.component';

describe('AllVolunteerComponent', () => {
  let component: AllVolunteerComponent;
  let fixture: ComponentFixture<AllVolunteerComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [AllVolunteerComponent]
    });
    fixture = TestBed.createComponent(AllVolunteerComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
