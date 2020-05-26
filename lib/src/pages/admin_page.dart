import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/src/commons/theme.dart';
import 'package:flutter_web_dashboard/src/pages/admin_page_panels/admin_dashboard.dart';
import 'package:flutter_web_dashboard/src/widget/card_tile.dart';
import 'package:flutter_web_dashboard/src/widget/chart_card_tile.dart';
import 'package:flutter_web_dashboard/src/widget/comment_widget.dart';
import 'package:flutter_web_dashboard/src/widget/profile_Widget.dart';
import 'package:flutter_web_dashboard/src/widget/project_widget.dart';
import 'package:flutter_web_dashboard/src/widget/quick_contact.dart';
import 'package:flutter_web_dashboard/src/widget/responsive_widget.dart';
import 'package:flutter_web_dashboard/src/widget/sidebar_menu..dart';
import 'admin_page_panels/admin_app_panel.dart';

import '../widget/sidebar_menu..dart';
import 'admin_page_panels/admin_dashboard.dart';
import 'admin_page_panels/admin_notifications_panel.dart';
import 'admin_page_panels/admin_charts.dart';
//SideBarMenu sideBar = new SideBarMenu(sideBar.onSelectedIndexChange);

class AdminPage extends StatefulWidget {
  
  @override
  _AdminPageState createState() => _AdminPageState();
}



class _AdminPageState extends State<AdminPage> {
  int selectedIndex = 0;
  void changePanel(int h){
  selectedIndex = h;
  setState(() {
    
  });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            //SideBarMenu(changePanel),
           SideBarMenu(changePanel),
           Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               SizedBox(
                            height: 55,
                            width: MediaQuery.of(context).size.width-250,
                            child: AppBar(
                              elevation: 4,
                              centerTitle: true,
                              title: Text(
                                'MedicalShare Yönetici Paneli',
                              ),
                              backgroundColor: drawerBgColor,
                            ),
                          ),
                          if(selectedIndex==0)
                            AdminDashboard()
                          else if(selectedIndex==1)
                            AdminNotifications()
                          else if(selectedIndex==2)
                            AdminApp()
                          else if(selectedIndex==3)
                            AdminCharts()

                          
             ],
           )
          ],
        )
      ),
    );
  }
}
