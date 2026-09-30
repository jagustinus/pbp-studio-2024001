// Latihan 3: pewarisan dengan extends, super, dan @override.
class ItemBacklog {
  final String kunci;
  final String judul;

  ItemBacklog(this.kunci, this.judul);

  int prioritas() => 2;
}

class Story extends ItemBacklog {
  Story(super.kunci, super.judul);
}

class Bug extends ItemBacklog {
  Bug(super.kunci, super.judul);

  @override
  int prioritas() => 1;
}

void main() {
  List<ItemBacklog> backlog = [
    Story('GYB-003', 'Rekap kehadiran mingguan'),
    Bug('GYB-004', 'Check-in ganda saat sinyal hilang'),
  ];

  for (var item in backlog) {
    print('${item.kunci} ${item.judul}, prioritas ${item.prioritas()}');
  }
}
