import 'package:flutter/material.dart';
import 'package:user_information/controllers/user_information_controller.dart';
import 'package:user_information/models/user_model.dart';
import 'package:user_information/utilities/constants.dart';
import 'package:user_information/utilities/custom_colors.dart';
import 'package:user_information/utilities/size_config.dart';
import 'reusable_widgets/customText.dart';

class UserInformationScreen extends StatefulWidget {
  @override
  _UserInformationScreenState createState() => _UserInformationScreenState();
}

class _UserInformationScreenState extends State<UserInformationScreen> {
  final UserInformationController _userInformationController=UserInformationController();

  
 @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: screenBackground,
        body: Column(
          children: [

            Container(
              color: white,
              alignment: Alignment.center,
              height: SizeConfig.convertHeight(context, 50),
              child: Container(child: Center(child: Text("User information"),),)
            ),


            SizedBox(
              height:SizeConfig.convertHeight(context, 10),
            ),

            
            Container(
              height: SizeConfig.convertHeight(context, 480),
              child: FutureBuilder<List<User>>(
                future: _userInformationController.fetchUsers(),
                builder: (context,snapshot){
                  var users =snapshot.data;
                  if(users==null){
                   return Center(child: CircularProgressIndicator(),); 
                  }
                  return ListView.separated(
                    separatorBuilder: (context, index) =>
                      SizedBox(
                        height:SizeConfig.convertHeight(context, 7),
                      ),
                      physics: ScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: users.length,
                      itemBuilder: (BuildContext context, int index) {
                      return UserInformationCard(
                        userName: users[index].name,
                        userEmail:  users[index].email,
                        userPhoneNumber: users[index].phone,
                        userWebsite: users[index].website,
                      );
                    }
                  );
                }
              ),
            ),



          ],
        ),
      ),  
    );
  }
}

class UserInformationCard extends StatelessWidget {
  String? userName,userEmail,userPhoneNumber,userWebsite;
  UserInformationCard({
    Key? key,
    this.userName,
    this.userEmail,
    this.userPhoneNumber,
    userWebsite,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height:SizeConfig.convertHeight(context, 130),
      width: SizeConfig.convertWidth(context, 100),
      child: Card(
        color: white,
        elevation: 0.5,
        shape: kCardShape,
        child: Container(
          padding: EdgeInsets.all(10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [

              Image.asset(
                "assets/images/User-icon.png",
                height: SizeConfig.convertHeight(context, 50),
                fit: BoxFit.cover,
              ),


              SizedBox(
                width: 10,
              ),


              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  customText(
                    labelText: 'Customer name',
                    labelTextStyle: ksubtitleTextStyle,
                  ),
                  customText(
                    labelText:userName!,
                    labelTextStyle: kTitleTextStyle,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  customText(
                    labelText:'Customer email id:',
                    labelTextStyle: ksubtitleTextStyle,
                  ),
                  customText(
                    labelText: userEmail!,
                    labelTextStyle: kTitleTextStyle,
                  ),
                   SizedBox(
                    height: 10,
                  ),   
                  customText(
                    labelText:'Customer phone number',
                    labelTextStyle: ksubtitleTextStyle,
                  ),
                   customText(
                    labelText:userPhoneNumber!,
                    labelTextStyle: kTitleTextStyle,
                  ),
                ]
              ),
            ],
          ),
        ),
      )
    );
  }

  
}

