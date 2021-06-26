import 'dart:convert';

import '../employee.model.dart';
import '../employer.model.dart';

// ignore_for_file: non_constant_identifier_names
class SalaryDetails {
  final int id;
  final Employer employer;
  final Employee employee;
  final String assessment_year;
  final String financial_year;
  final List deductible_deductions;
  final List taxes_paid;
  final List incomes;
  final int total_salary_current_employer;
  final int total_income_chargeable_under_head_salary;
  final int gross_house_property_income;
  final int gross_other_income;
  final int gross_total_income;
  final int total_deduction_us_80_cce;
  final int total_chapter_vi_a_deudctions;
  final int total_income;
  final int total_tax;
  final int rebate_us_87;
  final int surcharge;
  final int cess;
  final int total_tax_payable;
  final int relief_us_89;
  final int net_tax_payable;
  final int total_tax_deducted;
  final int refund;
  final int due;
  final bool is_pan_available;

  SalaryDetails({
    required this.id,
    required this.employer,
    required this.employee,
    required this.assessment_year,
    required this.financial_year,
    required this.deductible_deductions,
    required this.taxes_paid,
    required this.incomes,
    required this.total_salary_current_employer,
    required this.total_income_chargeable_under_head_salary,
    required this.gross_house_property_income,
    required this.gross_other_income,
    required this.gross_total_income,
    required this.total_deduction_us_80_cce,
    required this.total_chapter_vi_a_deudctions,
    required this.total_income,
    required this.total_tax,
    required this.rebate_us_87,
    required this.surcharge,
    required this.cess,
    required this.total_tax_payable,
    required this.relief_us_89,
    required this.net_tax_payable,
    required this.total_tax_deducted,
    required this.refund,
    required this.due,
    required this.is_pan_available,
  });

  SalaryDetails copyWith({
    int? id,
    Employer? employer,
    Employee? employee,
    String? assessment_year,
    String? financial_year,
    List? deductible_deductions,
    List? taxes_paid,
    List? incomes,
    int? total_salary_current_employer,
    int? total_income_chargeable_under_head_salary,
    int? gross_house_property_income,
    int? gross_other_income,
    int? gross_total_income,
    int? total_deduction_us_80_cce,
    int? total_chapter_vi_a_deudctions,
    int? total_income,
    int? total_tax,
    int? rebate_us_87,
    int? surcharge,
    int? cess,
    int? total_tax_payable,
    int? relief_us_89,
    int? net_tax_payable,
    int? total_tax_deducted,
    int? refund,
    int? due,
    bool? is_pan_available,
  }) {
    return SalaryDetails(
      id: id ?? this.id,
      employer: employer ?? this.employer,
      employee: employee ?? this.employee,
      assessment_year: assessment_year ?? this.assessment_year,
      financial_year: financial_year ?? this.financial_year,
      deductible_deductions:
          deductible_deductions ?? this.deductible_deductions,
      taxes_paid: taxes_paid ?? this.taxes_paid,
      incomes: incomes ?? this.incomes,
      total_salary_current_employer:
          total_salary_current_employer ?? this.total_salary_current_employer,
      total_income_chargeable_under_head_salary:
          total_income_chargeable_under_head_salary ??
              this.total_income_chargeable_under_head_salary,
      gross_house_property_income:
          gross_house_property_income ?? this.gross_house_property_income,
      gross_other_income: gross_other_income ?? this.gross_other_income,
      gross_total_income: gross_total_income ?? this.gross_total_income,
      total_deduction_us_80_cce:
          total_deduction_us_80_cce ?? this.total_deduction_us_80_cce,
      total_chapter_vi_a_deudctions:
          total_chapter_vi_a_deudctions ?? this.total_chapter_vi_a_deudctions,
      total_income: total_income ?? this.total_income,
      total_tax: total_tax ?? this.total_tax,
      rebate_us_87: rebate_us_87 ?? this.rebate_us_87,
      surcharge: surcharge ?? this.surcharge,
      cess: cess ?? this.cess,
      total_tax_payable: total_tax_payable ?? this.total_tax_payable,
      relief_us_89: relief_us_89 ?? this.relief_us_89,
      net_tax_payable: net_tax_payable ?? this.net_tax_payable,
      total_tax_deducted: total_tax_deducted ?? this.total_tax_deducted,
      refund: refund ?? this.refund,
      due: due ?? this.due,
      is_pan_available: is_pan_available ?? this.is_pan_available,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'entity': "salary_details",
      'id': id,
      'employer': employer.toMap(),
      'employee': employee.toMap(),
      'assessment_year': assessment_year,
      'financial_year': financial_year,
      'deductible_deductions': deductible_deductions,
      'taxes_paid': taxes_paid,
      'incomes': incomes,
      'total_salary_current_employer': total_salary_current_employer,
      'total_income_chargeable_under_head_salary':
          total_income_chargeable_under_head_salary,
      'gross_house_property_income': gross_house_property_income,
      'gross_other_income': gross_other_income,
      'gross_total_income': gross_total_income,
      'total_deduction_us_80_cce': total_deduction_us_80_cce,
      'total_chapter_vi_a_deudctions': total_chapter_vi_a_deudctions,
      'total_income': total_income,
      'total_tax': total_tax,
      'rebate_us_87': rebate_us_87,
      'surcharge': surcharge,
      'cess': cess,
      'total_tax_payable': total_tax_payable,
      'relief_us_89': relief_us_89,
      'net_tax_payable': net_tax_payable,
      'total_tax_deducted': total_tax_deducted,
      'refund': refund,
      'due': due,
      'is_pan_available': is_pan_available,
    };
  }

