import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { Volunteer } from '../class/Volunteer';

@Injectable({
  providedIn: 'root'
})
export class VolunteerService {

  public baseUrl: string = "http://localhost:5130/api/Volunteers";
  userA:Volunteer=new Volunteer();
 userId:number|undefined=0
  constructor(public myHttp: HttpClient) { }

  // GET: api/Volunteers/GetAllVolunteers
  getAllVolunteers(): Observable<Array<Volunteer>> {
    return this.myHttp.get<Array<Volunteer>>(`http://localhost:5130/api/Volunteers/GetAllVolunteers`);
  }

  // POST: api/Volunteers/AddVolunteer
  addVolunteer(volunteer: Volunteer): Observable<Volunteer> {
    console.log(volunteer);

    return this.myHttp.post<Volunteer>(`${this.baseUrl}/AddVolunteer`, volunteer);
    
  }

  // GET: api/Volunteers/GetById/{id}/{pass}
   getById(id: string, pass: string): Observable<Volunteer> {
    return this.myHttp.get<Volunteer>(`${this.baseUrl}/GetById/${id}/${pass}`);
   
   }
  
   getById2(id: number, pass: string): Observable<Volunteer> {
    debugger
     const s2= this.myHttp.get<Volunteer>(`${this.baseUrl}/GetById/326059748/123456`);
    console.log(s2);
    return s2
    
    }
  // PUT: api/Volunteers/UpdateStatus/{idVal}/{idStatus}
  updateStatus(idVal: string, idStatus: number): Observable<boolean> {
    return this.myHttp.put<boolean>(`${this.baseUrl}/UpdateStatus/${idVal}/${idStatus}`, {});
  }
}
