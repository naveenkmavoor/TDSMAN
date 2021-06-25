import 'dart:convert';

import 'package:flutter/foundation.dart';
import '../../extensions/enum_extension.dart';

enum EmployeeCategory {
  General,
}

class EmployeeA {
  final String employeePan;
  final String employeeName;
  final EmployeeCategory category;
  final String employeeRefNum;
  final String designation;
  final String email;

  EmployeeA({
    required this.employeePan,
    required this.employeeName,
    required this.category,
    required this.employeeRefNum,
    required this.designation,
    required this.email,
  });

  EmployeeA copyWith({
    String? employeePan,
    String? employeeName,
    EmployeeCategory? category,
    String? employeeRefNum,
    String? designation,
    String? email,
  }) {
    return EmployeeA(
      employeePan: employeePan ?? this.employeePan,
      employeeName: employeeName ?? this.employeeName,
      category: category ?? this.category,
      employeeRefNum: employeeRefNum ?? this.employeeRefNum,
      designation: designation ?? this.designation,
      email: email ?? this.email,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'employeePan': employeePan,
      'employeeName': employeeName,
      'category': describeEnum(category),
      'employeeRefNum': employeeRefNum,
      'designation': designation,
      'email': email,
    };
  }

  factory EmployeeA.fromMap(Map<String, dynamic> map) {
    return EmployeeA(
      employeePan: map['employeePan'],
      employeeName: map['employeeName'],
      category: map['category']
          .toString()
          .toEnum<EmployeeCategory>(EmployeeCategory.values),
      employeeRefNum: map['employeeRefNum'],
      designation: map['designation'],
      email: map['email'],
    );
  }

  String toJson() => json.encode(toMap());

  factory EmployeeA.fromJson(String source) =>
      EmployeeA.fromMap(json.decode(source));

  @override
  String toString() {
    return 'EmployeeA(employeePan: $employeePan, employeeName: $employeeName, category: $category, employeeRefNum: $employeeRefNum, designation: $designation, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is EmployeeA &&
        other.employeePan == employeePan &&
        other.employeeRefNum == employeeRefNum;
  }

  @override
  int get hashCode {
    return employeePan.hashCode ^ employeeRefNum.hashCode;
  }
}
