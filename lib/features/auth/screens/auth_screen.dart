import 'package:amazon_clone/common/widgets/custom_button.dart';
import 'package:amazon_clone/common/widgets/custom_textfield.dart';
import 'package:amazon_clone/constants/global_variable.dart';
import 'package:flutter/material.dart';

enum Auth { signin, signup }

class AuthScreen extends StatefulWidget {
  static const String routeName = '/authScreen';
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  Auth _auth = Auth.signup;
  final _signUpFormkey = GlobalKey<FormState>();
  final _signInFormkey = GlobalKey<FormState>();
  final TextEditingController _emailControleer = TextEditingController();
  final TextEditingController _poasswordControler = TextEditingController();
  final TextEditingController _nameControler = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailControleer.dispose();
    _nameControler.dispose();
    _poasswordControler.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalVariable.greyBackgroundCOlor,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "WElcome",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
            ),
            ListTile(
              tileColor: _auth == Auth.signup
                  ? GlobalVariable.backgroundColor
                  : GlobalVariable.greyBackgroundCOlor,
              title: const Text(
                "Create Account",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              leading: Radio(
                value: Auth.signup,
                groupValue: _auth,
                onChanged: (Auth? val) {
                  setState(() {
                    _auth = val!;
                  });
                },
                activeColor: GlobalVariable.secondaryColor,
              ),
            ),
            if (_auth == Auth.signup)
              Container(
                padding: const EdgeInsets.all(9),
                color: GlobalVariable.backgroundColor,
                child: Form(
                    key: _signUpFormkey,
                    child: Column(
                      children: [
                        CustomTextField(
                          controller: _nameControler,
                          hints: "Name",
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        CustomTextField(
                          controller: _emailControleer,
                          hints: "Email",
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        CustomTextField(
                          controller: _poasswordControler,
                          hints: "Password",
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        CustomBUtton(
                          ontap: () {},
                          title: 'Sign up',
                        )
                      ],
                    )),
              ),
            ListTile(
              tileColor: _auth == Auth.signin
                  ? GlobalVariable.backgroundColor
                  : GlobalVariable.greyBackgroundCOlor,
              title: const Text(
                "Signin Account",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              leading: Radio(
                value: Auth.signin,
                groupValue: _auth,
                onChanged: (Auth? val) {
                  setState(() {
                    _auth = val!;
                  });
                },
                activeColor: GlobalVariable.secondaryColor,
              ),
            ),
            if (_auth == Auth.signin)
              Container(
                padding: const EdgeInsets.all(9),
                color: GlobalVariable.backgroundColor,
                child: Form(
                    key: _signUpFormkey,
                    child: Column(
                      children: [
                        
                        CustomTextField(
                          controller: _emailControleer,
                          hints: "Email",
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        CustomTextField(
                          controller: _poasswordControler,
                          hints: "Password",
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        CustomBUtton(
                          ontap: () {},
                          title: 'Sign up',
                        )
                      ],
                    )),
              ),
            
          ],
        ),
      )),
    );
  }
}
