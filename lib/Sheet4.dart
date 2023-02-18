import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://images.unsplash.com/photo-1606814893907-c2e42943c91f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8ZWd5cHRpYW4lMjBnaXJsfGVufDB8fDB8fA%3D%3D&w=1000&q=80',
                    ),
                    radius: 40.0,

                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Sarah Abs',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        'sarah@abs.com',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),

                    ],
                  ),
                  Spacer(),
                  Stack(
                    alignment:AlignmentDirectional.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.grey.withOpacity(0.5),
                        radius: 30.0,
                      ),
                      Icon(
                        Icons.add_comment,
                        color: Colors.white,
                      ),
                    ],
                  ),

                ],
              ),
              SizedBox(
                height: 50.0,
              ),
              Column(
                children: [
                  Container(
                    child: Row(
                      children: [
                       IconButton(onPressed: (){}, icon:Icon(Icons.people)),
                        SizedBox(

                        ),
                        Text(
                          'People',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,

                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),

    );
  }
}
