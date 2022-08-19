import 'package:api_project2/controller/Usercontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Userui extends StatefulWidget {
  Userui({Key? key}) : super(key: key);

  @override
  State<Userui> createState() => _UseruiState();
}

class _UseruiState extends State<Userui> {
  final Usercontroller _usercontroller = Get.put(Usercontroller());
  // final Controller controller = Get.put(Controller());
  @override
  void initState() {
    // TODO: implement initState
    //controller.controller();
    _usercontroller.getUserController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: _usercontroller.userList.isEmpty
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: _usercontroller.userList.length,
              itemBuilder: (context, index) {
                var itemlist = _usercontroller.userList[index];
                return InkWell(
                    onTap: () {
                      print('click');
                    },
                    child: Card(
                      elevation: 0,
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 30,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'ID:${itemlist.id.toString()}',
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Email:${itemlist.email.toString()}',
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Company:${itemlist.company}',
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Username:${itemlist.username}',
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ));
              }),
    );
  }
}
