export class Patient {
  constructor(
    public id?: number,
    public name?: string,
    public tz?: string,
    public phone?: string,
    public gender?: string | null,
    public hospitalId?: number,
    public departmentId?: number,
    public password?: string,
    public roomNumber?: number,
    public birthDate?: Date

  ) {}
}
