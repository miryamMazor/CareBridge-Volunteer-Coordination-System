import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs/internal/Observable';
import { Apartment } from '../class/Apartment';
import { City } from '../class/City';

@Injectable({
  providedIn: 'root'
})
export class CityService {

  constructor(public myHttpCity: HttpClient) { }
  getAllCity () :  Observable<Array<City>>{
    return this.myHttpCity.get<Array<City>>("https://localhost:7000/api/City/getAll")
  }
}
