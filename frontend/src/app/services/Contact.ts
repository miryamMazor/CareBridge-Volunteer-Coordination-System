import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { Contacts } from '../class/Contacts';
import { Patient } from '../class/Patient';

@Injectable({
  providedIn: 'root'
})
export class ContactService {

  private baseUrl: string = "http://localhost:5130/api/Contact";

  constructor(private myHttp: HttpClient) { }

  // GET: api/Contact/GetAll
  getAll(): Observable<Array<Contacts>> {
    return this.myHttp.get<Array<Contacts>>(`${this.baseUrl}/GetAll`);
  }

  // GET: api/Contact/sendSms/{phon}/{desc}
  sendSms(phon: string, desc: string): Observable<boolean> {
    return this.myHttp.get<boolean>(`${this.baseUrl}/sendSms/${phon}/${desc}`);
  }

  updateContact(phon: string, desc: number): Observable<boolean> {
    return this.myHttp.get<boolean>(`${this.baseUrl}/sendSms/${phon}/${desc}`);
  }

  // POST: api/Contact/AddContact
  addContact(p: Patient, desc: string): Observable<Contacts> {
    const options = {
      params: { desc }
    };
    return this.myHttp.post<Contacts>(`${this.baseUrl}/AddContact`, p, options);
  }
}
