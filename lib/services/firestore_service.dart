import 'package:flutter_application_2/models/user_profile.dart';

class FirestoreService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> saveProfile(UserProfile user) async {
    try {
      await _firestore
      .collection('users')
      .doc(user.uid)
      .set(user.toMap(), SetOptions(merge: true));
    } catch (e) {
      throw Exception('Ошибка сохранения: $e');
    }
  }

  static String? _encryptField(String? value){
    if (value == null) return null;

    return 'encrypted_$value';
  }
}