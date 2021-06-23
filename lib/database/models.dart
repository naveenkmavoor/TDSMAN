import 'dart:async';

class Company {
  String id, name, tanNo, panNo, deductorType, responsiblePerson, gstin, block;
  Company(this.id, this.name, this.tanNo, this.panNo, this.deductorType,
      this.responsiblePerson, this.gstin, this.block);

  factory Company.fromCompanyId(String id) {
    //Implement Code to read data from database and return newly created object
    return Company.fromJson({});
  }

  factory Company.fromJson(Map json) {
    //The keys in json object may vary accroding to fetched data
    return Company(
        json['id'],
        json['name'],
        json['tanNo'],
        json['panNo'],
        json['deductorType'],
        json['responsiblePerson'],
        json['gstin'],
        json['block']);
  }

  Future<int> save({String companyId = ""}) async {
    /*
      1. companyId is an optional parameter
      2. when it is empty, save object as a new record
      3. when it is non-empty, check if a record with same id is present, 
         => If Yes : modify all columns with new values
         => If No : insert as a new record
      return 1 if sucessfull, or else 0
      return values may vary according to error handlers
      currently implemented for success(1) or fail(0)
    */
    return 1;
  }

  Future<bool> setName(String name) async {
    //Implement code to update name in data base;
    this.name = name;
    return true; //false if failed
  }

  Future<bool> setTanNo(String tanNo) async {
    //Implement code to update tan no in data base;
    this.tanNo = tanNo;
    return true; //false if failed
  }

  Future<bool> setPanNo(String panNo) async {
    //Implement code to update pan no in data base;
    this.panNo = panNo;
    return true; //false if failed
  }

  Future<bool> setDeductorType(String deductorType) async {
    //Implement code to update deductor Type in data base;
    this.deductorType = deductorType;
    return true; //false if failed
  }

  Future<bool> setResponsiblePersonName(String name) async {
    //Implement code to update Responsible Person Name in data base;
    this.responsiblePerson = name;
    return true; //false if failed
  }

  Future<bool> setGSTIN(String gstin) async {
    //Implement code to update gstin in data base;
    this.gstin = gstin;
    return true; //false if failed
  }

  Future<bool> setBlock(String block) async {
    //Implement code to update block in data base;
    this.block = block;
    return true; //false if failed
  }
}

class Employee {
  String id, name, pan, category, refNo, designation, email;
  Employee(this.id, this.name, this.pan, this.category, this.refNo,
      this.designation, this.email);

  factory Employee.fromJson(Map json) {
    //The keys in json object may vary accroding to fetched data
    return Employee(json['id'], json['name'], json['pan'], json['category'],
        json['refNo'], json['designation'], json['email']);
  }

  factory Employee.fromEmployeeId(String empId) {
    //Implement Code to read data from database and return newly created object
    return Employee.fromJson({});
  }

  Future<int> save({String employeeId = ""}) async {
    //Functionalities same as Company
    return 1;
  }

  Future<bool> setName(String name) async {
    //Implement code to update in database
    this.name = name;
    return true;
  }

  Future<bool> setPan(String pan) async {
    //Implement code to update in database
    this.pan = pan;
    return true;
  }

  Future<bool> setCategory(String category) async {
    //Implement code to update in database
    this.category = category;
    return true;
  }

  Future<bool> setRefNo(String refNo) async {
    //Implement code to update in database
    this.refNo = refNo;
    return true;
  }

  Future<bool> setDesignation(String designation) async {
    //Implement code to update in database
    this.designation = designation;
    return true;
  }

  Future<bool> setEmail(String email) async {
    //Implement code to update in database
    this.email = email;
    return true;
  }
}
