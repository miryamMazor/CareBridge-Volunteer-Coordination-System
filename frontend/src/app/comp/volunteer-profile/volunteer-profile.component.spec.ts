import { ComponentFixture, TestBed } from '@angular/core/testing';

import { VolunteerProfileComponent } from './volunteer-profile.component';

describe('VolunteerProfileComponent', () => {
  let component: VolunteerProfileComponent;
  let fixture: ComponentFixture<VolunteerProfileComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [VolunteerProfileComponent]
    });
    fixture = TestBed.createComponent(VolunteerProfileComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
