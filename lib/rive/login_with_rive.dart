import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rive/rive.dart';

class LoginwithRive extends StatefulWidget {
  const LoginwithRive({super.key});

  @override
  State<LoginwithRive> createState() => _LoginwithRiveState();
}

class _LoginwithRiveState extends State<LoginwithRive> {
  var usernameController = TextEditingController();
  var passwordController = TextEditingController();
  var loginRivePath = "assets/rive/login.riv";
  StateMachineController? loginController;
  Artboard? loginArtBoard;
  SMIBool? isCheck;
  SMIBool? isHandsUp;
  SMITrigger? success;
  SMITrigger? fail;

  bool isVisiable = false;

  @override
  void initState() {
    super.initState();

    rootBundle.load(loginRivePath).then((loginrive) {
      var file = RiveFile.import(loginrive);

      var artBoard = file.mainArtboard;

      loginController =
          StateMachineController.fromArtboard(artBoard, "State Machine 1");

      if (loginController != null) {
        artBoard.addController(loginController!);

        isCheck = loginController!.findSMI('Check');
        isHandsUp = loginController!.findSMI('hands_up');
        success = loginController!.findSMI('success');
        fail = loginController!.findSMI('fail');

        loginArtBoard = artBoard;
        setState(() {});
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login with Rive'),
      ),
      body: loginArtBoard == null
          ? Container(
              width: 100,
              height: 100,
              color: Colors.amber,
            )
          : SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(21.0),
                child: Column(
                  children: [
                    SizedBox(
                      //* Teddy Bear Animation

                      height: 400,
                      child: Rive(artboard: loginArtBoard!),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      // * Login Field Check
                      controller: usernameController,
                      onChanged: (v) {
                        isCheck!.value = true;
                      },
                      onTap: () {
                        isCheck!.value = true;
                      },
                      onEditingComplete: () {
                        isCheck!.value = false;
                      },
                      onTapOutside: (event) {
                        isCheck!.value = false;
                      },
                      onSaved: (newValue) {
                        isCheck!.value = false;
                      },
                      onFieldSubmitted: (value) {
                        isCheck!.value = false;
                      },
                      decoration: const InputDecoration(
                        //* Login Text
                        labelText: 'Username',
                        hintText: "Enter your username",
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.green,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.green,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      //* Password Field with Checks
                      obscureText: !isVisiable,
                      controller: passwordController,
                      onChanged: (value) {
                        isCheck!.value = true;
                      },
                      onTap: () {
                        isCheck!.value = true;
                      },
                      onEditingComplete: () {
                        isCheck!.value = false;
                      },
                      onFieldSubmitted: (event) {
                        isCheck!.value = false;
                      },
                      onTapOutside: (event) {
                        isCheck!.value = false;
                      },

                      decoration: InputDecoration(
                        //* Password Text
                        labelText: 'Password',
                        hintText: "Enter your Password",
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.green,
                          ),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.green,
                          ),
                        ),
                        suffixIcon: InkWell(
                          //* Eye button
                          onTap: () {
                            isVisiable = !isVisiable;
                            isHandsUp!.value = !isHandsUp!.value;
                            setState(() {});
                          },
                          child: isVisiable
                              ? const Icon(Icons.visibility)
                              : const Icon(Icons.visibility_off),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      //* Login Button
                      onPressed: () {
                        var uId = usernameController.text.toString();
                        var uPass = passwordController.text.toString();

                        if (uId == "Admin" && uPass == "123456") {
                          //* ID & Password to Login this page
                          success!.value = true;
                          fail!.value = false;

                          isCheck!.value = false;
                        } else {
                          fail!.value = true;
                          success!.value = false;
                        }
                      },
                      child: const SizedBox(
                        width: double.infinity,
                        child: Center(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "Login",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
    );
  }
}
