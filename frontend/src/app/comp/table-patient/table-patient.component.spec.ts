import { ComponentFixture, TestBed } from '@angular/core/testing';

import { TablePatientComponent } from './table-patient.component';

describe('TablePatientComponent', () => {
  let component: TablePatientComponent;
  let fixture: ComponentFixture<TablePatientComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [TablePatientComponent]
    });
    fixture = TestBed.createComponent(TablePatientComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
