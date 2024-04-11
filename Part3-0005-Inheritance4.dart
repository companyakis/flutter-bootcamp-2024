//DownCasting
//Converting from super-class to sub-class

//Upcasting
//Converting from sub-class to super-class

import 'bank.dart';
import 'defi.dart';
import 'finance.dart';

void main() {
  var financeObject = Finance(
      country: "France", isCountryEuMember: true); //Finance is super-class
  var downCastingObject =
      financeObject as Bank; //Yes, here not logical:( //Bank is sub-class

  var defiCompany = DeFi(
      defi_name: "XXX",
      defi_id: 2,
      country: "Canada",
      isCountryEuMember: false);

  Finance f = defiCompany;
}
