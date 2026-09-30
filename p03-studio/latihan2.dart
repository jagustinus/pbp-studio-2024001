// Latihan 2: parameter bernama, konstruktor bernama, dan getter.
class Kehadiran {
  final String anggota;
  final int jamMasuk;
  final int menitMasuk;

  Kehadiran({
    required this.anggota,
    required this.jamMasuk,
    required this.menitMasuk,
  });

  Kehadiran.dariJson(Map<String, dynamic> json)
    : anggota = json['anggota'],
      jamMasuk = json['jam'],
      menitMasuk = json['menit'];

  // Jam kerja mulai 08.00, toleransi 15 menit.
  bool get terlambat => jamMasuk * 60 + menitMasuk > 8 * 60 + 15;
}

void main() {
  var rina = Kehadiran(anggota: 'Rina', jamMasuk: 8, menitMasuk: 10);

  var dataServer = {'anggota': 'Budi', 'jam': 8, 'menit': 40};
  var budi = Kehadiran.dariJson(dataServer);

  print('${rina.anggota} terlambat? ${rina.terlambat}');
  print('${budi.anggota} terlambat? ${budi.terlambat}');
}
