import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../tema/theme_provider.dart';
import 'homepage.dart';

class StudentCard extends StatelessWidget {
  final Map<String, String> student;

  const StudentCard({super.key, required this.student});

  @override
  Widget build(BuildContext context) {

    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,

      body: Center(
        child: Stack(
          children: [

            Container(
              width: 420,
              padding: const EdgeInsets.all(30),

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35),

                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: isDark
                      ? [
                          const Color(0xFF3F5B46),
                          const Color(0xFF2E4436),
                        ]
                      : [
                          const Color(0xFF3F5B46),
                          const Color(0xFF344C3D),
                        ],
                ),

                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    blurRadius: 30,
                    offset: const Offset(0, 15),
                  ),
                ],
              ),

              child: SingleChildScrollView(
                child: Column(
                  children: [

                    const SizedBox(height: 30),

                    CircleAvatar(
                      radius: 40,
                      backgroundColor: isDark ? const Color(0xFF6F8F79) : Colors.white24,
                      child: Icon(Icons.person, size: 40, color: isDark ? Colors.white : Colors.white),
                    ),

                    const SizedBox(height: 15),

                    Text(
                      student['Nama'] ?? '',
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),

                    const SizedBox(height: 25),

                    Divider(color: Colors.white.withOpacity(0.3)),

                    const SizedBox(height: 20),

                    buildRow(Icons.cake, "TTL", student['TTL']),
                    buildRow(Icons.location_on, "Alamat", student['Alamat']),
                    buildRow(Icons.school, "Sekolah", student['Sekolah']),
                    buildRow(Icons.class_, "Kelas", student['Kelas']),
                    buildRow(Icons.access_time, "Jam", student['Jam Bimbel']),
                    buildRow(Icons.phone, "No HP", student['No HP']),
                    buildRow(Icons.family_restroom, "No HP Ortu", student['No HP Ortu']),
                  ],
                ),
              ),
            ),

            Positioned(
              top: 15,
              left: 15,
              child: CircleAvatar(
                backgroundColor: isDark ? const Color(0xFF6F8F79) : Colors.white,
                child: IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () => Navigator.pop(context),
                ),
              ),
            ),

            Positioned(
              top: 15,
              right: 15,
              child: ThemeToggle(),
            ),

          ],
        ),
      ),
    );
  }

  Widget buildRow(IconData icon, String title, String? value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [

          const Icon(Icons.circle, size: 0),

          Icon(icon, color: Colors.white),

          const SizedBox(width: 12),

          Text(title, style: const TextStyle(color: Colors.white)),

          const Spacer(),

          Text(value ?? "-", style: const TextStyle(color: Colors.white)),
        ],
      ),
    );
  }
}