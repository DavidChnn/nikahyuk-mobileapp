import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nikahyuk/components/defaultbutton.dart';
import 'package:nikahyuk/models/user_model.dart';
import 'package:nikahyuk/screens/myaccount/components/myprofilepicture.dart';

import '../../authentication/controllers/profile_controllers.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProfileController());
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
        child: FutureBuilder(
          future: controller.getUserData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasData) {
                UserModel user = snapshot.data as UserModel;

                //controllers
                final fullname = TextEditingController(text: user.fullName);
                final id = TextEditingController(text: user.id);
                final email = TextEditingController(text: user.email);
                final password = TextEditingController(text: user.password);

                return Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    MyProfilePicture(),
                    SizedBox(
                      height: 50,
                    ),
                    TextFormField(
                      controller: id,
                      enabled: false,
                      decoration: InputDecoration(
                        labelText: "ID",
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: fullname,
                      decoration: InputDecoration(
                        labelText: "FullName",
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: email,
                      decoration: InputDecoration(
                        labelText: "Email",
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: password,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        labelText: "Password",
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                      ),
                      obscureText: true,
                    ),
                    SizedBox(
                      height: 120,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                      child: DefaultButton(
                        text: "Edit Profile",
                        press: () async {
                          final user = UserModel(
                            id: id.text.trim(),
                            email: email.text.trim(),
                            fullName: fullname.text.trim(),
                            password: password.text.trim(),
                          );
                          await controller.updateRecord(user);
                        },
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text.rich(
                            TextSpan(
                              text: "Joined",
                              style: TextStyle(fontSize: 12),
                              children: [
                                TextSpan(
                                  text: " 11 Juni 2023",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Colors.redAccent.withOpacity(0.1),
                                elevation: 0,
                                foregroundColor: Colors.red,
                                shape: StadiumBorder(),
                                side: BorderSide.none),
                            child: Text("Delete"),
                          )
                        ],
                      ),
                    ),
                  ],
                );
              } else if (snapshot.hasError) {
                return Center(
                  child: Text(snapshot.error.toString()),
                );
              } else {
                return const Center(
                  child: Text("Something went wrong"),
                );
              }
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}
