import 'package:flutter/material.dart';
import 'package:payroll/common/widgets/resusable_elevated_button.dart';
import 'package:payroll/common/widgets/reusable_radio_button.dart';
import 'package:payroll/common/widgets/reusable_textfield.dart';

class MobileAddEmployeeView extends StatefulWidget {
  const MobileAddEmployeeView({super.key});

  @override
  State<MobileAddEmployeeView> createState() => _MobileAddEmployeeViewState();
}

class _MobileAddEmployeeViewState extends State<MobileAddEmployeeView> {
  int? selectedGender;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Employee'),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          height: size.height - 150,
          width: size.width,
          padding: EdgeInsets.all(size.width * 0.05),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  const ReusableTextField(
                    hintText: 'First Name',
                    lable: 'First Name',
                  ),
                  const SizedBox(height: 10),
                  const ReusableTextField(
                    hintText: 'Middle Name',
                    lable: 'Middle Name',
                  ),
                  const SizedBox(height: 10),
                  const ReusableTextField(
                    hintText: 'Last Name',
                    lable: 'Last Name',
                  ),
                  const SizedBox(height: 10),
                  const ReusableTextField(
                    hintText: 'Permanent Address',
                    lable: 'Address',
                    maxLines: 3,
                  ),
                  const SizedBox(height: 10),
                  const ReusableTextField(
                    hintText: 'DD/MM/YYYY',
                    lable: 'DOB',
                    keyboardType: TextInputType.number,
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        child: ReusableRadioButton(
                          value: 1,
                          groupValue: selectedGender,
                          label: 'Male',
                          onChanged: (value) {
                            setState(() {
                              selectedGender = value;
                            });
                          },
                        ),
                      ),
                      Expanded(
                        child: ReusableRadioButton(
                          value: 0,
                          groupValue: selectedGender,
                          label: 'Female',
                          onChanged: (value) {
                            setState(() {
                              selectedGender = value;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const ReusableTextField(
                    hintText: 'PAN NO.',
                    lable: 'PAN NO.',
                    keyboardType: TextInputType.number,
                  ),
                  const SizedBox(height: 10),
                  const ReusableTextField(
                    hintText: 'Aadhar NO.',
                    lable: 'Aadhar NO.',
                    keyboardType: TextInputType.number,
                  ),
                ],
              ),
              ReusableElevatedButton(
                size: size,
                label: 'Next',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
