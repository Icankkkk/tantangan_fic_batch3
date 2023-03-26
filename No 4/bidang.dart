import 'dart:math';

abstract class Bidang {
  // create abstract method
  double getLuas();
  double getKeliling();
}

// persegi panjang
class PersegiPanjang extends Bidang {
  // atribut
  double? panjang;
  double? lebar;

  // constructor
  PersegiPanjang({required this.panjang, required this.lebar});

  @override
  double getLuas() {
    return panjang! * lebar!;
  }

  @override
  double getKeliling() {
    return 2 * (panjang! + lebar!);
  }
}

// bujur sangkar
class BujurSangkar extends Bidang {
  // atribut
  double? sisi;

  // constructor
  BujurSangkar({required this.sisi});

  @override
  double getKeliling() {
    return 4 * sisi!;
  }

  @override
  double getLuas() {
    return sisi! * sisi!;
  }
}

// lingkaran
class Lingkaran extends Bidang {
  // atribut
  double? radius;

  // constructor
  Lingkaran({required this.radius});

  @override
  double getKeliling() {
    return 2 * pi * radius!;
  }

  @override
  double getLuas() {
    return pi * radius! * radius!;
  }
}

void main() {
  // persegi panjang
  PersegiPanjang persegiPanjang = PersegiPanjang(panjang: 8, lebar: 2);
  print('Luas persegi panjang: ${persegiPanjang.getLuas()}');
  print('Keliling persegi panjang: ${persegiPanjang.getKeliling()}');

  // bujur sangkar
  BujurSangkar bujurSangkar = BujurSangkar(sisi: 8);
  print('Luas bujur sangkar: ${bujurSangkar.getLuas()}');
  print('Keliling bujur sangkar: ${bujurSangkar.getKeliling()}');

  // keliling
  Lingkaran lingkaran = Lingkaran(radius: 4);
  print('Luas lingkarang: ${lingkaran.getLuas()}');
  print('Keliling lingkaran: ${lingkaran.getKeliling()}');
}

// OUTPUT:
// Luas persegi panjang: 16.0
// Keliling persegi panjang: 20.0
// Luas bujur sangkar: 64.0
// Keliling bujur sangkar: 32.0
// Luas lingkarang: 50.26548245743669
// Keliling lingkaran: 25.132741228718345