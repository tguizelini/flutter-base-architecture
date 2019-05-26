import 'package:flutter/material.dart';
import 'package:flutter_architecture/components/button/index.dart';
import 'package:flutter_architecture/components/edit_text/index.dart';
import 'package:flutter_architecture/components/divider_input/index.dart';

import 'package:flutter_architecture/values/strings.dart' as strings;

class FormEscritorio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        EditText(
          placeholder: strings.login["escritorio_input_cod_escritoio"],
          keyboardType: TextInputType.number,
        ),
        DividerInput(),
        EditText(
          placeholder: strings.login["escritorio_input_cod_aasp"],
          keyboardType: TextInputType.number,
        ),
        DividerInput(),
        EditText(
          placeholder: strings.login["escritorio_input_senha"]
        ),
        DividerInput(),
        Row(
          children: <Widget>[
            Expanded(
              child: Text(strings.login["label_recuperar_senha"]),
            ),
            Button(
              onPress: () => print("clicou"),
              label: strings.login["button_login"]
            )
          ],
        )
      ],
    );
  }

}