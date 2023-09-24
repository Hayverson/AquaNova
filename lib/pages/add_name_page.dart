import 'package:flutter/material.dart';
import 'package:flutter_firebase/services/firebase_service.dart';

class AddNamePage extends StatefulWidget {
  const AddNamePage({super.key});

  @override
  State<AddNamePage> createState() => _AddNamePageState();
}

class _AddNamePageState extends State<AddNamePage> {
  TextEditingController nameController = TextEditingController(text: "");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('add Name'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              TextField(
                controller: nameController,
                decoration: const InputDecoration(
                    hintText: 'Ingrese los datos a guardar'),
              ),
              ElevatedButton(
                  onPressed: () async {
                    await addpeople(nameController.text).then((_) {
                      Navigator.pop(context);
                    });
                  },
                  child: const Text("Guardar"))
            ],
          ),
        ));
  }
}
