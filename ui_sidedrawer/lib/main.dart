import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main()=>runApp(MyApp());
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "ui_sidedrawer",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }}
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UI_sidedrawer'),
        elevation: defaultTargetPlatform == TargetPlatform.android ? 5.0 : 0.0,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            Container(
              child: ListTile(
                title: Text('Gmail', textAlign: TextAlign.left,
                  style: GoogleFonts.roboto(
                      fontSize: 25, color: Colors.red[600], fontWeight: FontWeight.w500, letterSpacing: 0.06),

                ),
              ),
            ),
            Divider(thickness: 1),
            ListTile(
                dense: true,
                title: Text('All inboxes',
                  style: GoogleFonts.robotoCondensed(
                      fontSize: 15, color: Colors.black, letterSpacing: 0.7),

                ),
                leading: Icon(Icons.email),
                ),
            Divider(thickness: 1),
            Padding(
              padding: EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 0.0),
            child:Container(
              decoration: BoxDecoration(

                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(70.0),
                    bottomRight: Radius.circular(70.0)
                ),
                color: Colors.red[500].withOpacity(0.15),
              ),
            child: ListTile(
              dense: true,
              title: Text('Primary',
                style: GoogleFonts.robotoCondensed(
                    fontSize: 15, color: Colors.red[600], letterSpacing: 0.5,fontWeight: FontWeight.w500),
              ),
              leading: Icon(Icons.inbox, color: Colors.red,),
              trailing: Text("99+",style: GoogleFonts.roboto(fontSize: 12, color: Colors.red[600],fontWeight: FontWeight.w500),),
            ),
            ),
            ),
            ListTile(
              title: Text('Social',
                style: GoogleFonts.robotoCondensed(
                    fontSize: 15, color: Colors.black, letterSpacing: 0.7),
              ),
              leading: Icon(Icons.people),

            ),
            ListTile(
              title: Text('Promotions',
                style: GoogleFonts.robotoCondensed(
                    fontSize: 15, color: Colors.black, letterSpacing: 0.7),
              ),
              leading: Icon(Icons.local_offer),
              trailing:Container(
                width:45,
                height: 22,
                decoration: BoxDecoration(color: Colors.green[900], borderRadius: BorderRadius.all(Radius.circular(50.0))),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(8.0,6.0,8.0,6.0),
                 child: Text(
                  "3 new",style: GoogleFonts.roboto(fontSize: 10, color:Colors.white, fontWeight: FontWeight.w500),
                ),
                ),
              ),
            ),
            ListTile(
              title: Text('Updates',
                style: GoogleFonts.robotoCondensed(
                    fontSize: 15, color: Colors.black, letterSpacing: 0.7),
              ),
              leading: Icon(Icons.info_outline),
              trailing:Container(
                width:45,
                height: 22,
                decoration: BoxDecoration(color: Colors.amber[500], borderRadius: BorderRadius.all(Radius.circular(50.0))),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(8.0,6.0,8.0,6.0),
                  child: Text(
                    "7 new",style: GoogleFonts.roboto(fontSize: 10, color:Colors.white,fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
            ListTile(
              dense: true,
              title: Text('All Labels',
                style: GoogleFonts.robotoCondensed(
                    fontSize: 15, color: Colors.black, letterSpacing: 0.7),
              ),
            ),
            ListTile(
              dense: true,
              title: Text('Starred',
                style: GoogleFonts.robotoCondensed(
                    fontSize: 15, color: Colors.black, letterSpacing: 0.7),
              ),
              leading: Icon(Icons.star_border),
            ),
            ListTile(
              dense: true,
              title: Text('Snoozed',
                style: GoogleFonts.robotoCondensed(
                  fontSize: 15, color: Colors.black, letterSpacing: 0.7,),
              ),
              leading: Icon(Icons.access_time),
            ),
            ListTile(
              dense: true,
              title: Text('Important',
                style: GoogleFonts.robotoCondensed(
                    fontSize: 15, color: Colors.black, letterSpacing: 0.7),
              ),
              leading: Icon(Icons.label_important),
            ),
            ListTile(
              dense: true,
              title: Text('Sent',
                style: GoogleFonts.robotoCondensed(
                    fontSize: 15, color: Colors.black, letterSpacing: 0.7),
              ),
              leading: Icon(Icons.send),
            ),
            ListTile(
              dense: true,
              title: Text('Scheduled',
                style: GoogleFonts.robotoCondensed(
                    fontSize: 15, color: Colors.black, letterSpacing: 0.7),
              ),
              leading: Icon(Icons.alarm),
            ),
            ListTile(
              dense: true,
              title: Text('Outbox',
                style: GoogleFonts.robotoCondensed(
                    fontSize: 15, color: Colors.black, letterSpacing: 0.7),
              ),
              leading: Icon(Icons.send),

            ),
            ListTile(
              dense: true,
              title: Text('Drafts',
                style: GoogleFonts.robotoCondensed(
                    fontSize: 15, color: Colors.black, letterSpacing: 0.7),
              ),
              leading: Icon(Icons.drafts),
            ),
            ListTile(
              dense: true,
              title: Text('All mail',
                style: GoogleFonts.robotoCondensed(
                    fontSize: 15, color: Colors.black, letterSpacing: 0.7),
              ),
              leading: Icon(Icons.exit_to_app),
            ),
            ListTile(
              dense: true,
              title: Text('Spam',
                style: GoogleFonts.robotoCondensed(
                    fontSize: 15, color: Colors.black, letterSpacing: 0.7),
              ),
              leading: Icon(Icons.report),
            ),
            ListTile(
              dense: true,
              title: Text('Trash',
                style: GoogleFonts.robotoCondensed(
                    fontSize: 15, color: Colors.black, letterSpacing: 0.7),
              ),
              leading: Icon(Icons.delete_outline),
            ),
            ListTile(
              dense: true,
              title: Text('facebook',
                style: GoogleFonts.robotoCondensed(
                    fontSize: 15, color: Colors.black, letterSpacing: 0.7),
              ),
              leading: Icon(Icons.label_outline),
            ),
            ListTile(
              dense: true,
              title: Text('Personal',
                style: GoogleFonts.robotoCondensed(
                    fontSize: 15, color: Colors.black, letterSpacing: 0.7),
              ),
              leading: Icon(Icons.label_outline),
            ),
            ListTile(
              dense: true,
              title: Text('Work',
                style: GoogleFonts.robotoCondensed(
                    fontSize: 15, color: Colors.black, letterSpacing: 0.7),
              ),
              leading: Icon(Icons.label_outline),
            ),
            ListTile(
              dense: true,
              title: Text('Google Apps',
                style: GoogleFonts.robotoCondensed(
                    fontSize: 15, color: Colors.black, letterSpacing: 0.7),
              ),
            ),
            ListTile(
              dense: true,
              title: Text('Calender',
                style: GoogleFonts.robotoCondensed(
                    fontSize: 15, color: Colors.black, letterSpacing: 0.7),
              ),
              leading: Icon(Icons.calendar_today),
            ),
            ListTile(
              dense: true,
              title: Text('Contacts',
                style: GoogleFonts.robotoCondensed(
                    fontSize: 15, color: Colors.black, letterSpacing: 0.7),
              ),
              leading: Icon(Icons.contacts),
            ),
            Divider(),
            ListTile(
              dense: true,
              title: Text('Settings',
                style: GoogleFonts.robotoCondensed(
                    fontSize: 15, color: Colors.black, letterSpacing: 0.7),
              ),
              leading: Icon(Icons.settings_applications),
            ),
            ListTile(
              dense: true,
              title: Text('Help & Feedback',
                style: GoogleFonts.robotoCondensed(
                    fontSize: 15, color: Colors.black, letterSpacing: 0.7),
              ),
              leading: Icon(Icons.help_outline),
            ),
          ],
        ),
      ),
    );
  }

}
