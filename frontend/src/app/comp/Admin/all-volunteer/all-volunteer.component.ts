import { Component, OnInit } from '@angular/core';
import { Volunteer } from 'src/app/class/Volunteer';
import { VolunteerService } from 'src/app/services/Valunteers';

@Component({
  selector: 'app-all-volunteer',
  templateUrl: './all-volunteer.component.html',
  styleUrls: ['./all-volunteer.component.css']
})
export class AllVolunteerComponent implements OnInit {
  volunteers: Volunteer[] = [];
  filteredVolunteers: Volunteer[] = [];
  searchTerm: string = '';

  constructor(public volunteerService: VolunteerService) {}

  ngOnInit(): void {
    this.loadVolunteers();
  }

  loadVolunteers(): void {
    this.volunteerService.getAllVolunteers().subscribe(
      (data) => {
        this.volunteers = data.map(v => ({
          id: v.id,
          name: v.name,
          phone: v.phone!,
          tz: v.tz
        }));
        this.filteredVolunteers = this.volunteers; // ברירת מחדל - להציג את כולם
      },
      (error) => console.error('שגיאה בטעינת מתנדבים', error)
    );
  }

  filterVolunteers(): void {
    const term = this.searchTerm.toLowerCase();
    this.filteredVolunteers = this.volunteers.filter(volunteer =>
      volunteer.name!.toLowerCase().includes(term) ||
      volunteer.phone!.includes(term) ||
      volunteer.tz!.includes(term)
    );
  }
}
