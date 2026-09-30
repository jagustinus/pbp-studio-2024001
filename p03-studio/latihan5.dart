// Latihan 5: Future, async, dan await.
Future<List<String>> ambilBacklog() async {
  await Future.delayed(Duration(seconds: 2));
  return ['GYB-001 Halaman masuk', 'GYB-002 Tombol check-in'];
}

void main() async {
  print('Mengambil backlog dari server...');

  var tanpaAwait = ambilBacklog();
  print('Tanpa await: $tanpaAwait');

  var denganAwait = await ambilBacklog();
  print('Dengan await: $denganAwait');
}
