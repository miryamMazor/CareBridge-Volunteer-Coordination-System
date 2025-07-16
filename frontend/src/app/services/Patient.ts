import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { Patient } from '../class/Patient';

@Injectable({
  providedIn: 'root'
})
export class PatientService {
  userId:number|undefined=0
    private baseUrl: string = "http://localhost:5130/api/Patient";

  constructor(private myHttp: HttpClient) { }

  // GET: api/Patient/GetAllPatients
  getAllPatients(): Observable<Array<Patient>> {
    return this.myHttp.get<Array<Patient>>(`${this.baseUrl}/GetAllPatients`);
  }

  // POST: api/Patient/AddPatient
  addPatient(patient: Patient): Observable<Patient> {
    return this.myHttp.post<Patient>(`${this.baseUrl}/AddPatient`, patient);
  }

  // GET: api/Patient/GetById/{id}/{pass}
  getById(id: number, pass: string): Observable<Patient> {
    return this.myHttp.get<Patient>(`${this.baseUrl}/GetById/${id}/${pass}`);
  }
}
