import 'package:flutter/material.dart';
import '../../widget/card_tile.dart';
import '../../widget/chart_card_tile.dart';
import '../../widget/quick_contact.dart';

class AdminDashboard extends StatelessWidget {
  DateTime now = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width-270,
      height: MediaQuery.of(context).size.height-55,
      child:ListView(children: [
              Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children:[
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: CardTile(cardTitle: "Tıbbi Görüntü", icon: Icons.image_aspect_ratio, iconBgColor: Color(0xFF7560ED), mainText: "3421", subText: "Toplam Tıbbi Görüntü Sayısı",),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: CardTile(cardTitle: "Tahlil", icon: Icons.insert_drive_file, iconBgColor: Color(0xFF25C6DA), mainText: "5042", subText: "Toplam Tahlil Sayısı",),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: CardTile(cardTitle: "Sözleşme", icon: Icons.check, iconBgColor: Colors.orange, mainText: "8010", subText: "Aktif Sözleşme Sayısı",),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: CardTile(cardTitle: "Boyut", icon: Icons.image_aspect_ratio, iconBgColor: Colors.pinkAccent, mainText: "14GB", subText: "Toplam Veri Boyutu",),
              )
            ]
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: ChartCardTile( cardColor: Color(0xFF7560ED), cardTitle: 'Harcanan MSC', subText: "0"+now.month.toString()+"/" +now.year.toString() , icon: Icons.healing, typeText: '4570 MSC'),
                  ),
                  Padding(
                padding: const EdgeInsets.all(15.0),
                child: ChartCardTile(cardColor: Color(0xFF25C6DA), cardTitle: 'Potansiyel Veri', subText: 'Kriterlerinize Uygun, Erişilebilecek\nTahlil ve Tıbbi Görüntü Sayısı', icon: Icons.cloud_upload, typeText: '35487'),
              ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: DataListView(),
              ),
              QuickContact(media: MediaQuery.of(context).size)
            ],
          ),
          
          
        ],
      )
    
      ],) 
     );
  }
}


class DataListView extends StatefulWidget {
  @override
  _DataListViewState createState() => _DataListViewState();
}

class _DataListViewState extends State<DataListView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width/2-270,
      height: MediaQuery.of(context).size.height*0.5+30,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(4), color:Colors.white),
      child:Column(
        crossAxisAlignment:CrossAxisAlignment.start,
        children:[
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Sözleşmeler"),
                Container(
                  width: MediaQuery.of(context).size.width/2-271,
                  height: MediaQuery.of(context).size.height*0.5-17,
                  child: ListView(
                    children: [
                      DataListItem("Akciğer Kanserli Hasta MR", 14),
                      DataListItem("Epilepsi Beyin Tomografisi", 3),
                      DataListItem("Covid-19 Tanılı Konulmuş Kan Testi", 45),
                      DataListItem("Böbrek Yetmezliği Kan Testi", 65),
                      DataListItem("Şeker Hastalığı EKG Sonucu", 20),
                      DataListItem("Parkingson Hastalığı MR", 23),
                      DataListItem("Alzheimer Hastalığı Tomografisi", 30),
                      DataListItem("Pankreas Kanseri Röntgen Filmi", 33),
                      DataListItem("Akciğer Kanserli Hasta MR", 14),
                      DataListItem("Epilepsi Beyin Tomografisi", 3),
                      DataListItem("Covid-19 Tanılı Konulmuş Kan Testi", 45),
                      DataListItem("Böbrek Yetmezliği Kan Testi", 65),
                      DataListItem("Şeker Hastalığı EKG Sonucu", 20),
                      DataListItem("Parkingson Hastalığı MR", 23),
                      DataListItem("Alzheimer Hastalığı Tomografisi", 30),
                      DataListItem("Akciğer Kanserli Hasta MR", 14),
                      DataListItem("Epilepsi Beyin Tomografisi", 3),
                      DataListItem("Covid-19 Tanılı Konulmuş Kan Testi", 45),
                      DataListItem("Böbrek Yetmezliği Kan Testi", 65),
                      DataListItem("Şeker Hastalığı EKG Sonucu", 20),
                      DataListItem("Parkingson Hastalığı MR", 23),
                      DataListItem("Alzheimer Hastalığı Tomografisi", 30),
                      DataListItem("Pankreas Kanseri Röntgen Filmi", 33),
                      DataListItem("Akciğer Kanserli Hasta MR", 14),
                      DataListItem("Epilepsi Beyin Tomografisi", 3),
                      DataListItem("Covid-19 Tanılı Konulmuş Kan Testi", 45),
                      DataListItem("Böbrek Yetmezliği Kan Testi", 65),
                      DataListItem("Şeker Hastalığı EKG Sonucu", 20),
                      DataListItem("Parkingson Hastalığı MR", 23),
                      DataListItem("Alzheimer Hastalığı Tomografisi", 30),
                    ],
                  ),
                )
              ],
            ),
          ),

        ]
      )
    );
  }
}

class DataListItem extends StatefulWidget {
  DataListItem(this.mainText, this.remainingTime);
  String mainText;
  int remainingTime;
  @override
  _DataListItemState createState() => _DataListItemState();
}

class _DataListItemState extends State<DataListItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width/2-270,
      height: 50,
      color: Color(0xfeeeeefe),
      child:Row(children: [
        SizedBox(width:300, child: Padding(
          padding: const EdgeInsets.only(left:8.0),
          child: Text(widget.mainText),
        )),
        SizedBox(width:100, child: Text(widget.remainingTime.toString()+ " Gün")),
        SizedBox(width:50, child: CircleAvatar(backgroundColor:Colors.white70, child: IconButton(color: Colors.black, icon: Icon(Icons.add), onPressed: (){widget.remainingTime++; setState(() {
          
        });}))),
        
      ],)

    );
  }
}