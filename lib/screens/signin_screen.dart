import 'dart:io';

import 'package:flutter/material.dart';

class SigninScreen extends StatefulWidget{
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState(){ 
    return _SigninScreenState();
  }
}

class _SigninScreenState extends State<SigninScreen>{
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  bool _hidePassword = true;

  @override
  void dispose(){
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @ override
  Widget build (BuildContext context){
    return Scaffold(
      appBar:_buildAppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
          children: [
            _buildHeaderLayout(),
            const SizedBox(height: 24,),
            _buildContentForm(),
            const SizedBox(height: 24,),
            _buildActionButton(),
          ],
          ),
          ),
          ),
        );
  }
  
  PreferredSizeWidget _buildAppBar(){
    return AppBar(
      title: const Text('Welcome to Tyaza Ubwenge'),
    );
  }

  Widget _buildHeaderLayout(){
    return const Column(
      children: [
        Text(
          'Enter into your Tyaza account',
          style:TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold),
        ),
      ],
      );
  }

  Widget _buildContentForm(){
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(labelText: ''),
            validator: (value) => (value == null || value.isEmpty) ? 'Required' : null,
          ),
        ],
        ),
    );
  }

  Widget _buildActionButton(){
    return ElevatedButton(
      onPressed: _handleSubmit, 
      child: const Text ('Submit'),
      );
  }

  void _handleSubmit(){
    if (_formKey.currentState?.validate() ?? false){
      
    }
  }


}