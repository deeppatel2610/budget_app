import 'package:adv_flutter_ch_3/Budget%20App/controller/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import '../user input/component/text_method.dart';
import 'component/input_method.dart';
import 'component/profile_decoration.dart';
import 'component/user_details_method.dart';
import 'component/user_information.dart';

/// todo: profile controller
var profileController = Get.put(ProfileController());

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: const Text(
          "Profile",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              // profileController.isCheck = false;
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: const Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Profile Edit",
                      style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w500,
                        letterSpacing: .2,
                        // fontSize: 20,
                      ),
                    ),
                  ),
                  content: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Divider(),
                        const SizedBox(
                          height: 10,
                        ),
                        GestureDetector(
                          onTap: () async {
                            ImagePicker imagePicker = ImagePicker();
                            XFile? xFile = await imagePicker.pickImage(
                                source: ImageSource.camera);
                            profileController.image =
                                await xFile!.readAsBytes();
                            profileController.isImage.value = false;
                          },
                          child: Obx(
                            () => CircleAvatar(
                              backgroundImage: (profileController.isImage.value)
                                  ? NetworkImage(img)
                                  : MemoryImage(
                                      profileController.image!,
                                    ),
                              radius: 45,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        inputMethod(
                          controller: profileController.txtName,
                          text: "Deep Patel",
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        inputMethod(
                          controller: profileController.txtPhone,
                          text: "6353614861",
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        inputMethod(
                          controller: profileController.txtEmail,
                          text: "deeppatel1223@gmail.com",
                        ),
                      ],
                    ),
                  ),
                  actions: [
                    TextButton(
                      onPressed: () {
                        profileController.updateUser(
                          name: profileController.txtName.text,
                          phone: profileController.txtPhone.text,
                          email: profileController.txtEmail.text,
                          img: profileController.image!,
                        );
                        Get.back();
                      },
                      child: const Text("Save"),
                    )
                  ],
                ),
              );
            },
            icon: const Icon(
              Icons.edit,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size(double.infinity, 150),
          child: Column(
            children: [
              Obx(
                () => CircleAvatar(
                  backgroundImage: (profileController.isImage.value)
                      ? NetworkImage(img)
                      : MemoryImage(
                          profileController.image!,
                        ),
                  radius: 45,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Obx(
                () => Text(
                  profileController.userList[0].name!,
                  style: const TextStyle(
                    color: Colors.white,
                    letterSpacing: .2,
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              userInformation(),
              const SizedBox(
                height: 15,
              ),
              textMethod(text: "Management"),
              const SizedBox(
                height: 10,
              ),
              ...profileDecoration(
                nameList: profileController.managementNameList,
                iconList: profileController.managementIconList,
              ),
              const SizedBox(
                height: 15,
              ),
              textMethod(text: "General"),
              const SizedBox(
                height: 10,
              ),
              ...profileDecoration(
                nameList: profileController.generalNameList,
                iconList: profileController.generalIconList,
              )
            ],
          ),
        ),
      ),
    );
  }
}

String img =
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTcyI9Cvp53aaP9XeRn-ZKbJDH2QaWC72O26A&s";
