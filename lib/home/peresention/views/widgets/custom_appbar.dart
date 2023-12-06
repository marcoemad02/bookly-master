import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/utils/assets.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
      child: Row(
        children: [
          Image.asset(
            AssetsData.HomeLogo,
            height: 40,
          ),
          const SizedBox(width: 10,),
          const Text('. With mar3y',style:TextStyle(fontFamily: "Montserrat"),),
          const Spacer(),
          IconButton(
              onPressed: () {
                GoRouter.of(context).push('/searchPage');
              },
              icon: const Icon(
                Icons.search_sharp,
                size: 35,
              ))
        ],
      ),
    );
  }
}
