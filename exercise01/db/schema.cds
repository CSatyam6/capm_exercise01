namespace employee.travel;
using{ cuid, managed} from '@sap/cds/common';
type commontype : String(50);
type suggestion : String(10);
entity Employee: cuid, managed{
key name: commontype @title : 'Name';
    address: commontype @title : 'Address';
    department: commontype;
    email: commontype;
request : Association to many Travelrequest on request.employee=$self;
}

entity Travelrequest: cuid{
    destination: commontype;
    startdate: Date;
    Enddate: Date;
    Reason: commontype;
    Status: suggestion;
    employee: Association to Employee;
    maapproval: Association to Managerapproval;

}

entity Managerapproval :cuid{ 
    key name: commontype;
        decision: localized suggestion;
        comment: commontype;
}