  factory SalaryDetails.fromMap(Map<String, dynamic> map) {
    return SalaryDetails(
      id: map['id'],
      employer: Employer.fromMap(map['employer']),
      employee: Employee.fromMap(map['employee']),
      assessment_year: map['assessment_year'],
      financial_year: map['financial_year'],
      deductible_deductions: List.from(map['deductible_deductions']),
      taxes_paid: List.from(map['taxes_paid']),
      incomes: List.from(map['incomes']),
      total_salary_current_employer: map['total_salary_current_employer'],
      total_income_chargeable_under_head_salary:
          map['total_income_chargeable_under_head_salary'],
      gross_house_property_income: map['gross_house_property_income'],
      gross_other_income: map['gross_other_income'],
      gross_total_income: map['gross_total_income'],
      total_deduction_us_80_cce: map['total_deduction_us_80_cce'],
      total_chapter_vi_a_deudctions: map['total_chapter_vi_a_deudctions'],
      total_income: map['total_income'],
      total_tax: map['total_tax'],
      rebate_us_87: map['rebate_us_87'],
      surcharge: map['surcharge'],
      cess: map['cess'],
      total_tax_payable: map['total_tax_payable'],
      relief_us_89: map['relief_us_89'],
      net_tax_payable: map['net_tax_payable'],
      total_tax_deducted: map['total_tax_deducted'],
      refund: map['refund'],
      due: map['due'],
      is_pan_available: map['is_pan_available'],
    );
  }

  String toJson() => json.encode(toMap());

  factory SalaryDetails.fromJson(String source) =>
      SalaryDetails.fromMap(json.decode(source));

  @override
  String toString() {
    return 'SalaryDetails(id: $id, employer: $employer, employee: $employee, assessment_year: $assessment_year, financial_year: $financial_year, deductible_deductions: $deductible_deductions, taxes_paid: $taxes_paid, incomes: $incomes, total_salary_current_employer: $total_salary_current_employer, total_income_chargeable_under_head_salary: $total_income_chargeable_under_head_salary, gross_house_property_income: $gross_house_property_income, gross_other_income: $gross_other_income, gross_total_income: $gross_total_income, total_deduction_us_80_cce: $total_deduction_us_80_cce, total_chapter_vi_a_deudctions: $total_chapter_vi_a_deudctions, total_income: $total_income, total_tax: $total_tax, rebate_us_87: $rebate_us_87, surcharge: $surcharge, cess: $cess, total_tax_payable: $total_tax_payable, relief_us_89: $relief_us_89, net_tax_payable: $net_tax_payable, total_tax_deducted: $total_tax_deducted, refund: $refund, due: $due, is_pan_available: $is_pan_available)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is SalaryDetails && other.id == id;
  }

  @override
  int get hashCode {
    return id.hashCode;
  }
}
