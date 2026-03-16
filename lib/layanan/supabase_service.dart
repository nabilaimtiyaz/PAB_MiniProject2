import 'package:supabase_flutter/supabase_flutter.dart';
import '../model/student_model.dart';

class SupabaseService {

  final supabase = Supabase.instance.client;

  Future<void> addStudent(Student student) async {
    await supabase
        .from('students')
        .insert(student.toMap());
  }

  Future updateStudent(int id, Student student) async {
  await supabase
      .from('students')
      .update(student.toMap())
      .eq('id', id);
  }

  Future<List<Student>> getStudents() async {

    final data = await supabase
        .from('students')
        .select();

    return (data as List)
        .map((e) => Student.fromMap(e))
        .toList();
  }

  Future<void> deleteStudent(int id) async {

    await supabase
        .from('students')
        .delete()
        .eq('id', id);
  }
}