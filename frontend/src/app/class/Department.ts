export class Department {
    constructor(
      public id: number,
      public name: string,
      public build: string | null,
      public wing: string | null,
      public floorNum: number,
      public hospitalId: number
    ) {}
}
  