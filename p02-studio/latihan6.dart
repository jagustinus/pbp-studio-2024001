// Latihan 6, tingkat menengah: struk belanja.
// Menggabungkan keempat hal sebelumnya: List, Map, nilai yang bisa null, dan parameter bernama.
//
// Aturan yang dipaksa muncul:
//   - barang yang tidak ada di katalog tidak boleh mematikan program, tetapi harus dilaporkan
//   - diskon hanya berlaku kalau total di atas batas tertentu
//   - keluaran harus terbaca sebagai struk, bukan sebagai potongan data

const katalog = <String, int>{
  'kopi': 8000,
  'teh': 5000,
  'jus': 12000,
  'roti': 7000,
};

/// Menghitung total pesanan. Barang yang tidak ada di katalog dikumpulkan ke [tidakDikenal]
/// supaya pemanggilnya bisa melaporkannya, bukan diam-diam dihitung nol.
int hitungTotal(List<String> pesanan, List<String> tidakDikenal) {
  var total = 0;
  for (final barang in pesanan) {
    final harga = katalog[barang];
    if (harga == null) {
      tidakDikenal.add(barang);
      continue;
    }
    total += harga;
  }
  return total;
}

String struk({
  required String pembeli,
  required List<String> pesanan,
  int diskonPersen = 0,
  int batasDiskon = 20000,
}) {
  final tidakDikenal = <String>[];
  final total = hitungTotal(pesanan, tidakDikenal);

  final diskonBerlaku = total >= batasDiskon ? diskonPersen : 0;
  final potongan = total * diskonBerlaku ~/ 100;
  final bayar = total - potongan;

  final baris = <String>[
    'Struk untuk $pembeli',
    'Jumlah barang  : ${pesanan.length}',
    'Total          : $total',
    'Diskon         : $diskonBerlaku persen, potongan $potongan',
    'Dibayar        : $bayar',
  ];
  if (tidakDikenal.isNotEmpty) {
    baris.add('Tidak ada di katalog: ${tidakDikenal.join(", ")}');
  }
  return baris.join('\n');
}

void main() {
  print(struk(pembeli: 'Andi', pesanan: ['kopi', 'teh']));
  print('');
  print(struk(pembeli: 'Budi', pesanan: ['jus', 'jus', 'roti'], diskonPersen: 10));
  print('');
  print(struk(pembeli: 'Cindy', pesanan: ['kopi', 'sate', 'roti'], diskonPersen: 15));
}
