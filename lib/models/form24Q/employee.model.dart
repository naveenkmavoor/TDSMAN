import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'address.model.dart';
import 'contact.model.dart';

// ignore_for_file: non_constant_identifier_names
class Employee {
  final int id;
  final String name;
  final String pan;
  final String pan_holder_type;
  final Address address;
  final Contact contact;
  final List documents;
  final String designation;

  Employee({
    required this.id,
    required this.name,
    required this.pan,
    required this.pan_holder_type,
    required this.address,
    required this.contact,
    required this.documents,
    required this.designation,
  });

  Employee copyWith({
    int? id,
    String? name,
    String? pan,
    String? pan_holder_type,
    Address? address,
    Contact? contact,
    List? documents,
    String? designation,
  }) {
    return Employee(
      id: id ?? this.id,
      name: name ?? this.name,
      pan: pan ?? this.pan,
      pan_holder_type: pan_holder_type ?? this.pan_holder_type,
      address: address ?? this.address,
      contact: contact ?? this.contact,
      documents: documents ?? this.documents,
      designation: designation ?? this.designation,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      '@entity': "employee",
      'id': id,
      'name': name,
      'pan': pan,
      'pan_holder_type': pan_holder_type,
      'address': address.toMap(),
      'contact': contact.toMap(),
      'documents': documents,
      'designation': designation,
    };
  }

  factory Employee.fromMap(Map<String, dynamic> map) {
    return Employee(
      id: map['id'],
      name: map['name'],
      pan: map['pan'],
      pan_holder_type: map['pan_holder_type'],
      address: Address.fromMap(map['address']),
      contact: Contact.fromMap(map['contact']),
      documents: List.from(map['documents']),
      designation: map['designation'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Employee.fromJson(String source) =>
      Employee.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Employee(id: $id, name: $name, pan: $pan, pan_holder_type: $pan_holder_type, address: $address, contact: $contact, documents: $documents, designation: $designation)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Employee &&
        other.id == id &&
        other.name == name &&
        other.pan == pan &&
        other.pan_holder_type == pan_holder_type &&
        other.address == address &&
        other.contact == contact &&
        listEquals(other.documents, documents) &&
        other.designation == designation;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        pan.hashCode ^
        pan_holder_type.hashCode ^
        address.hashCode ^
        contact.hashCode ^
        documents.hashCode ^
        designation.hashCode;
  }
}
