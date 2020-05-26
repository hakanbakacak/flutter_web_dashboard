import 'package:flutter/material.dart';

class Menu {
  String title;
  IconData icon;

  Menu({this.title, this.icon});
}

List<Menu> menuItems = [
  Menu(title: 'Konrol Paneli', icon: Icons.dashboard),
  Menu(title: 'Bildirimler', icon: Icons.notifications),
  Menu(title: 'Sözleşme Yap', icon: Icons.web),
  Menu(title: 'Grafikler', icon: Icons.insert_chart),
];
