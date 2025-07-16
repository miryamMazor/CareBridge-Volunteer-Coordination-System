import { ComponentFixture, TestBed } from '@angular/core/testing';

import { TestReactComponent } from './test-react.component';

describe('TestReactComponent', () => {
  let component: TestReactComponent;
  let fixture: ComponentFixture<TestReactComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [TestReactComponent]
    });
    fixture = TestBed.createComponent(TestReactComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
