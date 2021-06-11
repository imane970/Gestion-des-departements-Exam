import 'package:depart_app/Widgets/widget.dart';
import 'package:flutter/material.dart';

import 'dart:convert';

class DepartementsPage extends StatefulWidget {
  @override
  _DepartementsPageState createState() => _DepartementsPageState();
}

class _DepartementsPageState extends State<DepartementsPage> {
  String query;
  bool notInvisible = false;
  TextEditingController queryTextEditingController = new TextEditingController();
  dynamic data = null;
  ScrollController scrollController = new ScrollController();

  get http => null;
  void _search(String query) {
    String url = "https://geo.api.gouv.fr/departements";
    // ignore: unnecessary_statements
    http.get(Uri.parse(url))
        .then((response) =>
        setState((){
          this.data = json.decode(response.body);
          // this.items.addAll(data['items']);
        })
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _search(query);

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: MyDrawerWidget(),
        appBar: AppBar(
          title:Text("Départements"),
        ),
        body: Center(
            child: Column(
              children: [
                Expanded(
                  child:ListView.separated(
                      separatorBuilder: (context,index) => Divider(height: 2),
                      controller: scrollController,
                      itemCount: data.length,
                      itemBuilder:(context,index){
                        return ListTile(
                            onTap: (){

                            },
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children:[ Row(
                                  children: [
                                    SizedBox(width: 15),
                                    Text("${data[index]['nom']}"),
                                  ]
                              ),

                              ],

                            )
                        );
                      }
                  ),
                )
              ],
            )
        )
    );
  }
}
