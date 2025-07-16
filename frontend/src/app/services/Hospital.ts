import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { Hospital } from '../class/Hospitals';

@Injectable({
  providedIn: 'root'
})
export class HospitalService {

  private baseUrl: string = "http://localhost:5130/api/Hospital";

  constructor(private myHttp: HttpClient) { }

  // GET: api/Hospital/GetAll
  getAllHospitals(): Observable<Array<Hospital>> {
    return this.myHttp.get<Array<Hospital>>(`${this.baseUrl}/GetAll`);
  }

  // POST: api/Hospital/AddHospital
  addHospital(hospital: Hospital): Observable<number> {
    return this.myHttp.post<number>(`${this.baseUrl}/AddHospital`, hospital);
  }

  // PUT: api/Hospital/UpdateHospital
  updateHospital(hospital: Hospital): Observable<Hospital> {
    return this.myHttp.put<Hospital>(`${this.baseUrl}/UpdateHospital`, hospital);
  }
}
