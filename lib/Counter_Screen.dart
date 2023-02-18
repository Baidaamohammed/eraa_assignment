import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
   var Count =1;
    @override
  void initState()
    {
    super.initState();
  }
 // const CounterScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Counter',
          style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(onPressed: ()
            {
              setState(() {
                Count++;
                print(Count);

              });

            },
                child:
                Text(
                  'plus',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
            ),
            SizedBox(
              width: 20.0,
            ),
            Text(
              '$Count',
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize:40.0,
              ),
            ),
            SizedBox(
              width: 20.0,
            ),
            TextButton(onPressed: ()
            {
              setState(() {

              });
              Count--;
              print(Count);
            },
              child:  Text(
              'minus',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            ),
          ],
        ),
      ),
    );
  }
}

