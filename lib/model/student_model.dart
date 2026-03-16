class Student {
  final int? id;
  final String nama;
  final String ttl;
  final String alamat;
  final String noHp;
  final String sekolah;
  final String kelas;
  final String noHpOrtu;
  final String jamBimbel;
  final String mapel;

  Student({
    this.id,
    required this.nama,
    required this.ttl,
    required this.alamat,
    required this.noHp,
    required this.sekolah,
    required this.kelas,
    required this.noHpOrtu,
    required this.jamBimbel,
    required this.mapel,
  });

  Map<String, dynamic> toMap() {
    return {
      "nama": nama,
      "ttl": ttl,
      "alamat": alamat,
      "no_hp": noHp,
      "sekolah": sekolah,
      "kelas": kelas,
      "no_hp_ortu": noHpOrtu,
      "jam_bimbel": jamBimbel,
      "mata_pelajaran": mapel,
    };
  }

  factory Student.fromMap(Map<String, dynamic> map) {
    return Student(
      id: map['id'],
      nama: map['nama'],
      ttl: map['ttl'],
      alamat: map['alamat'],
      noHp: map['no_hp'],
      sekolah: map['sekolah'],
      kelas: map['kelas'],
      noHpOrtu: map['no_hp_ortu'],
      jamBimbel: map['jam_bimbel'],
      mapel: map['mata_pelajaran'],
    );
  }
}