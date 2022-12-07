import 'package:flutter/material.dart';

class AppTextFieldWidget extends StatelessWidget {
  var name;

  AppTextFieldWidget({
    Key? key,
    required this.name,
    required this.string,
    required this.coontroller,
  }) : super(key: key);

  final TextEditingController coontroller;
  final AppString string;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return 'Поле не должно быть пустым!';
        }
        return null;
      },
      keyboardType: TextInputType.emailAddress,
      controller: name,
      decoration: InputDecoration(
        hintText: string.name,
      ),
    );
  }
}

class AppString {
  get name => null;
}
