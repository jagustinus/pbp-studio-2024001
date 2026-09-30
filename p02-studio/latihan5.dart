// Latihan 5: parameter bernama.
// Yang dilatih: required, nilai bawaan, dan parameter opsional yang boleh null.

String rangkum({required String nama, int diskon = 0, String? catatan}) {
  final dasar = '$nama mendapat diskon $diskon persen';
  if (catatan == null) return dasar;
  return '$dasar. Catatan: $catatan';
}

void main() {
  print(rangkum(nama: 'Andi'));
  print(rangkum(nama: 'Budi', diskon: 10));
  print(rangkum(nama: 'Cindy', diskon: 25, catatan: 'pelanggan tetap'));
}
