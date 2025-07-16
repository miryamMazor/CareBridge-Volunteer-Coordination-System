import { ComponentFixture, TestBed } from '@angular/core/testing';

import { VolunteerStatusComponent } from './volunteer-status.component';

describe('VolunteerStatusComponent', () => {
  let component: VolunteerStatusComponent;
  let fixture: ComponentFixture<VolunteerStatusComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [VolunteerStatusComponent]
    });
    fixture = TestBed.createComponent(VolunteerStatusComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
