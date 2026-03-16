import 'package:flutter/material.dart';
import 'input_data.dart';
import 'rekap_data.dart';
import '../tema/colors.dart';
import 'package:provider/provider.dart';
import '../tema/theme_provider.dart';

class HomePage extends StatelessWidget {
  final Color primaryColor = AppColors.latte;

  void showMapelDialog(BuildContext context) {

    bool isDark = Theme.of(context).brightness == Brightness.dark;

    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(35)),
      ),
      builder: (_) {
        return Container(
          padding: const EdgeInsets.all(25),
          height: 280,

          decoration: BoxDecoration(
            color: isDark
                ? const Color(0xFF2E4436) 
                : AppColors.ivory,

            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(35),
            ),
          ),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Text(
                "Pilih Mata Pelajaran",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,

                  color: isDark
                      ? const Color(0xFFBFD7C4)
                      : AppColors.latte,
                ),
              ),

              const SizedBox(height: 20),

              buildMapelTile(context, "Matematika"),
              buildMapelTile(context, "Bahasa Inggris"),
              buildMapelTile(context, "Informatika"),
            ],
          ),
        );
      },
    );
  }

  Widget buildMapelTile(BuildContext context, String mapel) {

    bool isDark = Theme.of(context).brightness == Brightness.dark;

    IconData icon;

    if (mapel == "Matematika") {
      icon = Icons.calculate;
    } else if (mapel == "Bahasa Inggris") {
      icon = Icons.language;
    } else if (mapel == "Informatika") {
      icon = Icons.computer;
    } else {
      icon = Icons.book;
    }

    return ListTile(
      contentPadding: const EdgeInsets.symmetric(vertical: 5),

      leading: CircleAvatar(
        backgroundColor: isDark
            ? const Color(0xFFBFD7C4)
            : AppColors.nude,

        child: Icon(
          icon,
          color: isDark
              ? const Color(0xFF2E4436)
              : AppColors.latte,
        ),
      ),

      title: Text(
        mapel,
        style: TextStyle(
          color: isDark
              ? const Color(0xFFBFD7C4)
              : AppColors.latte,
        ),
      ),

      onTap: () {
        Navigator.pop(context);
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => InputDataPage(selectedMapel: mapel),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {

    bool isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,

      appBar: AppBar(
        title: const Text("Intellecta Bimbel"),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: ThemeToggle(),
          ),
        ],
      ),

      body: Stack(
        children: [

          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: isDark
                    ? [
                        const Color(0xFF1F2E25),
                        const Color(0xFF2E4436),
                        const Color(0xFF3F5B46),
                      ]
                    : [
                        const Color(0xFFE8F0EA),
                        const Color(0xFFD5E3D7),
                        const Color(0xFFC4D6C7),
                      ],
              ),
            ),
          ),

          Positioned(
            top: -120,
            left: -80,
            child: Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                color: isDark
                    ? const Color(0xFF6F8F79).withOpacity(0.25)
                    : Colors.green.withOpacity(0.15),
                shape: BoxShape.circle,
              ),
            ),
          ),

          Positioned(
            bottom: -120,
            right: -80,
            child: Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                color: isDark
                    ? const Color(0xFF6F8F79).withOpacity(0.25)
                    : Colors.green.withOpacity(0.15),
                shape: BoxShape.circle,
              ),
            ),
          ),

          Center(
            child: Container(
              constraints: const BoxConstraints(maxWidth: 450),
              child: Column(
                children: [

                  const SizedBox(height: 40),

                  Container(
                    padding: const EdgeInsets.all(25),
                    decoration: BoxDecoration(
                      color: isDark ? Colors.white : primaryColor,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: primaryColor.withOpacity(0.4),
                          blurRadius: 25,
                          offset: const Offset(0, 10),
                        )
                      ],
                    ),
                    child: Icon(
                      Icons.school,
                      color: isDark ? const Color(0xFF3F5B46) : Colors.white,
                      size: 50,
                    ),
                  ),

                  const SizedBox(height: 20),

                  Text(
                    "Intellecta Bimbel",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).textTheme.bodyLarge?.color,
                    ),
                  ),

                  Text(
                    "Smart Student Management",
                    style: TextStyle(
                      color: isDark
                          ? Colors.white70
                          : AppColors.latte.withOpacity(0.7),
                    ),
                  ),

                  const SizedBox(height: 50),

                  buildMainButton(
                    context,
                    icon: Icons.person_add_alt_1,
                    text: "Input Data Siswa",
                    onTap: () => showMapelDialog(context),
                  ),

                  const SizedBox(height: 20),

                  buildMainButton(
                    context,
                    icon: Icons.dashboard_outlined,
                    text: "Rekap Data Siswa",
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => RekapDataPage(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildMainButton(
    BuildContext context, {
      required IconData icon,
      required String text,
      required VoidCallback onTap,
    }
  ) {

      bool isDark = Theme.of(context).brightness == Brightness.dark;

      return GestureDetector(
        onTap: onTap,

        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 20),

          decoration: BoxDecoration(
            color: isDark ? const Color(0xFF2E4436) : AppColors.nude,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.15),
                blurRadius: 15,
                offset: const Offset(0, 8),
              )
            ],
          ),

          child: Row(
            children: [

              CircleAvatar(
                backgroundColor: isDark
                    ? Colors.white
                    : AppColors.ivory,

                child: Icon(
                  icon,
                  color: isDark
                      ? const Color(0xFF3F5B46)
                      : AppColors.latte,
                ),
              ),

              const SizedBox(width: 20),

              Text(
                text,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Theme.of(context).textTheme.bodyLarge?.color,
                ),
              )
            ],
          ),
        ),
      );
    }
}

class ThemeToggle extends StatelessWidget {
  const ThemeToggle({super.key});

  @override
  Widget build(BuildContext context) {

    final themeProvider = Provider.of<ThemeProvider>(context);
    bool isDark = themeProvider.themeMode == ThemeMode.dark;

    return GestureDetector(
      onTap: () {
        themeProvider.toggleTheme();
      },

      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),

        width: 70,
        height: 36,
        padding: const EdgeInsets.symmetric(horizontal: 4),

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: isDark
              ? const Color(0xFF2E4436)
              : const Color(0xFFE0E0E0),
        ),

        child: Stack(
          alignment: Alignment.center,

          children: [

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Icon(Icons.dark_mode, size: 18, color: Colors.white),
                Icon(Icons.light_mode, size: 18, color: Colors.orange),
              ],
            ),

            AnimatedAlign(
              duration: const Duration(milliseconds: 300),

              alignment:
                  isDark ? Alignment.centerRight : Alignment.centerLeft,

              child: Container(
                width: 28,
                height: 28,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}