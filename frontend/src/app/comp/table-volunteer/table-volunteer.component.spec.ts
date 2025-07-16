import { ComponentFixture, TestBed } from '@angular/core/testing';

import { TableVolunteerComponent } from './table-volunteer.component';

describe('TableVolunteerComponent', () => {
  let component: TableVolunteerComponent;
  let fixture: ComponentFixture<TableVolunteerComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [TableVolunteerComponent]
    });
    fixture = TestBed.createComponent(TableVolunteerComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
