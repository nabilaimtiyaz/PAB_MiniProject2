import 'package:flutter/material.dart';
import '../tema/colors.dart';
import '../layanan/supabase_service.dart';
import '../model/student_model.dart';
import 'package:flutter/services.dart';

class InputDataPage extends StatefulWidget {
  final String selectedMapel;
  final Student? student;

  const InputDataPage({
    super.key,
    required this.selectedMapel,
    this.student,
  });

  @override
  State<InputDataPage> createState() => _InputDataPageState();
}

class _InputDataPageState extends State<InputDataPage> {

final _formKey = GlobalKey<FormState>();
final service = SupabaseService();

TextEditingController nama = TextEditingController();
TextEditingController ttl = TextEditingController();
TextEditingController alamat = TextEditingController();
TextEditingController nohp = TextEditingController();
TextEditingController sekolah = TextEditingController();
TextEditingController nohpOrtu = TextEditingController();

String kelas = "10";
String jam = "13.00-14.30";

void simpanData() async {

if (_formKey.currentState!.validate()) {

  try {

    final student = Student(
      nama: nama.text,
      ttl: ttl.text,
      alamat: alamat.text,
      noHp: nohp.text,
      sekolah: sekolah.text,
      kelas: kelas,
      noHpOrtu: nohpOrtu.text,
      jamBimbel: jam,
      mapel: widget.selectedMapel,
    );

    if (widget.student == null) {
      await service.addStudent(student);
    } else {
      await service.updateStudent(widget.student!.id!, student);
    }

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text(
          "Data berhasil disimpan 🎉",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor: const Color(0xFF4F6F5B), 
        behavior: SnackBarBehavior.floating,
      ),
    );

    Navigator.pop(context);

  } catch (e) {

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("Gagal menyimpan data"),
        backgroundColor: Colors.red,
      ),
    );

    }
  }
}

@override
Widget build(BuildContext context) {

  bool isDark = Theme.of(context).brightness == Brightness.dark;

  return Scaffold(
    backgroundColor: Theme.of(context).scaffoldBackgroundColor,

    appBar: AppBar(
      title: Text("Form ${widget.selectedMapel}"),
      backgroundColor: AppColors.latte,
      foregroundColor: Colors.white,
    ),

    body: SingleChildScrollView(
      padding: const EdgeInsets.all(20),

      child: Form(
        key: _formKey,

        child: Column(
          children: [

            buildField(nama,"Nama"),
            buildField(ttl,"Tempat, Tanggal Lahir"),
            buildField(alamat,"Alamat"),
            buildField(nohp,"No HP", isNumber: true),
            buildField(sekolah,"Asal Sekolah"),
            buildField(nohpOrtu,"No HP Orang Tua", isNumber: true),

            const SizedBox(height:15),

            DropdownButtonFormField(
              value: kelas,
              style: const TextStyle(color: Colors.black),
              iconEnabledColor: Colors.black,
              dropdownColor: const Color(0xFFEDEEEA),
              items: ["10","11","12"]
                  .map((e) => DropdownMenuItem(
                value: e,
                child: Text(
                  "Kelas $e",
                  style: const TextStyle(color: Colors.black),
                ),
              ))
                  .toList(),
              onChanged: (val){
                setState(() {
                  kelas = val!;
                });
              },
              decoration: InputDecoration(
                labelText: "Kelas",
                filled: true,
                fillColor: AppColors.ivory,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    color: isDark ? const Color(0xFFBFD7C4) : AppColors.stone,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    color: isDark ? const Color(0xFFBFD7C4) : AppColors.stone,
                  ),
                ),
              ),
            ),

            const SizedBox(height:15),

            DropdownButtonFormField(
              value: jam,
              style: const TextStyle(color: Colors.black),
              iconEnabledColor: Colors.black,
              dropdownColor: const Color(0xFFEDEEEA),
              items: [
                "13.00-14.30",
                "15.00-16.30",
                "19.00-20.30"
              ]
              .map((e) => DropdownMenuItem(
                value: e,
                child: Text(
                  e,
                  style: const TextStyle(color: Colors.black),
                ),
              ))
                  .toList(),
              onChanged: (val){
                setState(() {
                  jam = val!;
                });
              },
              
              decoration: InputDecoration(
                labelText: "Jam Bimbel",
                filled: true,
                fillColor: AppColors.ivory,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    color: isDark ? const Color(0xFFBFD7C4) : AppColors.stone,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    color: isDark ? const Color(0xFFBFD7C4) : AppColors.stone,
                  ),
                ),
              ),
            ),

            const SizedBox(height:30),

            ElevatedButton(
              onPressed: simpanData,

              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.rose,
                minimumSize: const Size(double.infinity,50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),

              child: const Text(
                "Simpan",
                style: TextStyle(color: Colors.white),
              ),
            )

          ],
        ),
      ),
    ),
  );
}

  Widget buildField(TextEditingController controller, String label, {bool isNumber = false}){

    bool isDark = Theme.of(context).brightness == Brightness.dark;

    return Padding(
      padding: const EdgeInsets.only(bottom:15),

      child: TextFormField(
        controller: controller,

        keyboardType: isNumber ? TextInputType.number : TextInputType.text, 
        inputFormatters: isNumber 
            ? [FilteringTextInputFormatter.digitsOnly] 
            : null,

        style: const TextStyle(
          color: Colors.black,
          fontSize: 15,
        ),

        validator: (value){ 
          if(value == null || value.isEmpty){ 
            return "$label tidak boleh kosong"; 
          } 
            
          if(isNumber && value.length < 10){ 
            return "Nomor HP tidak valid"; } 
            
          return null; 
        },

        decoration: InputDecoration(
          labelText: label,

          labelStyle: const TextStyle(
            color: Color(0xFF7B7B7B),
          ),

          filled: true,
          fillColor: const Color(0xFFEDEEEA),

          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
              color: isDark
                  ? const Color(0xFFBFD7C4)
                  : const Color(0xFFB5B9B0),
            ),
          ),

          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
              color: isDark
                  ? const Color(0xFFBFD7C4)
                  : const Color(0xFFB5B9B0),
            ),
          ),

          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
              color: isDark
                  ? const Color(0xFF6F8F79)
                  : AppColors.latte,
              width: 2,
            ),
          ),
        ),
      ),
    );
  }
}