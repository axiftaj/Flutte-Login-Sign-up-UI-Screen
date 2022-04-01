import 'package:flutter/material.dart';
import 'package:login_speed_code/constants/constants.dart';


//lets star
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30 , vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Sign up for' ,
                      style: Theme.of(context).textTheme.headline1!.copyWith(color: Colors.black),),
                    Text('Bazar' ,
                      style: Theme.of(context).textTheme.headline1!.copyWith(color: primaryColor),)

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        SizedBox(height: 20,),
                        ReusabelSocialContainer(color: fbColor, asset: 'images/fb_icon.png',title: 'Sign up with facebook',),
                        ReusabelSocialContainer(color: Colors.red.shade600, asset: 'images/fb_icon.png',title: 'Sign up with google',),
                        Row(
                          children: const [
                            Expanded(child: Divider()),
                            SizedBox(width: 20,),
                            Text('OR' , style: TextStyle(fontSize: 15),),
                            SizedBox(width: 20,),
                            Expanded(child: Divider()),

    ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('Email or phone number' ,
                              style: Theme.of(context).textTheme.bodyText2!.copyWith(color: secondaryTextColor ),),
                          SizedBox(height: 5,),
                            Container(
                              decoration: BoxDecoration(
                                color: Color(0xff8592a1).withOpacity(0.1),
                                borderRadius: BorderRadius.circular(10)
                              ),
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  enabledBorder: InputBorder.none ,
                                  focusedBorder: InputBorder.none ,
                                  disabledBorder: InputBorder.none ,
                                  errorBorder: InputBorder.none ,

                                ),
                              ),
                            ),
                            SizedBox(height: 15,),

                            Text('Password' ,
                              style: Theme.of(context).textTheme.bodyText2!.copyWith(color: secondaryTextColor ),),
                            SizedBox(height: 5,),
                            Container(
                              decoration: BoxDecoration(
                                  color: Color(0xff8592a1).withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(10),
                              ),
                              child: TextFormField(
                                style: Theme.of(context).textTheme.headline6!.copyWith(color: Color(0xff2d3242)),
                                decoration: const InputDecoration(
                                  suffix: Icon(Icons.visibility_off , color: Colors.red,),
                                  enabledBorder: InputBorder.none ,
                                  focusedBorder: InputBorder.none ,
                                  disabledBorder: InputBorder.none ,
                                  errorBorder: InputBorder.none ,
                                ),
                              ),
                            ),
                            SizedBox(height: 5,),

                          ],
                        ),
                        SizedBox(height: 20,),
                        Row(
                          children: [
                            Icon(Icons.check_box_outline_blank),
                            SizedBox(width: 20,),
                            Text('By creataing an account, your agree to our\n Terms & condition')
                          ],
                        ),
                        SizedBox(height: 20,),
                        Material(
                          color: primaryColor,
                          elevation: 6,
                          borderRadius: BorderRadius.circular(8),
                          child: MaterialButton(
                            minWidth: double.infinity,
                            child: Text('Sign up' , style:
                              Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.white)
                              ,),
                              onPressed: (){}

                              ),
                        ),
                        SizedBox(height: 20,),

                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      )
    );
  }

}

//that's it full souce code will be on my github
// do give a star to repo if it helped
//do subscribe and i will see you in next video

class ReusabelSocialContainer extends StatelessWidget {

  final String title , asset ;
  final Color  color ;
  const ReusabelSocialContainer({Key? key , required this.color , required this.title , required this.asset}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color:color ,
          borderRadius: BorderRadius.circular(5)
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            children: [
              Image(image:  AssetImage(asset),),
              SizedBox(width: 20,),
              Text(title,
              style: Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
