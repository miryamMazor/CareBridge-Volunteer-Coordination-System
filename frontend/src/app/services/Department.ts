import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { Department } from '../class/Department';

@Injectable({
  providedIn: 'root'
})
export class DepartmentService {
  private baseUrl: string = "http://localhost:5130/api/Department";

  constructor(private myHttp: HttpClient) { }

  // הוספת מחלקה חדשה
  addDepartment(department: Department): Observable<Department> {
    return this.myHttp.post<Department>(`${this.baseUrl}/AddDepartment`, department);
  }

  // הוספת רשימת מחלקות
  addListDepartments(departments: Array<Department>): Observable<boolean> {
    return this.myHttp.post<boolean>(`${this.baseUrl}/AddListDepartments`, departments);
  }

  // שליפת כל המחלקות
  getAllDepartments(): Observable<Department[]> {
    return this.myHttp.get<Department[]>(`${this.baseUrl}/GetAllDepartments`);
  }

  // שליפת מחלקות לפי בית חולים
  getDepartmentsForHospital(hospitalId: number): Observable<Department[]> {
    return this.myHttp.get<Department[]>(`${this.baseUrl}/GetDepartmentForHospital/${hospitalId}`);
  }
}
