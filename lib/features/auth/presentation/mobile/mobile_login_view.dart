import 'package:flutter/material.dart';
import 'package:payroll/common/widgets/resusable_elevated_button.dart';
import 'package:payroll/common/widgets/reusable_textfield.dart';

class MobileLoginView extends StatefulWidget {
  const MobileLoginView({super.key});

  @override
  State<MobileLoginView> createState() => _MobileLoginViewState();
}

class _MobileLoginViewState extends State<MobileLoginView> {
  final TextEditingController usernameControlller = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    usernameControlller.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        padding: EdgeInsets.all(size.width * 0.1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ReusableTextField(
              controller: usernameControlller,
              lable: 'User Name',
              hintText: 'User Name',
              textCapitalization: TextCapitalization.none,
            ),
            const SizedBox(height: 20),
            ReusableTextField(
              controller: passwordController,
              lable: 'Password',
              hintText: 'Password',
              textCapitalization: TextCapitalization.none,
            ),
            const SizedBox(height: 20),
            ReusableElevatedButton(
              size: size,
              label: 'Login',
              onPressed: () {
                if (usernameControlller.text.isNotEmpty &&
                    usernameControlller.text == 'admin' &&
                    passwordController.text.isNotEmpty &&
                    passwordController.text == 'payrolladmin') {
                  print('Admin logged in');
                } else {
                  print('Your not admin');
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
