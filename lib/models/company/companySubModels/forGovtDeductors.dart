import 'dart:convert';

import 'package:flutter/foundation.dart';
import '../../../extensions/enum_extension.dart';
import 'states_enum.dart';

enum Ministry {
  HomeMinister,
}

class ForGovtDeductors {
  final String paoCode;
  final String paoRegNum;
  final String ddoRegNum;
  final States state;
  final Ministry selectMinistry;
  final Ministry otherMinistry;
  final String accountOfficeIdentificationNumber;

  ForGovtDeductors({
    required this.paoCode,
    required this.paoRegNum,
    required this.ddoRegNum,
    required this.state,
    required this.selectMinistry,
    required this.otherMinistry,
    required this.accountOfficeIdentificationNumber,
  });

  ForGovtDeductors copyWith({
    String? paoCode,
    String? paoRegNum,
    String? ddoRegNum,
    States? state,
    Ministry? selectMinistry,
    Ministry? otherMinistry,
    String? accountOfficeIdentificationNumber,
  }) {
    return ForGovtDeductors(
      paoCode: paoCode ?? this.paoCode,
      paoRegNum: paoRegNum ?? this.paoRegNum,
      ddoRegNum: ddoRegNum ?? this.ddoRegNum,
      state: state ?? this.state,
      selectMinistry: selectMinistry ?? this.selectMinistry,
      otherMinistry: otherMinistry ?? this.otherMinistry,
      accountOfficeIdentificationNumber: accountOfficeIdentificationNumber ??
          this.accountOfficeIdentificationNumber,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'paoCode': paoCode,
      'paoRegNum': paoRegNum,
      'ddoRegNum': ddoRegNum,
      'state': describeEnum(state),
      'selectMinistry': describeEnum(selectMinistry),
      'otherMinistry': describeEnum(otherMinistry),
      'accountOfficeIdentificationNumber': accountOfficeIdentificationNumber,
    };
  }

  factory ForGovtDeductors.fromMap(Map<String, dynamic> map) {
    return ForGovtDeductors(
      paoCode: map['paoCode'],
      paoRegNum: map['paoRegNum'],
      ddoRegNum: map['ddoRegNum'],
      state: map['state'].toString().toEnum<States>(States.values),
      selectMinistry:
          map['selectMinistry'].toString().toEnum<Ministry>(Ministry.values),
      otherMinistry:
          map['otherMinistry'].toString().toEnum<Ministry>(Ministry.values),
      accountOfficeIdentificationNumber:
          map['accountOfficeIdentificationNumber'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ForGovtDeductors.fromJson(String source) =>
      ForGovtDeductors.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ForGovtDeductors(paoCode: $paoCode, paoRegNum: $paoRegNum, ddoRegNum: $ddoRegNum, state: $state, selectMinistry: $selectMinistry, otherMinistry: $otherMinistry, accountOfficeIdentificationNumber: $accountOfficeIdentificationNumber)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ForGovtDeductors &&
        other.paoCode == paoCode &&
        other.paoRegNum == paoRegNum &&
        other.ddoRegNum == ddoRegNum &&
        other.state == state &&
        other.selectMinistry == selectMinistry &&
        other.otherMinistry == otherMinistry &&
        other.accountOfficeIdentificationNumber ==
            accountOfficeIdentificationNumber;
  }

  @override
  int get hashCode {
    return paoCode.hashCode ^
        paoRegNum.hashCode ^
        ddoRegNum.hashCode ^
        state.hashCode ^
        selectMinistry.hashCode ^
        otherMinistry.hashCode ^
        accountOfficeIdentificationNumber.hashCode;
  }
}
