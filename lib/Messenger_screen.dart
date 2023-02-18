import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget {
  const MessengerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: CircleAvatar(
            radius: 30.0,
            backgroundImage: NetworkImage('https://scontent-hbe1-1.xx.fbcdn.net/v/t39.30808-6/313208618_4049467041944287_494431004897973793_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=174925&_nc_ohc=0iLPdQPDV5cAX9YxlCQ&_nc_ht=scontent-hbe1-1.xx&oh=00_AfApP7wpf61C09_paTwKk_31CnKWfJljg-8n_E7AGP15hw&oe=63DB8140'),
          ),
        ),
        title: Text(
          'chats',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25.0,
          ), 
        ),
        actions: [
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.grey.withOpacity(0.5),
              ),
              Icon(
                Icons.camera_alt,
              ),
            ],
          ),
          SizedBox(
            width: 5.0,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              alignment: AlignmentDirectional.center,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey.withOpacity(0.5),
                ),
                Icon(
                  Icons.edit,
                ),
              ],
            ),
          ),
        ],
        elevation: 30.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                  color: Colors.grey,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.search,
                        color: Colors.white,
                        size: 20.0,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        'Search',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: 100.0,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => buildStoryItem(),
                    separatorBuilder:(context, index) => SizedBox(
                      width: 10.0,
                    ) ,
                    itemCount:20 ,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Expanded(
                child: ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                    itemBuilder:(context, index) => buildChatItem(),
                    separatorBuilder: (context, index) => SizedBox(
                      height: 10.0,
                    ),
                    itemCount:20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
 //arrow Function
  Widget buildStoryItem()=> Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(
                'https://scontent-hbe1-1.xx.fbcdn.net/v/t39.30808-6/313208618_4049467041944287_494431004897973793_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=174925&_nc_ohc=0iLPdQPDV5cAX9YxlCQ&_nc_ht=scontent-hbe1-1.xx&oh=00_AfApP7wpf61C09_paTwKk_31CnKWfJljg-8n_E7AGP15hw&oe=63DB8140'
            ),
            radius: 30.0,

          ),
          CircleAvatar(
            backgroundColor: Colors.black,
            radius: 12.0,
          ),
          CircleAvatar(
            backgroundColor: Colors.green,
            radius: 10.0,
          ),
        ],
      ),
      SizedBox(
        width: 10.0,
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'baidaa Muhammed',
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: 20.0,
          ),
          Text(
            'Welcome to Flutter',
            style: TextStyle(
              fontSize: 15.0,
              color: Colors.white,
            ),
          ),



        ],
      ),
      Spacer(),
      Text(
        '11:37 PM',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20.0,
        ),
      ),
    ],
  );
  Widget buildChatItem()=>Column(
    children: [
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://scontent-hbe1-1.xx.fbcdn.net/v/t39.30808-6/313208618_4049467041944287_494431004897973793_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=174925&_nc_ohc=0iLPdQPDV5cAX9YxlCQ&_nc_ht=scontent-hbe1-1.xx&oh=00_AfApP7wpf61C09_paTwKk_31CnKWfJljg-8n_E7AGP15hw&oe=63DB8140'
                ),
                radius: 30.0,

              ),
              CircleAvatar(
                backgroundColor: Colors.black,
                radius: 12.0,
              ),
              CircleAvatar(
                backgroundColor: Colors.green,
                radius: 10.0,
              ),
            ],
          ),
          SizedBox(
            width: 10.0,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'baidaa Muhammed',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 20.0,
              ),
              Text(
                'Welcome to Flutter',
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.white,
                ),
              ),



            ],
          ),
          Spacer(),
          Text(
            '11:37 PM',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
        ],
      ),
      SizedBox(
        height: 20.0,
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://scontent-hbe1-1.xx.fbcdn.net/v/t39.30808-6/313208618_4049467041944287_494431004897973793_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=174925&_nc_ohc=0iLPdQPDV5cAX9YxlCQ&_nc_ht=scontent-hbe1-1.xx&oh=00_AfApP7wpf61C09_paTwKk_31CnKWfJljg-8n_E7AGP15hw&oe=63DB8140'
                ),
                radius: 30.0,

              ),
              CircleAvatar(
                backgroundColor: Colors.black,
                radius: 12.0,
              ),
              CircleAvatar(
                backgroundColor: Colors.green,
                radius: 10.0,
              ),
            ],
          ),
          SizedBox(
            width: 10.0,
          ),
          Column(
            children: [
              Text(
                'baidaa Muhammed',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 20.0,
              ),
              Text(
                'Welcome to Flutter',
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.white,
                ),
              ),



            ],
          ),
          Spacer(),
          Text(
            '11:37 PM',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
        ],
      ),
      SizedBox(
        height: 20.0,
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://scontent-hbe1-1.xx.fbcdn.net/v/t39.30808-6/313208618_4049467041944287_494431004897973793_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=174925&_nc_ohc=0iLPdQPDV5cAX9YxlCQ&_nc_ht=scontent-hbe1-1.xx&oh=00_AfApP7wpf61C09_paTwKk_31CnKWfJljg-8n_E7AGP15hw&oe=63DB8140'
                ),
                radius: 30.0,

              ),
              CircleAvatar(
                backgroundColor: Colors.black,
                radius: 12.0,
              ),
              CircleAvatar(
                backgroundColor: Colors.green,
                radius: 10.0,
              ),
            ],
          ),
          SizedBox(
            width: 10.0,
          ),
          Column(
            children: [
              Text(
                'baidaa Muhammed',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 20.0,
              ),
              Text(
                'Welcome to Flutter',
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.white,
                ),
              ),



            ],
          ),
          Spacer(),
          Text(
            '11:37 PM',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
        ],
      ),
      SizedBox(
        height: 20.0,
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://scontent-hbe1-1.xx.fbcdn.net/v/t39.30808-6/313208618_4049467041944287_494431004897973793_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=174925&_nc_ohc=0iLPdQPDV5cAX9YxlCQ&_nc_ht=scontent-hbe1-1.xx&oh=00_AfApP7wpf61C09_paTwKk_31CnKWfJljg-8n_E7AGP15hw&oe=63DB8140'
                ),
                radius: 30.0,

              ),
              CircleAvatar(
                backgroundColor: Colors.black,
                radius: 12.0,
              ),
              CircleAvatar(
                backgroundColor: Colors.green,
                radius: 10.0,
              ),
            ],
          ),
          SizedBox(
            width: 10.0,
          ),
          Column(
            children: [
              Text(
                'baidaa Muhammed',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 20.0,
              ),
              Text(
                'Welcome to Flutter',
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.white,
                ),
              ),



            ],
          ),
          Spacer(),
          Text(
            '11:37 PM',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
        ],
      ),
      SizedBox(
        height: 20.0,
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://scontent-hbe1-1.xx.fbcdn.net/v/t39.30808-6/313208618_4049467041944287_494431004897973793_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=174925&_nc_ohc=0iLPdQPDV5cAX9YxlCQ&_nc_ht=scontent-hbe1-1.xx&oh=00_AfApP7wpf61C09_paTwKk_31CnKWfJljg-8n_E7AGP15hw&oe=63DB8140'
                ),
                radius: 30.0,

              ),
              CircleAvatar(
                backgroundColor: Colors.black,
                radius: 12.0,
              ),
              CircleAvatar(
                backgroundColor: Colors.green,
                radius: 10.0,
              ),
            ],
          ),
          SizedBox(
            width: 10.0,
          ),
          Column(
            children: [
              Text(
                'baidaa Muhammed',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 20.0,
              ),
              Text(
                'Welcome to Flutter',
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.white,
                ),
              ),



            ],
          ),
          Spacer(),
          Text(
            '11:37 PM',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
        ],
      ),
      SizedBox(
        height: 20.0,
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://scontent-hbe1-1.xx.fbcdn.net/v/t39.30808-6/313208618_4049467041944287_494431004897973793_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=174925&_nc_ohc=0iLPdQPDV5cAX9YxlCQ&_nc_ht=scontent-hbe1-1.xx&oh=00_AfApP7wpf61C09_paTwKk_31CnKWfJljg-8n_E7AGP15hw&oe=63DB8140'
                ),
                radius: 30.0,

              ),
              CircleAvatar(
                backgroundColor: Colors.black,
                radius: 12.0,
              ),
              CircleAvatar(
                backgroundColor: Colors.green,
                radius: 10.0,
              ),
            ],
          ),
          SizedBox(
            width: 10.0,
          ),
          Column(
            children: [
              Text(
                'baidaa Muhammed',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 20.0,
              ),
              Text(
                'Welcome to Flutter',
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.white,
                ),
              ),



            ],
          ),
          Spacer(),
          Text(
            '11:37 PM',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
        ],
      ),
      SizedBox(
        height: 20.0,
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://scontent-hbe1-1.xx.fbcdn.net/v/t39.30808-6/313208618_4049467041944287_494431004897973793_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=174925&_nc_ohc=0iLPdQPDV5cAX9YxlCQ&_nc_ht=scontent-hbe1-1.xx&oh=00_AfApP7wpf61C09_paTwKk_31CnKWfJljg-8n_E7AGP15hw&oe=63DB8140'
                ),
                radius: 30.0,

              ),
              CircleAvatar(
                backgroundColor: Colors.black,
                radius: 12.0,
              ),
              CircleAvatar(
                backgroundColor: Colors.green,
                radius: 10.0,
              ),
            ],
          ),
          SizedBox(
            width: 10.0,
          ),
          Column(
            children: [
              Text(
                'baidaa Muhammed',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 20.0,
              ),
              Text(
                'Welcome to Flutter',
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.white,
                ),
              ),



            ],
          ),
          Spacer(),
          Text(
            '11:37 PM',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
        ],
      ),
      SizedBox(
        height: 20.0,
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://scontent-hbe1-1.xx.fbcdn.net/v/t39.30808-6/313208618_4049467041944287_494431004897973793_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=174925&_nc_ohc=0iLPdQPDV5cAX9YxlCQ&_nc_ht=scontent-hbe1-1.xx&oh=00_AfApP7wpf61C09_paTwKk_31CnKWfJljg-8n_E7AGP15hw&oe=63DB8140'
                ),
                radius: 30.0,

              ),
              CircleAvatar(
                backgroundColor: Colors.black,
                radius: 12.0,
              ),
              CircleAvatar(
                backgroundColor: Colors.green,
                radius: 10.0,
              ),
            ],
          ),
          SizedBox(
            width: 10.0,
          ),
          Column(
            children: [
              Text(
                'baidaa Muhammed',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 20.0,
              ),
              Text(
                'Welcome to Flutter',
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.white,
                ),
              ),



            ],
          ),
          Spacer(),
          Text(
            '11:37 PM',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
        ],
      ),
      SizedBox(
        height: 20.0,
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://scontent-hbe1-1.xx.fbcdn.net/v/t39.30808-6/313208618_4049467041944287_494431004897973793_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=174925&_nc_ohc=0iLPdQPDV5cAX9YxlCQ&_nc_ht=scontent-hbe1-1.xx&oh=00_AfApP7wpf61C09_paTwKk_31CnKWfJljg-8n_E7AGP15hw&oe=63DB8140'
                ),
                radius: 30.0,

              ),
              CircleAvatar(
                backgroundColor: Colors.black,
                radius: 12.0,
              ),
              CircleAvatar(
                backgroundColor: Colors.green,
                radius: 10.0,
              ),
            ],
          ),
          SizedBox(
            width: 10.0,
          ),
          Column(
            children: [
              Text(
                'baidaa Muhammed',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 20.0,
              ),
              Text(
                'Welcome to Flutter',
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.white,
                ),
              ),



            ],
          ),
          Spacer(),
          Text(
            '11:37 PM',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
        ],
      ),
      SizedBox(
        height: 20.0,
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://scontent-hbe1-1.xx.fbcdn.net/v/t39.30808-6/313208618_4049467041944287_494431004897973793_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=174925&_nc_ohc=0iLPdQPDV5cAX9YxlCQ&_nc_ht=scontent-hbe1-1.xx&oh=00_AfApP7wpf61C09_paTwKk_31CnKWfJljg-8n_E7AGP15hw&oe=63DB8140'
                ),
                radius: 30.0,

              ),
              CircleAvatar(
                backgroundColor: Colors.black,
                radius: 12.0,
              ),
              CircleAvatar(
                backgroundColor: Colors.green,
                radius: 10.0,
              ),
            ],
          ),
          SizedBox(
            width: 10.0,
          ),
          Column(
            children: [
              Text(
                'baidaa Muhammed',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 20.0,
              ),
              Text(
                'Welcome to Flutter',
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.white,
                ),
              ),



            ],
          ),
          Spacer(),
          Text(
            '11:37 PM',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
        ],
      ),
      SizedBox(
        height: 20.0,
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://scontent-hbe1-1.xx.fbcdn.net/v/t39.30808-6/313208618_4049467041944287_494431004897973793_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=174925&_nc_ohc=0iLPdQPDV5cAX9YxlCQ&_nc_ht=scontent-hbe1-1.xx&oh=00_AfApP7wpf61C09_paTwKk_31CnKWfJljg-8n_E7AGP15hw&oe=63DB8140'
                ),
                radius: 30.0,

              ),
              CircleAvatar(
                backgroundColor: Colors.black,
                radius: 12.0,
              ),
              CircleAvatar(
                backgroundColor: Colors.green,
                radius: 10.0,
              ),
            ],
          ),
          SizedBox(
            width: 10.0,
          ),
          Column(
            children: [
              Text(
                'baidaa Muhammed',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 20.0,
              ),
              Text(
                'Welcome to Flutter',
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.white,
                ),
              ),



            ],
          ),
          Spacer(),
          Text(
            '11:37 PM',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
        ],
      ),

    ],
  );
}
