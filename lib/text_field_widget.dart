import 'package:first_app/my_widget/my_text_field_widget.dart';
import 'package:first_app/my_widget/validator_mixin.dart';
import 'package:flutter/material.dart';

class TextWidget extends StatefulWidget {
  const TextWidget({super.key});

  @override
  State<TextWidget> createState() => _TextWidgetState();
}

class _TextWidgetState extends State<TextWidget> with ValidatorMixin {
  var emailController = TextEditingController();
  var passController = TextEditingController();

  bool isPasswordVisible = false;
  var email = '';

  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Field Widget'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(21.0),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              TextFormField(
                validator: emailValidate,
                controller: emailController,
                onSaved: (newValue) {
                  email = newValue!;
                },
                onChanged: (value) {},
                decoration: UIbase.getCustomWiget(
                  hint: 'Enter Email Here',
                  labelText: 'Enter Your Email',
                  mPrefixIcon: Icons.email,
                  // iconColor: Colors.purple,
                ),
              ),
              SizedBox(
                height: 24,
              ),
              TextFormField(
                validator: passValidate,
                controller: passController,
                obscureText: !isPasswordVisible,
                onChanged: (value) {},
                decoration: UIbase.getCustomWiget(
                  hint: 'Enter Password Here',
                  labelText: 'Enter Your Password',
                  mPrefixIcon: Icons.password,
                  mSuffixIcon: isPasswordVisible
                      ? Icons.visibility
                      : Icons.visibility_off,
                  onSuffixIconTap: () {
                    isPasswordVisible = !isPasswordVisible;
                    setState(() {});
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == "") {
                    return "Please fill the Age Field";
                  } else if (int.parse(value!.toString()) < 16) {
                    return "Your age must be above 16 yrs";
                  }
                  return null;
                },
                onChanged: (value) {},
                decoration: UIbase.getCustomWiget(
                  hint: 'Enter Agr Here',
                  labelText: 'Enter Age Password',
                  mPrefixIcon: Icons.man,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    // emailController.text = "";
                    if (formKey.currentState != null) {
                      // formKey.currentState!.reset();

                      if (formKey.currentState!.validate()) {
                        formKey.currentState!.save;

                        print(email);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Scaffold(
                              appBar: AppBar(
                                title: Text("home page"),
                              ),
                            ),
                          ),
                        );
                      }
                    }
                  },
                  child: Text("Login"))
            ],
          ),
        ),
      ),
    );
  }
}
