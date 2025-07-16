export class Contacts {
    constructor(
      public id: number,
      public description: string | null,
      public patientId: number,
      public date: Date,
      public statusId: number,
      public volunteerId: number 
    ) {}
  }
  