import { Group } from "sysGroup";

export class User {
	static typeOfClass = "User";
	private groups: Group[];
	private name: string;
	public toString(): string {
		return "User: "+this.name+" member of groups ["+this.groups.map(g=>g.name).join(",")+"].";
	}
	constructor(name: string){
		this.name=name;
		this.groups=[];
	}
	setMemberOf(group: Group){
		if(this.groups.indexOf(group)<0)
			this.groups.push(group);
	}
}