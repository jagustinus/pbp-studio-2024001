// Latihan 3: daftar dan rata-rata.
// Yang dilatih: koleksi bertipe, dan menjaga kasus tepi daftar kosong.

double rataRata(List<int> nilai) {
  if (nilai.isEmpty) return 0;
  final jumlah = nilai.reduce((a, b) => a + b);
  return jumlah / nilai.length;
}

void main() {
  print('Rata-rata: ${rataRata([80, 90, 75])}');
  print('Rata-rata daftar kosong: ${rataRata([])}');
}
