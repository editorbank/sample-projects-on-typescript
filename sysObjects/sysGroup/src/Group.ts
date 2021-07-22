export class Group {
    name!: string;
    constructor(name: string){
        this.name = name;
    }
    toString = ():string => `Group name: ${this.name}.`;
}