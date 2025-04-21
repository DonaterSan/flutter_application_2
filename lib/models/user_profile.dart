
class UserProfile {
  final String uid;
  final String email;
  final String? phone;
  final String name;
  final String? photoUrl;
  final DateTime? birthDate;
  final String skills;
  final String? bio;
  final Map<String, bool>? preferences;

UserProfile({
  required this.uid,
  required this.email,
  required this.name,
  this.phone,
  this.photoUrl,
  this.birthDate,
  required this.skills,
  this.bio,
  this.preferences,
});

  Map<String, dynamic> toMap(){
    return{
      'uid': uid,
      'email': email,
      'name': name,
      'phone': phone,
      'photoUrl': photoUrl,
      'birthDate': birthDate?.toIso8601String(),
      'bio': bio,
      'skills': skills,
      'preferences': preferences,
    };
  }

  factory UserProfile.fromMap(Map<String,dynamic> map){
    return UserProfile(
      uid: map['uid'],
      email: map['email'],
      phone: map['phone'],
      name: map['name'],
      photoUrl: map['photoUrl'],
      birthDate: map['birthDate'] != null ? DateTime.parse(map['birthDate']) : null,
      bio: map['bio'],
      skills: map['skills'],
      preferences: Map<String, bool>.from(map['preferences'] ?? {}), 
    );
  }

}