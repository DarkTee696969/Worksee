import 'package:flutter/material.dart';

class Meng extends StatefulWidget {
  const Meng({Key? key});

  @override
  State<Meng> createState() => _MengState();
}

class _MengState extends State<Meng> {
  String? _selectedMeng;
  String? _selectedLanguage;
  bool _agreedToTerms = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registration Form'),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage('https://img5.pic.in.th/file/secure-sv1/th-1932223176b8e79ec.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('สาขา', style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0))),
              DropdownButtonFormField<String>(
                value: _selectedMeng,
                hint: Text('เลือกสาขา'),
                items: [
                  DropdownMenuItem(value: 'Computer Science', child: Text('วิทยาการคอมพิวเตอร์')),
                  DropdownMenuItem(value: 'Information Technology', child: Text('เทคโนโลยีสารสนเทศ')),
                ],
                onChanged: (value) {
                  setState(() {
                    _selectedMeng = value;
                  });
                },
              ),
              SizedBox(height: 20),
              Text('Language', style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0))),
              Column(
                children: <Widget>[
                  RadioListTile(
                    title: Text('Thai', style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0))),
                    value: 'Thai',
                    groupValue: _selectedLanguage,
                    onChanged: (value) {
                      setState(() {
                        _selectedLanguage = value as String?;
                      });
                    },
                  ),
                  RadioListTile(
                    title: Text('English', style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0))),
                    value: 'English',
                    groupValue: _selectedLanguage,
                    onChanged: (value) {
                      setState(() {
                        _selectedLanguage = value as String?;
                      });
                    },
                  ),
                  RadioListTile(
                    title: Text('Chinese', style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0))),
                    value: 'Chinese',
                    groupValue: _selectedLanguage,
                    onChanged: (value) {
                      setState(() {
                        _selectedLanguage = value as String?;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: <Widget>[
                  Checkbox(
                    value: _agreedToTerms,
                    onChanged: (value) {
                      setState(() {
                        _agreedToTerms = value!;
                      });
                    },
                  ),
                  Text('นโยบายความเป็นส่วนตัว', style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0))),
                ],
              ),
              SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: _agreedToTerms ? () {} : null,
                  child: Text('ยืนยันตัวตน'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
//652021061 ปัญจพล จันทโร