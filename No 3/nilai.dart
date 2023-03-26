class Nilai {
  // atribut
  late double _quis;
  late double _uts;
  late double _uas;

  // setter
  void set setQuis(double value) {
    _quis = value;
  }

  void set setUts(double value) {
    _uts = value;
  }

  void set setUas(double value) {
    _uas = value;
  }

  // get nilai akhir
  double getNilaiAkhir() => 0.2 * _quis + 0.3 * _uts + 0.5 * _uas;

  // get index (char)
  String getIndex() {
    double nilaiAkhir = getNilaiAkhir();
    if (nilaiAkhir >= 80 && nilaiAkhir <= 100) {
      return 'A';
    } else if (nilaiAkhir >= 68 && nilaiAkhir <= 80) {
      return 'B';
    } else if (nilaiAkhir >= 56 && nilaiAkhir <= 86) {
      return 'C';
    } else if (nilaiAkhir >= 45 && nilaiAkhir <= 56) {
      return 'D';
    } else {
      return 'E';
    }
  }

  // get keterangan
  String getKeterangan() {
    switch (getIndex()) {
      case 'A':
        return 'Sangat Baik';
      case 'B':
        return 'Baik';
      case 'C':
        return 'Cukup';
      case 'D':
        return 'Kurang';
      default:
        return 'Sangat kurang';
    }
  }
}

void main() {
  Nilai mahasiswa1 = Nilai();
  mahasiswa1.setQuis = 80;
  mahasiswa1.setUas = 80;
  mahasiswa1.setUts = 85;

  print('Nilai akhir: ${mahasiswa1.getNilaiAkhir()}');
  print('Grade : ${mahasiswa1.getIndex()}');
  print('Keterangan : ${mahasiswa1.getKeterangan()}');
}
