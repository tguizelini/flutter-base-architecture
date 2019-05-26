import 'package:flutter_architecture/components/logo/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_architecture/screens/login/tabs_login.dart';
import 'package:flutter_architecture/components/container_corner/index.dart';
import 'package:flutter_architecture/components/container_with_margin/index.dart';
import 'package:flutter_architecture/components/divider_input/index.dart';

import 'package:flutter_architecture/values/strings.dart' as strings;

import 'form_associado.dart';
import 'form_escritorio.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.redAccent,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
                flex: 1,
                child: Container(
                  constraints: BoxConstraints.expand(width: double.infinity),
                  child: Logo(),
                )
            ),
            Expanded(
                flex: 2,
                child: ContainerCorner(
                    color: Colors.white,
                    content: ContainerWithMargin(
                        content: Column(
                      children: <Widget>[
                        DividerInput(),

                        TabsLogin(),

                        DividerInput(),
                        DividerInput(),

                        //Expanded(child: FormEscritorio()),
                        Expanded(child: FormAssociado()),
                        
                        Container(
                          padding: EdgeInsets.only(bottom: 40),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(strings.login["label_nao_afiliado"]),
                              DividerInput(),
                              GestureDetector(
                                onTap: () => print("filie-se clicado"),
                                child: Text(strings.login["link_filie_se"],
                                    style: TextStyle(
                                        color: Colors.redAccent,
                                        fontWeight: FontWeight.bold)),
                              )
                            ],
                          ),
                        )
                      ],
                    ))))
          ],
        ),
      ),
    );
  }
}
