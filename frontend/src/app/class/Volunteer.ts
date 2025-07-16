export class Volunteer {
    constructor(
      public id?: number,
      public name?: string,
      public tz?: string,
      public password?: string,
      public phone?: string,
      public gender?: string | null,
      public hospitalId?: number,
      public departmentId?: number,
      public StatusId?: number,
      public statusDesc?: string
    ) {}
  }
  