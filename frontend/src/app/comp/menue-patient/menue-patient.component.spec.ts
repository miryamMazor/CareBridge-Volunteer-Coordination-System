import { ComponentFixture, TestBed } from '@angular/core/testing';

import { MenuePatientComponent } from './menue-patient.component';

describe('MenuePatientComponent', () => {
  let component: MenuePatientComponent;
  let fixture: ComponentFixture<MenuePatientComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [MenuePatientComponent]
    });
    fixture = TestBed.createComponent(MenuePatientComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
