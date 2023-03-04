class Validator{

  static get badValidationText => null;
  static String? prevEmail;
  static String? prevPass;

  static String? isEmail(String? email) {
    if (email!.isEmpty) {
      return 'Enter Email';
    } else if (!RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(email)) {
      return 'Please enter a valid Email';
    } else {
      prevEmail = email.toString();
    }
    return null;
  }


  static String? isPassword(String? password) {
    if (password!.isEmpty) {
      return 'Enter Password';
    } else if (password.length < 6) {
      return "password length must be 6";
    } else {
      prevPass = password.toString();
    }
    return null;
  }

}