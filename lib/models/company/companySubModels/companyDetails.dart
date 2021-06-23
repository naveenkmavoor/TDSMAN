import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:tdsman_windows_app/models/company/companySubModels/phoneNumber.dart';
import '../../../extensions/enum_extension.dart';
import 'states_enum.dart';

class CompanyDetails {
  final String blckNum;
  final String? building;
  final String? lane;
  final String? area;
  final String? district;
  final int pin;
  final States state;
  final PhoneNumber? phoneNumber;
  final PhoneNumber? altPhoneNumber;
  final String? email;
  final String? altEmail;

  CompanyDetails({
    required this.blckNum,
    this.building,
    this.lane,
    this.area,
    this.district,
    required this.pin,
    required this.state,
    this.phoneNumber,
    this.altPhoneNumber,
    this.email,
    this.altEmail,
  });

  CompanyDetails copyWith({
    String? blckNum,
    String? building,
    String? lane,
    String? area,
    String? locality,
    String? district,
    int? pin,
    States? state,
    PhoneNumber? phoneNumber,
    PhoneNumber? altPhoneNumber,
    String? email,
    String? altEmail,
  }) {
    return CompanyDetails(
      blckNum: blckNum ?? this.blckNum,
      building: building ?? this.building,
      lane: lane ?? this.lane,
      area: area ?? this.area,
      district: district ?? this.district,
      pin: pin ?? this.pin,
      state: state ?? this.state,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      altPhoneNumber: altPhoneNumber ?? this.altPhoneNumber,
      email: email ?? this.email,
      altEmail: altEmail ?? this.altEmail,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'blckNum': blckNum,
      'building': building,
      'lane': lane,
      'area': area,
      'district': district,
      'pin': pin,
      'state': describeEnum(state),
      'phoneNumber': phoneNumber?.toMap(),
      'altPhoneNumber': altPhoneNumber?.toMap(),
      'email': email,
      'altEmail': altEmail,
    };
  }

  factory CompanyDetails.fromMap(Map<String, dynamic> map) {
    return CompanyDetails(
      blckNum: map['blckNum'],
      building: map['building'],
      lane: map['lane'],
      area: map['area'],
      district: map['district'],
      pin: map['pin'],
      state: map['state'].toString().toEnum<States>(States.values),
      phoneNumber: map['phoneNumber'] != null
          ? PhoneNumber.fromMap(map['phoneNumber'])
          : null,
      altPhoneNumber: map['altPhoneNumber'] != null
          ? PhoneNumber.fromMap(map['altPhoneNumber'])
          : null,
      email: map['email'],
      altEmail: map['altEmail'],
    );
  }

  String toJson() => json.encode(toMap());

  factory CompanyDetails.fromJson(String source) =>
      CompanyDetails.fromMap(json.decode(source));

  @override
  String toString() {
    return 'CompanyDetails(blckNum: $blckNum, building: $building, lane: $lane, area: $area,  district: $district, pin: $pin, state: $state, phoneNumber: $phoneNumber, altPhoneNumber: $altPhoneNumber, email: $email, altEmail: $altEmail)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CompanyDetails &&
        other.blckNum == blckNum &&
        other.building == building &&
        other.lane == lane &&
        other.area == area &&
        other.district == district &&
        other.pin == pin &&
        other.state == state &&
        other.phoneNumber == phoneNumber &&
        other.altPhoneNumber == altPhoneNumber &&
        other.email == email &&
        other.altEmail == altEmail;
  }

  @override
  int get hashCode {
    return blckNum.hashCode ^
        building.hashCode ^
        lane.hashCode ^
        area.hashCode ^
        district.hashCode ^
        pin.hashCode ^
        state.hashCode ^
        phoneNumber.hashCode ^
        altPhoneNumber.hashCode ^
        email.hashCode ^
        altEmail.hashCode;
  }
}
