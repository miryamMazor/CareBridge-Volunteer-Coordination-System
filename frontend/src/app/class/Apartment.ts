import { City } from "./City";

export class Apartment{
    constructor(
        public idApartment :number,
        public address: string,
        public price:number,
        public pic:string,
        public city :City){}
}
