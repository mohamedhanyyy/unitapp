extension StringExtenstions on String{

   emailValidator(String? value) {
    // Regular expression for validating an email
    const String pattern =
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
    final RegExp regex = RegExp(pattern);

    if (value == null || value.isEmpty) {
      return 'Email is required';
    } else if (!regex.hasMatch(value)) {
      return 'Enter a valid email address';
    } else {
      return null;
    }
  }
   String? nameValidator(String? value) {
     // Ensure the name is not empty and has a reasonable length
     if (value == null || value.isEmpty) {
       return 'Name is required';
     } else if (value.length < 2) {
       return 'Name must be at least 2 characters';
     } else {
       return null;
     }
   }
   String? passwordValidator(String? value) {
     // Password must be at least 8 characters and contain letters, numbers, and special characters
     const String pattern =
         r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d@$!%*?&]{8,}$';
     final RegExp regex = RegExp(pattern);

     if (value == null || value.isEmpty) {
       return 'Password is required';
     } else if (!regex.hasMatch(value)) {
       return 'Password must be at least 8 characters, include letters and numbers';
     } else {
       return null;
     }
   }


}