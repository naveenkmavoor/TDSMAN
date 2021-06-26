import 'dart:convert';

import 'package:tdsman_windows_app/models/form24Q/address.model.dart';

import '../contact.model.dart';

// ignore_for_file: non_constant_identifier_names
class Deductee {
  final int id;
  final String pan;
  final String pan_holder_type;
  final Address address;
  final Contact contact;
  final String residential_status;
  final String full_name;
  final String deductee_type;

  Deductee({
    required this.id,
    required this.pan,
    required this.pan_holder_type,
    required this.address,
    required this.contact,
    required this.residential_status,
    required this.full_name,
    required this.deductee_type,
  });

  Deductee copyWith({
    int? id,
    String? pan,
    String? pan_holder_type,
    Address? address,
    Contact? contact,
    String? residential_status,
    String? full_name,
    String? deductee_type,
  }) {
    return Deductee(
      id: id ?? this.id,
      pan: pan ?? this.pan,
      pan_holder_type: pan_holder_type ?? this.pan_holder_type,
      address: address ?? this.address,
      contact: contact ?? this.contact,
      residential_status: residential_status ?? this.residential_status,
      full_name: full_name ?? this.full_name,
      deductee_type: deductee_type ?? this.deductee_type,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      '@entity': "deductee",
      'id': id,
      'pan': pan,
      'pan_holder_type': pan_holder_type,
      'address': address.toMap(),
      'contact': contact.toMap(),
      'residential_status': residential_status,
      'full_name': full_name,
      'deductee_type': deductee_type,
    };
  }

  factory Deductee.fromMap(Map<String, dynamic> map) {
    return Deductee(
      id: map['id'],
      pan: map['pan'],
      pan_holder_type: map['pan_holder_type'],
      address: Address.fromMap(map['address']),
      contact: Contact.fromMap(map['contact']),
      residential_status: map['residential_status'],
      full_name: map['full_name'],
      deductee_type: map['deductee_type'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Deductee.fromJson(String source) =>
      Deductee.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Deductee(id: $id, pan: $pan, pan_holder_type: $pan_holder_type, address: $address, contact: $contact, residential_status: $residential_status, full_name: $full_name, deductee_type: $deductee_type)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Deductee && other.id == id;
  }

  @override
  int get hashCode {
    return id.hashCode;
  }
}
