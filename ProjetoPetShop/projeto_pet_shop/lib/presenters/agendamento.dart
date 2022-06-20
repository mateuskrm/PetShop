import 'package:flutter/material.dart';

class Agendamento extends StatelessWidget {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
        return Scaffold(
        body:Container(
          color: Colors.pinkAccent,
          
          child: Form (
            child: Column(
            children: [
              const SizedBox(height: 20),
              const Text("Agendar atendimento", style: TextStyle(
                fontSize: 30,
              )),
              const SizedBox(height: 20),
              StatefulBuilder(
                builder: (BuildContext contex, StateSetter setState)
                {
                  
                  return Column(
                    children: [
                    ElevatedButton(
                      style: ButtonStyle( backgroundColor:MaterialStateProperty.all<Color>(Colors.pink),),
                     onPressed: () async
                    { 
                      final now = DateTime.now();
                      await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime.now(),
                        lastDate: DateTime(now.year, now.month+1, 0),
                      );
                    },
                    child: Text("Escolha uma Data"),
                    ),
                    const SizedBox(height: 20),
                    Container(
                    height: 50,
                    child: CheckboxListTile(
                        contentPadding: const EdgeInsets.symmetric(horizontal: 100),
                        controlAffinity: ListTileControlAffinity.leading,
                        title: const Text("Leva/Traz"),
                        value: isChecked,
                        onChanged: (bool? value){
                        setState((){isChecked = value!;}); 
                      },
                      )
                    ),
                  ],
                  
                 );
                },
            ),
            const SizedBox(height: 20),
            Padding(
              
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: TextFormField(
                  decoration: const InputDecoration(
                  hintText: "Insira o nome do Pet"
                )
              ),
              )
          ],
        )
       )
      )
    );
  }
}
