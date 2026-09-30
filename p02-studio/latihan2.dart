// Latihan 2: fungsi dengan tipe.
// Yang dilatih: tipe parameter, tipe kembalian, dan bentuk singkat dengan tanda panah.

int total(int harga, int jumlah) {
  return harga * jumlah;
}

int totalSingkat(int harga, int jumlah) => harga * jumlah;

void main() {
  print('Total belanja: ${total(8000, 3)}');
  print('Total belanja: ${totalSingkat(8000, 3)}');
}
