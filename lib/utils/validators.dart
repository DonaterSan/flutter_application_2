
class ProfileValidators{
  static String? validateEmail(String? value) {
    if (value == null || !RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$').hasMatch(value)){
      return 'Некорректный email';
    }
    return null;
  }

  static String? validatePhone(String? value){
    if (value != null && !RegExp(r'^\+[\d]{11,15}$').hasMatch(value)){
      return 'Формат: +71234567890';
    }
    return null;
  }

  static String? validateName(String? value){
    if (value == null || value.length < 2){
      return 'Имя слишком короткое';
    }
    return null;
  }
}