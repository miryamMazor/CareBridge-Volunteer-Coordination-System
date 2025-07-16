import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { Status } from '../class/Status';

@Injectable({
  providedIn: 'root'
})
export class StatusService {

  private baseUrl: string = "http://localhost:5130/api/Status";

  constructor(private myHttp: HttpClient) { }

  // GET: api/Status/GettAll
  getAllStatuses(): Observable<Array<Status>> {
    return this.myHttp.get<Array<Status>>(`${this.baseUrl}/GettAll`);
  }
}
