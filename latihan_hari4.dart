import 'dart:io';

// class diameter
class DiameterLingkaran {
  int jarijari;
  double pi = 3.14;

//METHOD
  double hasil1() {
    return (2 * jarijari).toDouble();
  }
}

// class luas
class LuasLingkaran {
  int jarijari;
  double pi = 3.14;

//METHOD
  double hasil2() {
    return (jarijari * jarijari * pi);
  }
}

// class keliling
class KelilingLingkaran {
  int jarijari;
  double pi = 3.14;

//METHOD
  double hasil3() {
    return (2 * pi * jarijari * jarijari);
  }
}

void main() {
  var diameter = DiameterLingkaran();
  var luas = LuasLingkaran();
  var keliling = KelilingLingkaran();
  var pilih;
  var mengulang;
  int x;

  awal:
  do {
    print("RUMUS LINGKARAN");
    print("1. Diameter Lingkaran");
    print("2. Luas Lingkaran");
    print("3. Keliling Lingkaran");

    stdout.write("Pilih Rumus: ");
    pilih = stdin.readLineSync();

    if (pilih == '1') {
      print("Diameter Lingkaran");
      stdout.write("Masukan nilai jari-jari lingkaran: ");
      x = int.parse(stdin.readLineSync());
      diameter.jarijari = x;
      print("Diameter lingkaran dengan jari-jari $x adalah ${diameter.hasil1()} ");

    } else if (pilih == '2') {
      print("Luas Lingkaran");
      stdout.write("Masukan nilai jari-jari lingkaran: ");
      x = int.parse(stdin.readLineSync());
      luas.jarijari = x;
      print("Luas lingkaran dengan jari-jari $x adalah ${luas.hasil2()}");

    } else if (pilih == '3') {
      print("Keliling Lingkaran : ");
      stdout.write("Masukan nilai jari-jari lingkaran: ");
      x = int.parse(stdin.readLineSync());
      keliling.jarijari = x;
      print("Luas lingkaran dengan jari-jari $x adalah ${keliling.hasil3()} ");
    } else {
      print("Rumus tidak ada");
    }

    stdout.write("Ingin mengulang? (Y/N) ");
    mengulang = stdin.readLineSync();

    if (mengulang == 'Y' || mengulang == 'y') {
      continue awal;
    } else {
      break awal;
    }
  } while (mengulang == 'n');
  print("TERIMAKASIH");
}
