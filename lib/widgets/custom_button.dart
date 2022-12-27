import 'package:flutter/material.dart';
import '../const.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onPressed, });

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 16,
      ),
      height: 44,
      width: double.infinity,
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: const MaterialStatePropertyAll(kPrimaryColor),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        onPressed: onPressed,
        child:  const Text(
          'Add',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
    // GestureDetector(
    //   onTap: onTap,
    //   child: Container(
    //     width: MediaQuery.of(context).size.width,
    //     height: 44,
    //     decoration: BoxDecoration(
    //         color: kPrimaryColor,
    //         borderRadius: BorderRadius.circular(
    //           8,
    //         )),
    //     child: Center(
    //       child: isLoading
    //           ? const SizedBox(
    //               height: 24,
    //               width: 24,
    //               child: CircularProgressIndicator(
    //                 color: Colors.black,
    //               ),
    //             )
    //           : const Text(
    //               'Add',
    //               style: TextStyle(
    //                 color: Colors.black,
    //                 fontSize: 20,
    //               ),
    //             ),
    //     ),
    //   ),
    // );
  }
}
