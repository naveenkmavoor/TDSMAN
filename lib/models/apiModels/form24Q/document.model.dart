import 'dart:convert';

// ignore_for_file: non_constant_identifier_names
class Document {
  final int id;
  final String association_id;
  final String document_type;
  final String document_url;
  final String signed_document_url;
  final String document_name;
  final String document_creation_data;

  Document({
    required this.id,
    required this.association_id,
    required this.document_type,
    required this.document_url,
    required this.signed_document_url,
    required this.document_name,
    required this.document_creation_data,
  });

  Document copyWith({
    int? id,
    String? association_id,
    String? document_type,
    String? document_url,
    String? signed_document_url,
    String? document_name,
    String? document_creation_data,
  }) {
    return Document(
      id: id ?? this.id,
      association_id: association_id ?? this.association_id,
      document_type: document_type ?? this.document_type,
      document_url: document_url ?? this.document_url,
      signed_document_url: signed_document_url ?? this.signed_document_url,
      document_name: document_name ?? this.document_name,
      document_creation_data:
          document_creation_data ?? this.document_creation_data,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      '@entity': "document",
      'id': id,
      'association_id': association_id,
      'document_type': document_type,
      'document_url': document_url,
      'signed_document_url': signed_document_url,
      'document_name': document_name,
      'document_creation_data': document_creation_data,
    };
  }

  factory Document.fromMap(Map<String, dynamic> map) {
    return Document(
      id: map['id'],
      association_id: map['association_id'],
      document_type: map['document_type'],
      document_url: map['document_url'],
      signed_document_url: map['signed_document_url'],
      document_name: map['document_name'],
      document_creation_data: map['document_creation_data'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Document.fromJson(String source) =>
      Document.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Document(id: $id, association_id: $association_id, document_type: $document_type, document_url: $document_url, signed_document_url: $signed_document_url, document_name: $document_name, document_creation_data: $document_creation_data)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Document && other.id == id;
  }

  @override
  int get hashCode {
    return id.hashCode;
  }
}
