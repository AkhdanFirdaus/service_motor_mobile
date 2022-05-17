import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:service_motor_mobile/application/auth/user_profile/user_profile_bloc.dart';
import 'package:service_motor_mobile/presentation/core/app_theme.dart';
import 'package:service_motor_mobile/presentation/routes/app_router.dart';
import 'package:shimmer/shimmer.dart';

class HelloBlockWidget extends StatelessWidget {
  const HelloBlockWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AutoRouter.of(context);
    return BlocBuilder<UserProfileBloc, UserProfileState>(
      builder: (context, state) {
        return state.map(
          initial: (_) {
            return Container();
          },
          loadingProgress: (_) {
            return SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 80,
              child: Shimmer.fromColors(
                baseColor: Colors.grey.shade300,
                highlightColor: Colors.white60,
                child: const LinearProgressIndicator(),
              ),
            );
          },
          loadSuccess: (e) {
            return ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 30),
              title: Text(e.user.name ?? e.user.email),
              subtitle: const Text("Selamat Pagi!"),
              trailing: CircleAvatar(
                backgroundColor: AppColor.orange,
                child: IconButton(
                  color: AppColor.white,
                  onPressed: () {
                    context.router.push(const NotificationRoute());
                  },
                  icon: const Icon(Icons.notifications),
                ),
              ),
            );
          },
          loadFailure: (e) {
            return ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 30),
              tileColor: Colors.red,
              textColor: Colors.white,
              title: Text(
                e.appUserFailure.map(
                  unexpected: (_) => 'Unexpected Error',
                  insufficientPermissions: (_) => 'Permission Error',
                ),
              ),
            );
          },
        );
      },
    );
  }
}
