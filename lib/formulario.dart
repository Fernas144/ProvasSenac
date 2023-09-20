import 'package:flutter/material.dart';

class Formulario extends StatefulWidget {
  @override
  State<Formulario> createState() => _FormularioState();
}

class _FormularioState extends State<Formulario> {
  final _formKey = GlobalKey<FormState>();
  String _nome = "";
  String _email = "";
  String _senha = "";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Scaffold(
        body: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(label: Text('Nome')),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Por favor, insira seu nome';
                    }
                    return null;
                  },
                  onSaved: (newValue) => {_nome = newValue ?? ""},
                ),
                const SizedBox(height: 20),
                TextFormField(
                  decoration: const InputDecoration(label: Text('Email')),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Por favor, insira seu Email';
                    }
                    return null;
                  },
                  onSaved: (newValue) => {_senha = newValue ?? ""},
                ),
                const SizedBox(height: 20),
                TextFormField(
                  decoration: const InputDecoration(label: Text('Senha')),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Por favor, insira sua Senha';
                    }
                    return null;
                  },
                  onSaved: (newValue) => {_senha = newValue ?? ""},
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                    onPressed: () => {
                          if (_formKey.currentState!.validate())
                            {_formKey.currentState!.save()}
                        },
                    child: const Text('Enviar')),
              ],
            )),
      ),
    );
  }
}
