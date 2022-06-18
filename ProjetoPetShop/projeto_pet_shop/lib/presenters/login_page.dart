import 'package:flutter/material.dart';

import 'cadastro_animal.dart';
class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 250,
        color: Colors.pinkAccent,
        child: Form(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: 
                Text("Usuário",
                  style: TextStyle(fontSize: 25),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50), 
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Insira o nome do Usuário"            ),
                )
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: 
                  Text("Senha",
                    style: TextStyle(fontSize: 25),
                  ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50), 
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Insira a senha"            
                  ),
                )
              ),
              Padding(
                padding: const EdgeInsets.only(top:10),
                child:ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => CadastroAnimal(),));
                  },
                  style: ButtonStyle(
                    backgroundColor:MaterialStateProperty.all<Color>(Colors.pink),
                  ),
                child: const Text("Entrar")
              ),   
            )
          ],
        ),
      ),
    );
  }
}