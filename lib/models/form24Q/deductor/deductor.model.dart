import 'dart:convert';

import '../employee.model.dart';
import '../address.model.dart';
import '../contact.model.dart';
import '../document.model.dart';

// ignore_for_file: non_constant_identifier_names
class Deductor {
  final int id;
  final String name;
  final String pan;
  final String pan_holder_type;
  final Address address;
  final Contact contact;
  final String tan;
  final String deductor_type;
  final Employee responsiblePerson;
  final List<Document> supportingDocuments;

  Deductor({
    required this.id,
    required this.name,
    required this.pan,
    required this.pan_holder_type,
    required this.address,
    required this.contact,
    required this.tan,
    required this.deductor_type,
    required this.responsiblePerson,
    required this.supportingDocuments,
  });

  Deductor copyWith({
    int? id,
    String? name,
    String? pan,
    String? pan_holder_type,
    Address? address,
    Contact? contact,
    String? tan,
    String? deductor_type,
    Employee? responsiblePerson,
    List<Document>? supportingDocuments,
  }) {
    return Deductor(
      id: id ?? this.id,
      name: name ?? this.name,
      pan: pan ?? this.pan,
      pan_holder_type: pan_holder_type ?? this.pan_holder_type,
      address: address ?? this.address,
      contact: contact ?? this.contact,
      tan: tan ?? this.tan,
      deductor_type: deductor_type ?? this.deductor_type,
      responsiblePerson: responsiblePerson ?? this.responsiblePerson,
      supportingDocuments: supportingDocuments ?? this.supportingDocuments,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      '@entity': "deductor",
      'id': id,
      'name': name,
      'pan': pan,
      'pan_holder_type': pan_holder_type,
      'address': address.toMap(),
      'contact': contact.toMap(),
      'tan': tan,
      'deductor_type': deductor_type,
      'responsiblePerson': responsiblePerson.toMap(),
      'supportingDocuments': supportingDocuments.map((x) => x.toMap()).toList(),
    };
  }

  factory Deductor.fromMap(Map<String, dynamic> map) {
    return Deductor(
      id: map['id'],
      name: map['name'],
      pan: map['pan'],
      pan_holder_type: map['pan_holder_type'],
      address: Address.fromMap(map['address']),
      contact: Contact.fromMap(map['contact']),
      tan: map['tan'],
      deductor_type: map['deductor_type'],
      responsiblePerson: Employee.fromMap(map['responsiblePerson']),
      supportingDocuments: List<Document>.from(
          map['supportingDocuments']?.map((x) => Document.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory Deductor.fromJson(String source) =>
      Deductor.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Deductor(id: $id, name: $name, pan: $pan, pan_holder_type: $pan_holder_type, address: $address, contact: $contact, tan: $tan, deductor_type: $deductor_type, responsiblePerson: $responsiblePerson, supportingDocuments: $supportingDocuments)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Deductor && other.id == id;
  }

  @override
  int get hashCode {
    return id.hashCode;
  }
}
