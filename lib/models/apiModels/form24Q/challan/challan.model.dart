import 'dart:convert';

import '../money.model.dart';

// ignore_for_file: non_constant_identifier_names
class Challan {
  final int id;
  final String bsr_code;
  final String challan_number;
  final String paid_date;
  final String minor_head;
  final Money money;
  final String mode_of_deposit;
  final bool is_nil_challan;
  final Money unclaimedAmount;

  Challan({
    required this.id,
    required this.bsr_code,
    required this.challan_number,
    required this.paid_date,
    required this.minor_head,
    required this.money,
    required this.mode_of_deposit,
    required this.is_nil_challan,
    required this.unclaimedAmount,
  });

  Challan copyWith({
    int? id,
    String? bsr_code,
    String? challan_number,
    String? paid_date,
    String? minor_head,
    Money? money,
    String? mode_of_deposit,
    bool? is_nil_challan,
    Money? unclaimedAmount,
  }) {
    return Challan(
      id: id ?? this.id,
      bsr_code: bsr_code ?? this.bsr_code,
      challan_number: challan_number ?? this.challan_number,
      paid_date: paid_date ?? this.paid_date,
      minor_head: minor_head ?? this.minor_head,
      money: money ?? this.money,
      mode_of_deposit: mode_of_deposit ?? this.mode_of_deposit,
      is_nil_challan: is_nil_challan ?? this.is_nil_challan,
      unclaimedAmount: unclaimedAmount ?? this.unclaimedAmount,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'entity': "challan",
      'id': id,
      'bsr_code': bsr_code,
      'challan_number': challan_number,
      'paid_date': paid_date,
      'minor_head': minor_head,
      'money': money.toMap(),
      'mode_of_deposit': mode_of_deposit,
      'is_nil_challan': is_nil_challan,
      'unclaimedAmount': unclaimedAmount.toMap(),
    };
  }

  factory Challan.fromMap(Map<String, dynamic> map) {
    return Challan(
      id: map['id'],
      bsr_code: map['bsr_code'],
      challan_number: map['challan_number'],
      paid_date: map['paid_date'],
      minor_head: map['minor_head'],
      money: Money.fromMap(map['money']),
      mode_of_deposit: map['mode_of_deposit'],
      is_nil_challan: map['is_nil_challan'],
      unclaimedAmount: Money.fromMap(map['unclaimedAmount']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Challan.fromJson(String source) =>
      Challan.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Challan(id: $id, bsr_code: $bsr_code, challan_number: $challan_number, paid_date: $paid_date, minor_head: $minor_head, money: $money, mode_of_deposit: $mode_of_deposit, is_nil_challan: $is_nil_challan, unclaimedAmount: $unclaimedAmount)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Challan && other.id == id;
  }

  @override
  int get hashCode {
    return id.hashCode;
  }
}
