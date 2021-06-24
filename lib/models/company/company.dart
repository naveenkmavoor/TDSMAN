import 'dart:convert';

import 'package:tdsman_windows_app/models/company/companySubModels/basicInformation.dart';
import 'package:tdsman_windows_app/models/company/companySubModels/companyDetails.dart';
import 'package:tdsman_windows_app/models/company/companySubModels/responsiblePersonDetails.dart';

import 'companySubModels/citDetails.dart';
import 'companySubModels/forGovtDeductors.dart';

class Company {
  final String id;
  final BasicInformation basicInformation;
  final CompanyDetails companyDetails;
  final ResponsiblePersonDetails responsiblePersonDetails;
  final ForGovtDeductors forGovtDeductors;
  final CITDetails ciTdetails;

  Company({
    required this.id,
    required this.basicInformation,
    required this.companyDetails,
    required this.responsiblePersonDetails,
    required this.forGovtDeductors,
    required this.ciTdetails,
  });

  Company copyWith({
    required String id,
    BasicInformation? basicInformation,
    CompanyDetails? companyDetails,
    ResponsiblePersonDetails? responsiblePersonDetails,
    ForGovtDeductors? forGovtDeductors,
    CITDetails? ciTdetails,
  }) {
    return Company(
      id: id,
      basicInformation: basicInformation ?? this.basicInformation,
      companyDetails: companyDetails ?? this.companyDetails,
      responsiblePersonDetails:
          responsiblePersonDetails ?? this.responsiblePersonDetails,
      forGovtDeductors: forGovtDeductors ?? this.forGovtDeductors,
      ciTdetails: ciTdetails ?? this.ciTdetails,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'basicInformation': basicInformation.toMap(),
      'companyDetails': companyDetails.toMap(),
      'responsiblePersonDetails': responsiblePersonDetails.toMap(),
      'forGovtDeductors': forGovtDeductors.toMap(),
      'ciTdetails': ciTdetails.toMap(),
    };
  }

  factory Company.fromMap(Map<String, dynamic> map) {
    return Company(
      id: map['id'],
      basicInformation: BasicInformation.fromMap(map['basicInformation']),
      companyDetails: CompanyDetails.fromMap(map['companyDetails']),
      responsiblePersonDetails:
          ResponsiblePersonDetails.fromMap(map['responsiblePersonDetails']),
      forGovtDeductors: ForGovtDeductors.fromMap(map['forGovtDeductors']),
      ciTdetails: CITDetails.fromMap(map['ciTdetails']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Company.fromJson(String source) =>
      Company.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Company(basicInformation: $basicInformation, companyDetails: $companyDetails, responsiblePersonDetails: $responsiblePersonDetails, forGovtDeductors: $forGovtDeductors, ciTdetails: $ciTdetails)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Company && other.id == id;
  }

  @override
  int get hashCode {
    return id.hashCode;
  }
}
