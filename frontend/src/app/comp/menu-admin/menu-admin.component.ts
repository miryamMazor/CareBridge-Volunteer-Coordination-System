import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';

@Component({
  selector: 'app-menu-admin',
  templateUrl: './menu-admin.component.html',
  styleUrls: ['./menu-admin.component.css']
})
export class MenuAdminComponent implements OnInit {
  selectedComponent: string = 'hospitals'; // Default to hospital management

  // Define admin users
  private adminUsers = [
    { name: 'מרים', lastName: 'מזור', tz: '214272577', phone: '0546251321', password: '121212' },
    { name: 'שרה', lastName: 'מלול', tz: '326059748', phone: '0556668330', password: '212121' }
  ];

  constructor(private router: Router) {}

  ngOnInit(): void {
    this.checkAdminAccess();
  }

  showComponent(component: string) {
    this.selectedComponent = component;
  }

  checkAdminAccess() {
    const userData = localStorage.getItem('admin');
    
    if (userData) {
      const loggedUser = JSON.parse(userData);

      // Check if the user is in the admin list
      const isAdmin = this.adminUsers.some(admin =>
        admin.tz === loggedUser.tz && admin.password === loggedUser.password
      );

      if (!isAdmin) {
        alert('אין לך גישה לדף זה.');
        this.router.navigate(['/login']); // Redirect unauthorized users
      }
    } else {
      alert('עליך להתחבר תחילה.');
      this.router.navigate(['/login']); // Redirect if no user is logged in
    }
  }
}
