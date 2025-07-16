import { Component } from '@angular/core';
import { Hospital } from 'src/app/class/Hospitals';
import { HospitalService } from 'src/app/services/Hospital';

@Component({
  selector: 'app-hospital-add',
  templateUrl: './hospital-add.component.html',
  styleUrls: ['./hospital-add.component.css']
})
export class HospitalAddComponent {
  hospital: Hospital = { id: 0, name: '', manager: '', tz: '', password: '', phone: '' };

  constructor(private hospitalService: HospitalService) {}

  addHospital(): void {
    this.hospitalService.addHospital(this.hospital).subscribe(() => {
      this.hospital = { id: 0, name: '', manager: '', tz: '', password: '', phone: '' }; // איפוס השדות
    });
  }
}
