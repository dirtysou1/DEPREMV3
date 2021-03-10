import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:homescreen/plugins_utils/DeviceInfo.dart';
import 'package:homescreen/plugins_utils/Location.dart';
import 'package:homescreen/custom_dialog_box.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  LocationService loca1 = new LocationService();
  UserLocation Loca = new UserLocation();
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/bg.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.end,

          children: [
            new Container(
              decoration: BoxDecoration(

                image: new DecorationImage(
                  fit: BoxFit.cover,
                  colorFilter: new ColorFilter.mode(
                      Colors.black.withOpacity(0.5), BlendMode.dstATop),
                  image: new NetworkImage(
                    'https://www.egeseramik.com/seriler/20161171091766122.jpg',
                  ),
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                'lorem10',
                textAlign: TextAlign.center,
              ),
              margin: EdgeInsets.fromLTRB(20,40,20,20),
              height: 170,
              width: 330,
            ),
            new Container(
              alignment: Alignment.bottomRight,
              child: FlatButton(
                  onPressed: () async {
                    print('yjyyj');
                    AwesomeDialog(context: context,animType: AnimType.SCALE,
                        dialogBackgroundColor: Colors.green,
                      dialogType: DialogType.INFO,
                      body: Center(child: Text(
                        'Yakınlarınıza güvende olduğunuz bilgisi iletilmiştir.',
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),),
                      title: 'This is Ignored',
                      desc:   'This is also Ignored',
                      btnOkText: 'Tamam',
                      btnOkOnPress: () {},
                    )..show();


                  },
                  child: Image(
                    image: new AssetImage('assets/yesil1.png'),
                    fit: BoxFit.cover,

                  )),
            width: 200,height: 200,),Divider(),
            new Container(
              alignment: Alignment.centerRight,

              child: FlatButton(
                hoverColor: Colors.purpleAccent,
                onPressed: () async {
                  print("FlatButton");
                  DeviceInfo.getAndroidDeviceInfo();
                  loca1.location.requestPermission();

                  loca1.location.serviceEnabled();
                  loca1.location.requestService();
                  loca1.location.hasPermission();

                  // ignore: non_constant_identifier_names
                  final LOC = (await loca1.location.getLocation()).toString();
                  print(LOC);
                  AwesomeDialog(context: context,animType: AnimType.SCALE,
                    dialogBackgroundColor: Colors.grey,
                    dialogType: DialogType.INFO,
                    body: Center(child: Text(
                      'Bilgileriniz alınmıştır. En kısa sürede kurtulacaksınız.',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),),
                    title: 'This is Ignored',
                    desc:   'This is also Ignored',
                    btnOkText: 'Tamam',
                    btnOkOnPress: () {},
                  )..show();

                  // print('$Loca$loca1');
                },
                child: Image(
                  image: new AssetImage('assets/nuke.png'),
                  fit: BoxFit.fill,

                ),
              ),
            width: 200,height: 200,),

          ],
        ),
      ),
    );
  }
}
