// ignore_for_file: unnecessary_import, implementation_imports, unused_import, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:me_travel_app/views/register_ui.dart';

class LoginUI extends StatefulWidget {
  const LoginUI({super.key});

  @override
  State<LoginUI> createState() => _LoginUIState();
}

class _LoginUIState extends State<LoginUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text(
          'บันทึกการเดินทาง',
          style: GoogleFonts.itim(),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.25,
              ),
              Image.asset(
                'assets/images/logo.png',
                width: MediaQuery.of(context).size.width * 0.3,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.08,
              ),
              Text(
                'เข้าใช้งานแอปพลิเคชั่น',
                style: GoogleFonts.itim(
                    fontSize: MediaQuery.of(context).size.width * 0.05),
              ),
              Text(
                'บันทึกการเดินทาง',
                style: GoogleFonts.itim(
                    fontSize: MediaQuery.of(context).size.width * 0.05),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.08,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.15,
                ),
                child: Row(
                  children: [
                    Text(
                      'ชื่อผู้ใช้',
                      style: GoogleFonts.itim(
                        fontSize: MediaQuery.of(context).size.width * 0.04,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.15,
                  right: MediaQuery.of(context).size.width * 0.15,
                ),
                child: TextField(),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.05,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.15,
                ),
                child: Row(
                  children: [
                    Text(
                      'รหัสผ่าน :',
                      style: GoogleFonts.itim(
                        fontSize: MediaQuery.of(context).size.width * 0.04,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.15,
                  right: MediaQuery.of(context).size.width * 0.15,
                ),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.visibility_off,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.1,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'SIGN IN',
                  style: GoogleFonts.itim(),
                ),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(
                    MediaQuery.of(context).size.width * 0.7,
                    MediaQuery.of(context).size.width * 0.125,
                  ),
                  backgroundColor: Colors.grey,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(
                    value: false,
                    onChanged: (val) {},
                  ),
                  Text(
                    'จำค่าการเข้าใช้งานแอพลิเคชั่น',
                    style: GoogleFonts.itim(),
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.1,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RegisterUI()
                    ),
                  );
                },
                child: Text(
                  'ลงทะเบียนเข้าใช้งาน',
                  style: GoogleFonts.itim(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
