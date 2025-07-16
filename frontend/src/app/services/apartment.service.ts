import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs/internal/Observable';
import { Apartment } from '../class/Apartment';

@Injectable({
  providedIn: 'root'
})
export class ApartmentService {

  constructor(public myHttp:HttpClient) { }

  
  getAllgetAll () :  Observable<Array<Apartment>>{
    return this.myHttp.get<Array<Apartment>>("https://localhost:7055/api/Apartment/MyGetAllApartment")
  }
  
}
