import 'package:flutter/widgets.dart';
import 'package:worksee/PAGE/meng.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({Key? key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formKey = GlobalKey<FormState>();
  String name = '';
  String username = '';
  String password = '';
  double weight = 0;
  double height = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Registration'),
          centerTitle: true,
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage('https://img2.pic.in.th/pic/07030320221212DSC00265.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: ListView(
                children: <Widget>[
                  CircleAvatar(
                    radius: 105,
                    backgroundColor: const Color.fromARGB(255, 71, 71, 71),
                    child: ClipOval(
                      child: Image.network('https://img5.pic.in.th/file/secure-sv1/th-removebg-preview87a65f4339a6c71a.png', fit: BoxFit.cover),
                    ),
                  ),
                  SizedBox(height: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Name',
                        style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 255, 255, 255)),
                      ),
                      SizedBox(height: 8),
                      TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'กรอกชื่อ',
                          filled: true,
                          fillColor: Color.fromARGB(255, 255, 255, 255).withOpacity(0.8),
                        ),
                        onSaved: (value) {
                          name = value ?? '';
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Username',
                        style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 255, 255, 255)),
                      ),
                      SizedBox(height: 8),
                      TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'กรอกรหัสบน',
                          filled: true,
                          fillColor: Color.fromARGB(255, 255, 255, 255).withOpacity(0.8),
                        ),
                        onSaved: (value) {
                          username = value ?? '';
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Password',
                        style: TextStyle(fontSize: 16, color: Color.fromRGBO(255, 255, 254, 1)),
                      ),
                      SizedBox(height: 8),
                      TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'กรอกรหัสล่าง',
                          filled: true,
                          fillColor: Color.fromARGB(255, 255, 255, 255).withOpacity(0.8),
                        ),
                        onSaved: (value) {
                          password = value ?? '';
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text('Weight: ${weight.toStringAsFixed(1)} kg', style: TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
                  Slider(
                    value: weight,
                    min: 0,
                    max: 1000,
                    divisions: 120,
                    label: weight.toStringAsFixed(1),
                    onChanged: (value) {
                      setState(() {
                        weight = value;
                      });
                    },
                  ),
                  Text('Height: ${height.toStringAsFixed(1)} cm', style: TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
                  Slider(
                    value: height,
                    min: 0,
                    max: 1000,
                    divisions: 150,
                    label: height.toStringAsFixed(1),
                    onChanged: (value) {
                      setState(() {
                        height = value;
                      });
                    },
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Meng()),
                        );
                      }
                    },
                    child: Text('NEXT'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
