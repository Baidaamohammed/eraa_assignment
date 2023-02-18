import 'package:flutter/material.dart';

class LoginScreen1 extends StatelessWidget
{
 var EmailController=TextEditingController();
 var PasswordlController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                    'Login',
                  style: TextStyle(
                    fontSize: 50.0,
                    fontWeight: FontWeight.w500,
                  ) ,
                ),
                SizedBox(
                  height: 30.0,
                ),
                TextFormField(
                  controller:EmailController ,
                  onFieldSubmitted: (value) {
                    print(value);
                  },
                  onChanged: (value) {
                    print(value);
                  },
                  keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(

                  labelText: 'Email Address',
                      border: OutlineInputBorder( borderRadius: BorderRadius.all(Radius.circular(20.0),),),
                      prefixIcon: Icon(
                        Icons.email,
                      ),
                    ),
                  ),
                SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  controller: PasswordlController ,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  onFieldSubmitted: (value) {
                    print(value);
                  },
                  onChanged: (value) {
                    print(value);
                  },
                  decoration: InputDecoration(

                    labelText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0),),
                    ),
                    prefixIcon: Icon(
                      Icons.lock,
                    ),
                    suffixIcon: Icon(
                      Icons.remove_red_eye,
                    ),

                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  width: double.infinity,
                  color:Colors.blue,
                  child: MaterialButton(onPressed: ()
                  {
                    print(EmailController.text);
                    print(PasswordlController.text);
                  },
                    child: Text(
                      'LOGIN',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),

                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account .?',

                    ),
                    TextButton(onPressed: (){},
                      child: Text(
                        'Register Now',
                      ),)
                  ],
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
