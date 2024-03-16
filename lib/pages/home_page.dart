import 'package:flutter/material.dart';
import 'package:valorantapp/pages/pagina1_agentes.dart';
import 'package:valorantapp/pages/pagina2_armas.dart';
import 'package:valorantapp/pages/pagina3_mapas.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController controller;
  @override
  void initState() {
    super.initState();
    // TODO: implement initState

    controller = TabController(length: 3, vsync: this);
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(
            'VALORANT APP',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 35, 33, 33),
          bottom: TabBar(
            indicatorColor: Colors.red,
            controller: controller,
            labelStyle: TextStyle(fontSize: 16),
            unselectedLabelColor: Colors.deepOrange,
            unselectedLabelStyle: TextStyle(fontSize: 10),
            tabs: [
              Text("AGENTES", style: TextStyle(color: Colors.white)),
              Text("ARMAS", style: TextStyle(color: Colors.white)),
              Text("MAPAS", style: TextStyle(color: Colors.white))
            ],
          ),
        ),
        body: TabBarView(controller: controller, children: [
          Pagina1Agentes(),
          Pagina2Armas(),
          Pagina3Mapas(),
        ]),
      );
}
