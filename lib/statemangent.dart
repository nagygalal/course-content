import 'package:flutter/material.dart';

class Task extends StatefulWidget {
  const Task({Key? key}) : super(key: key);

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 60.0, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Register',
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10,),
              const Text('REGISTER now to see our products'),
              const SizedBox(height: 25,),
              const TextField(
                decoration: InputDecoration(
                  label: Text('Name'),
                  prefix: Icon(Icons.person),
                  border: OutlineInputBorder()
                ) ,

              ),
              const SizedBox(height: 25,),
              const TextField(
                decoration: InputDecoration(
                    label: Text('Email'),
                    prefix: Icon(Icons.email),
                    border: OutlineInputBorder()
                ) ,

              ),
              const SizedBox(height: 25,),
              const TextField(
                decoration: InputDecoration(
                    label: Text('Password'),
                    prefix: Icon(Icons.lock),
                    border: OutlineInputBorder()
                ) ,

              ),
             const SizedBox(height: 25,),
              const TextField(
                decoration: InputDecoration(
                    label: Text('Phone'),
                    prefix: Icon(Icons.phone_android),
                    border: OutlineInputBorder()
                ) ,

              ),
              const SizedBox(height: 25,),
              Center(
                child: SizedBox(
                  width: 250,
                  height: 45,
                  child: MaterialButton(
                    onPressed: (){},
                    color: Colors.blueAccent,
                    child:  const Text('Register'),

                  ),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
