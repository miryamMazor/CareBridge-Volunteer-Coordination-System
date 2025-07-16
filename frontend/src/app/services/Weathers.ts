import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';

export interface WeatherForecast {
  date: string;
  temperatureC: number;
  summary: string;
}

@Injectable({
  providedIn: 'root'
})
export class WeatherForecastService {

  private baseUrl: string = "https://localhost:7055";

  constructor(private myHttp: HttpClient) { }

  // GET: /WeatherForecast
  getWeatherForecast(): Observable<Array<WeatherForecast>> {
    return this.myHttp.get<Array<WeatherForecast>>(`${this.baseUrl}/WeatherForecast`);
  }
}
