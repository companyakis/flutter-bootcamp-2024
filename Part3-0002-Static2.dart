//main.dart file

import 'staticclass.dart';

void main() {
  
  var company = CompanyInfo();

  //no () usage, static!

  print(CompanyInfo.companyStartYear); //2024

  CompanyInfo.companyMessage(); //Always Keep it Simple!
}
