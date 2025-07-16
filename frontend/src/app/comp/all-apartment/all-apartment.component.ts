import { Component, OnInit } from '@angular/core';
import { Apartment } from 'src/app/class/Apartment';
import { City } from 'src/app/class/City';
import { ApartmentService } from 'src/app/services/apartment.service';
import { CityService } from 'src/app/services/city.service';

@Component({
  selector: 'app-all-apartment',
  templateUrl: './all-apartment.component.html',
  styleUrls: ['./all-apartment.component.css']
})
export class AllApartmentComponent {}
// implements OnInit{
  
//   ArrayCity: Array<City> = new Array<City>()
//   ArrayApartment:Array<Apartment>=new Array<Apartment>()
//   constructor (public cf: CityService, public fs:ApartmentService){}
//   ngOnInit(): void {
//     this.cf.getAllCity().subscribe(
//       succ=>{
//         console.log(succ);
//         this.ArrayCity=succ;
//         debugger
//       }
     
//     )
//   }
  
// }
