import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InstagramScreen extends StatelessWidget {
  const InstagramScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 60.0,
        backgroundColor: Colors.black,
        leadingWidth: 150.0,
        leading: Row(
          children: [
            Text(
              'Instagram',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20.0,
              ),
            ),
            SizedBox(
              width: 5.0,
            ),
            Icon(
              Icons.arrow_drop_down_outlined,
            ),
          ],
        ),
        actions: [
          IconButton(onPressed: ()
          {
          },
            icon: Icon( Icons.add_comment_outlined),
          ),
          IconButton(onPressed: ()
          {
          },
            icon: Stack(
              alignment: AlignmentDirectional.topEnd,
              children: [
                Icon( Icons.favorite_border),
                CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: 4.0,
                ),

              ],
            ),

          ),
          IconButton(onPressed: ()
          {
          },
            icon: Stack(
              alignment: AlignmentDirectional.topEnd,
              children: [
                Icon(
                  FontAwesomeIcons.facebookMessenger,
                ),
                CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: 8.0,
                  child: Text(
                    '6',
                  ),
                ),

              ],
            ),

          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Expanded(
          child: Column(
            children: [
              Column(
                children: [

                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                          'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcS-a3AwP3Jo6C0Nkl5p-_Rn-NZz6bQEeg_z9qdVHIjZ3RiMydYF',
                        ),
                        radius: 25.0,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        'dude.coder',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                      Spacer(),
                      Icon(
                        FontAwesomeIcons.ellipsis,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  Container(
                    width: double.infinity,

                    child: Image(
                        image:NetworkImage('https://upload.wikimedia.org/wikipedia/en/thumb/3/3b/SpongeBob_SquarePants_character.svg/800px-SpongeBob_SquarePants_character.svg.png'),
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(onPressed: (){},
                          icon: Icon(
                            FontAwesomeIcons.heart,
                            color: Colors.white,
                          ),
                      ),
                      IconButton(onPressed: (){},
                        icon: Icon(
                          FontAwesomeIcons.comment,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(onPressed: (){},
                        icon: Icon(
                          FontAwesomeIcons.share,
                          color: Colors.white,
                        ),
                      ),
                      Spacer(),
                      IconButton(onPressed: (){},
                        icon: Icon(
                          FontAwesomeIcons.bookmark,
                          color: Colors.white,
                        ),
                      ),

                    ],
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                          'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcS-a3AwP3Jo6C0Nkl5p-_Rn-NZz6bQEeg_z9qdVHIjZ3RiMydYF',
                        ),
                        radius: 10.0,
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                          'like by ',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Flutter.deviser and 44 Others',
                        maxLines: 1,
                        overflow:TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),

                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: [
                      Text(
                        'dude.coder',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Expanded(
                        child: Text(
                          'Fiebase In-app messaging helps you engage your app`s active users by sending them targeted ',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          maxLines:2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
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

