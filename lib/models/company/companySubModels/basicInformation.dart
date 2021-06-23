import 'dart:convert';

import 'package:flutter/foundation.dart';
import '../../../extensions/enum_extension.dart';

enum DeductorType { d }

class BasicInformation {
  final String companyName;
  final String tanNo;
  final String panNo;
  final String branch;
  final DeductorType deductorType;
  final String? gstN;
  final String? tanReg;

  BasicInformation({
    required this.companyName,
    required this.tanNo,
    required this.panNo,
    required this.branch,
    required this.deductorType,
    this.gstN,
    this.tanReg,
  });

  BasicInformation copyWith({
    String? companyName,
    String? tanNo,
    String? panNo,
    String? branch,
    DeductorType? deductorType,
    String? gstN,
    String? tanReg,
  }) {
    return BasicInformation(
      companyName: companyName ?? this.companyName,
      tanNo: tanNo ?? this.tanNo,
      panNo: panNo ?? this.panNo,
      branch: branch ?? this.branch,
      deductorType: deductorType ?? this.deductorType,
      gstN: gstN ?? this.gstN,
      tanReg: tanReg ?? this.tanReg,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'companyName': companyName,
      'tanNo': tanNo,
      'panNo': panNo,
      'branch': branch,
      'deductorType': describeEnum(deductorType),
      'gstN': gstN,
      'tanReg': tanReg,
    };
  }

  factory BasicInformation.fromMap(Map<String, dynamic> map) {
    return BasicInformation(
      companyName: map['companyName'],
      tanNo: map['tanNo'],
      panNo: map['panNo'],
      branch: map['branch'],
      deductorType: map['deductorType']
          .toString()
          .toEnum<DeductorType>(DeductorType.values),
      gstN: map['gstN'],
      tanReg: map['tanReg'],
    );
  }

  String toJson() => json.encode(toMap());

  factory BasicInformation.fromJson(String source) =>
      BasicInformation.fromMap(json.decode(source));

  @override
  String toString() {
    return 'BasicInformation(companyName: $companyName, tanNo: $tanNo, panNo: $panNo, branch: $branch, deductorType: $deductorType, gstN: $gstN, tanReg: $tanReg)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is BasicInformation &&
        other.companyName == companyName &&
        other.tanNo == tanNo &&
        other.panNo == panNo &&
        other.branch == branch &&
        other.deductorType == deductorType &&
        other.gstN == gstN &&
        other.tanReg == tanReg;
  }

  @override
  int get hashCode {
    return companyName.hashCode ^
        tanNo.hashCode ^
        panNo.hashCode ^
        branch.hashCode ^
        deductorType.hashCode ^
        gstN.hashCode ^
        tanReg.hashCode;
  }
}
