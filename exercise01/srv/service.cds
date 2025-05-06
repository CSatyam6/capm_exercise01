using { employee.travel as emp} from '../db/schema';

service employeeservice {

 entity Employee as projection on emp.Employee;   
 entity Travelrequest as projection on emp.Travelrequest;
 entity Managerapproval as projection on emp.Managerapproval
}   