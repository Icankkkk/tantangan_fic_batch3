import 'dart:math';

class Titik {
  var xPos, yPos;

  // constructor untuk memberikan nilai default if xPos, yPos belum didefinisikan
  Titik({double x = 0, double y = 0}) {
    this.xPos = x;
    this.yPos = y;
  }

  // getter
  double get x => xPos;
  double get y => yPos;

  // mengisi nilai X
  void set setX(double x) {
    this.xPos = x;
  }

  // mengisi nilai Y
  void set setY(double y) {
    this.yPos = y;
  }

  // mengisi nilai X dan Y sekaligus
  void setPos(double x, double y) {
    this.xPos = x;
    this.yPos = y;
  }

  void showData() {
    print("titik: $xPos, $yPos");
  }

  // method untuk menghitung jarak ke titik lain
  double distanceToPoint(Titik titikLain) {
    double deltaX = xPos - titikLain.x;
    double deltaY = yPos - titikLain.y;
    return sqrt(deltaX * deltaX + deltaY * deltaY);
  }

  // method untuk pindah ke kordinat lain
  void moveToOtherCordinate(double distance, double angle) {
    double radians = angle * (pi / 100);
    xPos += (distance * cos(radians));
    yPos += (distance * cos(radians));
  }
}

void main(List<String> args) {
  Titik titik = Titik();
  titik.setPos(3, 5);
  titik.showData();

  // pindah ke kordinat lain
  titik.moveToOtherCordinate(3, 45);
  titik.showData();

  // membuat objek titik lain
  Titik titik2 = Titik(x: 2, y: 4);

  // menghitung jarak ke titik lain
  double distance = titik.distanceToPoint(titik2);
  print("jarak ke titik lain: $distance");
}
