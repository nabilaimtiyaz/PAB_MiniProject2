import 'package:flutter/material.dart';
import '../tema/colors.dart';
import '../layanan/supabase_service.dart';
import '../model/student_model.dart';
import 'student_card.dart';
import 'input_data.dart';
import 'package:provider/provider.dart';
import '../tema/theme_provider.dart';
import 'homepage.dart';

class RekapDataPage extends StatefulWidget {
  @override
  State<RekapDataPage> createState() => _RekapDataPageState();
}

class _RekapDataPageState extends State<RekapDataPage> {

  final SupabaseService service = SupabaseService();

  List<Student> matematika = [];
  List<Student> inggris = [];
  List<Student> informatika = [];

  @override
  void initState() {
    super.initState();
    loadStudents();
  }

  void loadStudents() async {
    final data = await service.getStudents();

    setState(() {
      matematika = data.where((s) => s.mapel == "Matematika").toList();
      inggris = data.where((s) => s.mapel == "Bahasa Inggris").toList();
      informatika = data.where((s) => s.mapel == "Informatika").toList();
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text("Rekap Data"),

          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 15),
              child: ThemeToggle(),
            ),
          ],
      ),

      backgroundColor: AppColors.ivory,

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: SizedBox(
          height: MediaQuery.of(context).size.height,

          child: GridView.count(
            crossAxisCount: 3,
            crossAxisSpacing: 25,
            mainAxisSpacing: 25,
            childAspectRatio: 0.9,

            children: [

              buildMapelCard("Matematika", matematika),

              buildMapelCard("Bahasa Inggris", inggris),

              buildMapelCard("Informatika", informatika),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildMapelCard(String title, List<Student> students) {

    return Container(
      padding: const EdgeInsets.all(20),

      decoration: BoxDecoration(
        color: Theme.of(context).cardColor, 
        borderRadius: BorderRadius.circular(25),
      ),

      child: Column(
        children: [

          Center(
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          const SizedBox(height: 10),

          Divider(
            thickness: 1,
            color: Theme.of(context).brightness == Brightness.dark
                ? const Color(0xFFBFD7C4)
                : const Color(0xFF3F5B46),
          ),

          const SizedBox(height: 10),

          Expanded(
            child: ListView.builder(

              itemCount: students.length,

              itemBuilder: (context, index) {

                final student = students[index];

                return Card(
                  margin: const EdgeInsets.only(bottom: 12),
                  color: Theme.of(context).brightness == Brightness.dark
                      ? const Color(0xFF4E6B58)
                      : const Color(0xFFE8F0EA),
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),

                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 15),
                    title: Text(student.nama),

                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [

                        IconButton(
                          icon: const Icon(Icons.visibility),

                          onPressed: () {

                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => StudentCard(
                                  student: {
                                    "Nama": student.nama,
                                    "TTL": student.ttl,
                                    "Alamat": student.alamat,
                                    "Sekolah": student.sekolah,
                                    "Kelas": student.kelas,
                                    "Mata Pelajaran": student.mapel,
                                    "Jam Bimbel": student.jamBimbel,
                                    "No HP": student.noHp,
                                    "No HP Ortu": student.noHpOrtu,
                                  },
                                ),
                              ),
                            );

                          },
                        ),

                        IconButton(
                          icon: const Icon(Icons.edit),

                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => InputDataPage(
                                  selectedMapel: student.mapel,
                                  student: student,
                                ),
                              ),
                            ).then((_) => loadStudents());
                          },
                        ),

                        IconButton(
                          icon: const Icon(Icons.delete),

                          onPressed: () {

                            showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(

                                  title: const Text("Hapus Data"),
                                  content: const Text(
                                      "Apakah kamu yakin ingin menghapus data siswa ini?"),

                                  actions: [

                                    TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: const Text("Batal"),
                                    ),

                                    TextButton(
                                      onPressed: () async {

                                        await service.deleteStudent(student.id!);

                                        Navigator.pop(context);

                                        loadStudents();

                                      },
                                      child: const Text(
                                        "Hapus",
                                        style: TextStyle(color: Colors.red),
                                      ),
                                    ),

                                  ],
                                );
                              },
                            );

                          },
                        ),

                      ],
                    ),
                  ),
                );
              },
            ),
          ),

        ],
      ),
    );
  }
}