//main.dart file

import 'enum.dart';

void main() {
  playerMessage(PlayerDirection.down); //Enemy is there!
}


void playerMessage(PlayerDirection d) {
  switch (d) {
    case PlayerDirection.up:
      print("Be careful!");
      break;
    case PlayerDirection.down:
      print("Enemy is there!");
      break;
    case PlayerDirection.right:
      print("Go go go...");
      break;
    case PlayerDirection.left:
      print("Wrong way!");
      break;
  }
}
