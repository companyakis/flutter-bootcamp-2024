//type control

import 'bank.dart';
import 'defi.dart';

void main() {
  var isBank = Bank(
      bank_name: "İş Bankası",
      bank_id: 1,
      country: "Turkiye",
      isCountryEuMember: false);

  var myCompany = DeFi(
      defi_name: "My Company",
      defi_id: 1,
      country: "Turkiye",
      isCountryEuMember: false);

  if (myCompany is Bank) {
    print("No problem!");
  } else {
    print("Web3 companies awesome. No problem!");
  }
}
