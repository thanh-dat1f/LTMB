import 'package:flutter/material.dart';
import '../model/user_model.dart';
import '../utils/constants.dart';
import '../widgets/avatar_widget.dart';
import '../widgets/edit_button.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {

    final user = UserModel(
      name: AppConstants.defaultName,
      email: AppConstants.defaultEmail,
      avatar: AppConstants.avatarUrl,
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        centerTitle: true,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            AvatarWidget(imageUrl: user.avatar),

            const SizedBox(height: 20),

            Text(
              user.name,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 5),

            Text(
              user.email,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 25),

            const EditProfileButton(),
          ],
        ),
      ),
    );
  }
}