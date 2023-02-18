import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Icon (
          Icons.arrow_back,
        ),
        actions: [
          IconButton(onPressed: (){
            print('please try again');
          },
            icon: Icon(Icons.sunny),)
        ],
      ),

      body: Container(
        alignment: AlignmentDirectional.center,
        color: Colors.black,
        child: Column(
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage('https://scontent.fcai19-3.fna.fbcdn.net/v/t39.30808-6/323894744_754411889444261_268180208156814523_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=Umxu94vSFREAX_qXmML&_nc_ht=scontent.fcai19-3.fna&oh=00_AfDXV7gaP4aQ_QqYac1sbn7c9maGzfNHibwBZcaIYQMX0Q&oe=63D9C749'),
                  radius: 70.0,
                ),
                CircleAvatar(
                  backgroundColor: Colors.yellow,
                  radius: 20.0,
                  child: Icon(
                    Icons.edit,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Baidaa Muhammed',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              'baidaasalem201@gmail.com',
              style: TextStyle(
                color: Colors.white38,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              width: 200.0,
              height: 50.0,
              alignment: AlignmentDirectional.center,
              decoration: BoxDecoration(
                borderRadius:BorderRadius.circular(20.0),
                color: Colors.yellow,
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Upgrade to pro',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
           SingleChildScrollView(
             scrollDirection: Axis.vertical,
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Container(
                   width: 300.0,
                   height: 50.0,
                   alignment: AlignmentDirectional.center,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(20.0),
                     color: Colors.grey.withOpacity(0.5),
                   ),
                   child: Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Row(
                       children: [
                         Icon(
                           Icons.person_outline_outlined,
                           color: Colors.white,
                         ),
                         SizedBox(
                           width: 10.0,
                         ),
                         Text(
                           'privacy',
                           style: TextStyle(
                             color: Colors.white,
                             fontSize: 20.0,
                             fontWeight: FontWeight.bold,
                           ),
                         ),
                         Spacer(),
                         Icon(
                           Icons.arrow_forward_ios,
                           color: Colors.white,
                         ),
                       ],
                     ),
                   ),
                 ),
                 SizedBox(
                   height: 10.0,
                 ),
                 Container(
                   width: 300.0,
                   height: 50.0,
                   alignment: AlignmentDirectional.center,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(20.0),
                     color: Colors.grey.withOpacity(0.5),
                   ),
                   child: Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Row(
                       children: [
                         Icon(
                           Icons.settings_backup_restore_rounded,
                           color: Colors.white,
                         ),
                         SizedBox(
                           width: 10.0,
                         ),
                         Text(
                           'purchase history',
                           style: TextStyle(
                             color: Colors.white,
                             fontSize: 20.0,
                             fontWeight: FontWeight.bold,
                           ),
                         ),
                         Spacer(),
                         Icon(
                           Icons.arrow_forward_ios,
                           color: Colors.white,
                         ),
                       ],
                     ),
                   ),
                 ),
                 SizedBox(
                   height: 10.0,
                 ),
                 Container(
                   width: 300.0,
                   height: 50.0,
                   alignment: AlignmentDirectional.center,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(20.0),
                     color: Colors.grey.withOpacity(0.5),
                   ),
                   child: Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Row(
                       children: [
                         Icon(
                           Icons.question_mark,
                           color: Colors.white,
                         ),
                         SizedBox(
                           width: 10.0,
                         ),
                         Text(
                           'Help & Support',
                           style: TextStyle(
                             color: Colors.white,
                             fontSize: 20.0,
                             fontWeight: FontWeight.bold,
                           ),
                         ),
                         Spacer(),
                         Icon(
                           Icons.arrow_forward_ios,
                           color: Colors.white,
                         ),
                       ],
                     ),
                   ),
                 ),
                 SizedBox(
                   height: 10.0,
                 ),
                 Container(
                   width: 300.0,
                   height: 50.0,
                   alignment: AlignmentDirectional.center,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(20.0),
                     color: Colors.grey.withOpacity(0.5),
                   ),
                   child: Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Row(
                       children: [
                         Icon(
                           Icons.settings_rounded,
                           color: Colors.white,
                         ),
                         SizedBox(
                           width: 10.0,
                         ),
                         Text(
                           'Settings',
                           style: TextStyle(
                             color: Colors.white,
                             fontSize: 20.0,
                             fontWeight: FontWeight.bold,
                           ),
                         ),
                         Spacer(),
                         Icon(
                           Icons.arrow_forward_ios,
                           color: Colors.white,
                         ),
                       ],
                     ),
                   ),
                 ),
                 SizedBox(
                   height: 10.0,
                 ),
                 Container(
                   width: 300.0,
                   height: 50.0,
                   alignment: AlignmentDirectional.center,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(20.0),
                     color: Colors.grey.withOpacity(0.5),
                   ),
                   child: Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Row(
                       children: [
                         Icon(
                           Icons.person_add_alt_1_rounded,
                           color: Colors.white,
                         ),
                         SizedBox(
                           width: 10.0,
                         ),
                         Text(
                           'invite a friend',
                           style: TextStyle(
                             color: Colors.white,
                             fontSize: 20.0,
                             fontWeight: FontWeight.bold,
                           ),
                         ),
                         Spacer(),
                         Icon(
                           Icons.arrow_forward_ios,
                           color: Colors.white,
                         ),
                       ],
                     ),
                   ),
                 ),
                 SizedBox(
                   height: 10.0,
                 ),
                 Container(
                   width: 300.0,
                   height: 50.0,
                   alignment: AlignmentDirectional.center,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(20.0),
                     color: Colors.grey.withOpacity(0.5),
                   ),
                   child: Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Row(
                       children: [
                         Icon(
                           Icons.login,
                           color: Colors.white,
                         ),
                         SizedBox(
                           width: 10.0,
                         ),
                         Text(
                           'Logout',
                           style: TextStyle(
                             color: Colors.white,
                             fontSize: 20.0,
                             fontWeight: FontWeight.bold,
                           ),
                         ),
                         Spacer(),
                         Icon(
                           Icons.arrow_forward_ios,
                           color: Colors.white,
                         ),
                       ],
                     ),
                   ),
                 ),
               ],
             ),
           ),


          ],
        ),
      ),
    );
  }
}