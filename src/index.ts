import { Group } from "sysObjects";
import { User } from "sysObjects";
const a1 = new User("Admin1");
const a2 = new User("Admin2");
const admins = new Group("Admins");
a1.setMemberOf(admins);

console.log(`${admins}`);
console.log(`${a1}`);
console.log(`${a2}`);
