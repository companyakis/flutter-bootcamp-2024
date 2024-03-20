void main() {
  for (int i = 1; i <= 11; i += 2) {
    if (i == 7) {
      continue;
    }
    print("i = $i");
  }

  /*
i = 1
i = 3
i = 5
i = 9
i = 11
  */
}
