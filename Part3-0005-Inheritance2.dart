import 'bank.dart';
import 'defi.dart';

void main() {
  var isBank = Bank(
      bank_name: "İş Bankası",
      bank_id: 1,
      country: "Turkiye",
      isCountryEuMember: false);

  print(isBank.country);

  var myCompany = DeFi(
      defi_name: "My Company",
      defi_id: 1,
      country: "Turkiye",
      isCountryEuMember: false);

  print(myCompany.isCountryEuMember);
}
