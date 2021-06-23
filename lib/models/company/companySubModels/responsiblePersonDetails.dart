import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:tdsman_windows_app/models/company/companySubModels/phoneNumber.dart';
import '../../../extensions/enum_extension.dart';
import 'states_enum.dart';

enum DetailsType { Same, Different }

class ResponsiblePersonDetails {
  final DetailsType detailsType;
  final String blckNum;
  final String building;
  final String lane;
  final String area;
  final String locality;
  final String district;
  final int pin;
  final States state;
  final PhoneNumber phoneNumber;
  final PhoneNumber altPhoneNumber;
  final String email;
  final String altEmail;

  ResponsiblePersonDetails({
    required this.detailsType,
    required this.blckNum,
    required this.building,
    required this.lane,
    required this.area,
    required this.locality,
    required this.district,
    required this.pin,
    required this.state,
    required this.phoneNumber,
    required this.altPhoneNumber,
    required this.email,
    required this.altEmail,
  });

  ResponsiblePersonDetails copyWith({
    DetailsType? detailsType,
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
    return ResponsiblePersonDetails(
      detailsType: detailsType ?? this.detailsType,
      blckNum: blckNum ?? this.blckNum,
      building: building ?? this.building,
      lane: lane ?? this.lane,
      area: area ?? this.area,
      locality: locality ?? this.locality,
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
      'detailsType': describeEnum(detailsType),
      'blckNum': blckNum,
      'building': building,
      'lane': lane,
      'area': area,
      'locality': locality,
      'district': district,
      'pin': pin,
      'state': describeEnum(state),
      'phoneNumber': phoneNumber.toMap(),
      'altPhoneNumber': altPhoneNumber.toMap(),
      'email': email,
      'altEmail': altEmail,
    };
  }

  factory ResponsiblePersonDetails.fromMap(Map<String, dynamic> map) {
    return ResponsiblePersonDetails(
      detailsType:
          map['detailsType'].toString().toEnum<DetailsType>(DetailsType.values),
      blckNum: map['blckNum'],
      building: map['building'],
      lane: map['lane'],
      area: map['area'],
      locality: map['locality'],
      district: map['district'],
      pin: map['pin'],
      state: map['state'].toString().toEnum<States>(States.values),
      phoneNumber: PhoneNumber.fromMap(map['phoneNumber']),
      altPhoneNumber: PhoneNumber.fromMap(map['altPhoneNumber']),
      email: map['email'],
      altEmail: map['altEmail'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ResponsiblePersonDetails.fromJson(String source) =>
      ResponsiblePersonDetails.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ResponsiblePersonDetails(detailsType: $detailsType, blckNum: $blckNum, building: $building, lane: $lane, area: $area, locality: $locality, district: $district, pin: $pin, state: $state, phoneNumber: $phoneNumber, altPhoneNumber: $altPhoneNumber, email: $email, altEmail: $altEmail)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ResponsiblePersonDetails &&
        other.detailsType == detailsType &&
        other.blckNum == blckNum &&
        other.building == building &&
        other.lane == lane &&
        other.area == area &&
        other.locality == locality &&
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
    return detailsType.hashCode ^
        blckNum.hashCode ^
        building.hashCode ^
        lane.hashCode ^
        area.hashCode ^
        locality.hashCode ^
        district.hashCode ^
        pin.hashCode ^
        state.hashCode ^
        phoneNumber.hashCode ^
        altPhoneNumber.hashCode ^
        email.hashCode ^
        altEmail.hashCode;
  }
}
