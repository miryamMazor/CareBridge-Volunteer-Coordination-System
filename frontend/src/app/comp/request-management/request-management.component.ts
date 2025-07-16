import { Component, Inject } from '@angular/core';
import { MAT_DIALOG_DATA, MatDialogRef } from '@angular/material/dialog';

@Component({
  selector: 'app-request-management',
  templateUrl: './request-management.component.html',
  styleUrls: ['./request-management.component.css']
})
export class RequestManagementComponent {
  constructor(
    public dialogRef: MatDialogRef<RequestManagementComponent>,
    @Inject(MAT_DIALOG_DATA) public volunteer: any
  ) {}

  close(): void {
    this.dialogRef.close();
  }
}