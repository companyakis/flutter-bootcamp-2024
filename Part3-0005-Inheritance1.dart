//bank.dart file

import 'finance.dart';

class Bank extends Finance {
  String bank_name;
  int bank_id;

  Bank({required this.bank_name, required this.bank_id, required String country, required bool isCountryEuMember})
      : super(country: country, isCountryEuMember: isCountryEuMember);
}

//----------------------------------------------------------------------------------------------------------------

//defi.dart file

import 'finance.dart';

class DeFi extends Finance {
  String defi_name;
  int defi_id;

  DeFi({required this.defi_name, required this.defi_id, required String country, required bool isCountryEuMember})
      : super(country: country, isCountryEuMember: isCountryEuMember);
}

//----------------------------------------------------------------------------------------------------------------

//finance.dart file

class Finance {
  String country;
  bool isCountryEuMember;

  Finance({required this.country, required this.isCountryEuMember});
}
