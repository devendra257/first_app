mixin ValidatorMixin {
  String? emailValidate(value) {
    if (value == "") {
      return "Please fill the Email Field";
    } else if (!value!.contains('@')) {
      return "Please entee a valid Email..";
    }
    return null;
  }

  String? passValidate(value) {
    if (value == "") {
      return "Please fill the Passwprd Field";
    } else if (value!.length < 5) {
      return "Please enter a valid password(password must contain alleast 5 chars).";
    }
    return null;
  }
}
