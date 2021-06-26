import 'dart:convert';

import 'package:tdsman_windows_app/models/form24Q/address.model.dart';
import 'package:tdsman_windows_app/models/form24Q/contact.model.dart';
import 'package:tdsman_windows_app/models/form24Q/employee.model.dart';

// ignore_for_file: non_constant_identifier_names
class Employer {
  final int id;
  final String name;
  final String pan;
  final Address address;
  final Contact contact;
  final String residential_status;
  final String tan;
  final Employee responsible_person;
  final String category;

  Employer({
    required this.id,
    required this.name,
    required this.pan,
    required this.address,
    required this.contact,
    required this.residential_status,
    required this.tan,
    required this.responsible_person,
    required this.category,
  });

  Employer copyWith({
    int? id,
    String? name,
    String? pan,
    Address? address,
    Contact? contact,
    String? residential_status,
    String? tan,
    Employee? responsible_person,
    String? category,
  }) {
    return Employer(
      id: id ?? this.id,
      name: name ?? this.name,
      pan: pan ?? this.pan,
      address: address ?? this.address,
      contact: contact ?? this.contact,
      residential_status: residential_status ?? this.residential_status,
      tan: tan ?? this.tan,
      responsible_person: responsible_person ?? this.responsible_person,
      category: category ?? this.category,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "@entity": "employer",
      'id': id,
      'name': name,
      'pan': pan,
      'address': address.toMap(),
      'contact': contact.toMap(),
      'residential_status': residential_status,
      'tan': tan,
      'responsible_person': responsible_person.toMap(),
      'category': category,
    };
  }

  factory Employer.fromMap(Map<String, dynamic> map) {
    return Employer(
      id: map['id'],
      name: map['name'],
      pan: map['pan'],
      address: Address.fromMap(map['address']),
      contact: Contact.fromMap(map['contact']),
      residential_status: map['residential_status'],
      tan: map['tan'],
      responsible_person: Employee.fromMap(map['responsible_person']),
      category: map['category'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Employer.fromJson(String source) =>
      Employer.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Employer(id: $id, name: $name, pan: $pan, address: $address, contact: $contact, residential_status: $residential_status, tan: $tan, responsible_person: $responsible_person, category: $category)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Employer && other.id == id;
  }

  @override
  int get hashCode {
    return id.hashCode;
  }
}
