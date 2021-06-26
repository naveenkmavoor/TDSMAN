import 'dart:convert';

import 'package:tdsman_windows_app/models/apiModels/form24Q/challan/challan.model.dart';
import 'package:tdsman_windows_app/models/apiModels/form24Q/deductee/deductee.model.dart';

import '../money.model.dart';

// ignore_for_file: non_constant_identifier_names
class Deduction {
  final int id;
  final int deduction_serial;
  final String section;
  final String deduction_date;
  final Money deductionAmount;
  final String credit_date;
  final Money credit_amount;
  final Challan challan;
  final Deductee deductee;
  final Money late_deposit_interest;

  Deduction({
    required this.id,
    required this.deduction_serial,
    required this.section,
    required this.deduction_date,
    required this.deductionAmount,
    required this.credit_date,
    required this.credit_amount,
    required this.challan,
    required this.deductee,
    required this.late_deposit_interest,
  });

  Deduction copyWith({
    int? id,
    int? deduction_serial,
    String? section,
    String? deduction_date,
    Money? deductionAmount,
    String? credit_date,
    Money? credit_amount,
    Challan? challan,
    Deductee? deductee,
    Money? late_deposit_interest,
  }) {
    return Deduction(
      id: id ?? this.id,
      deduction_serial: deduction_serial ?? this.deduction_serial,
      section: section ?? this.section,
      deduction_date: deduction_date ?? this.deduction_date,
      deductionAmount: deductionAmount ?? this.deductionAmount,
      credit_date: credit_date ?? this.credit_date,
      credit_amount: credit_amount ?? this.credit_amount,
      challan: challan ?? this.challan,
      deductee: deductee ?? this.deductee,
      late_deposit_interest:
          late_deposit_interest ?? this.late_deposit_interest,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      '@entity': "tds.deduction",
      'id': id,
      'deduction_serial': deduction_serial,
      'section': section,
      'deduction_date': deduction_date,
      'deductionAmount': deductionAmount.toMap(),
      'credit_date': credit_date,
      'credit_amount': credit_amount.toMap(),
      'challan': challan.toMap(),
      'deductee': deductee.toMap(),
      'late_deposit_interest': late_deposit_interest.toMap(),
    };
  }

  factory Deduction.fromMap(Map<String, dynamic> map) {
    return Deduction(
      id: map['id'],
      deduction_serial: map['deduction_serial'],
      section: map['section'],
      deduction_date: map['deduction_date'],
      deductionAmount: Money.fromMap(map['deductionAmount']),
      credit_date: map['credit_date'],
      credit_amount: Money.fromMap(map['credit_amount']),
      challan: Challan.fromMap(map['challan']),
      deductee: Deductee.fromMap(map['deductee']),
      late_deposit_interest: Money.fromMap(map['late_deposit_interest']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Deduction.fromJson(String source) =>
      Deduction.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Deduction(id: $id, deduction_serial: $deduction_serial, section: $section, deduction_date: $deduction_date, deductionAmount: $deductionAmount, credit_date: $credit_date, credit_amount: $credit_amount, challan: $challan, deductee: $deductee, late_deposit_interest: $late_deposit_interest)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Deduction &&
        other.id == id &&
        other.deduction_serial == deduction_serial &&
        other.section == section &&
        other.deduction_date == deduction_date &&
        other.deductionAmount == deductionAmount &&
        other.credit_date == credit_date &&
        other.credit_amount == credit_amount &&
        other.challan == challan &&
        other.deductee == deductee &&
        other.late_deposit_interest == late_deposit_interest;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        deduction_serial.hashCode ^
        section.hashCode ^
        deduction_date.hashCode ^
        deductionAmount.hashCode ^
        credit_date.hashCode ^
        credit_amount.hashCode ^
        challan.hashCode ^
        deductee.hashCode ^
        late_deposit_interest.hashCode;
  }
}
