import 'package:flutter/material.dart';
import '../const.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.onPressed,
    this.isLoading = false,
  });

  final void Function()? onPressed;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
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
        child: isLoading
            ? const SizedBox(
                height: 24,
                width: 24,
                child: CircularProgressIndicator(
                  color: kBlackColor,
                ),
              )
            : const Text(
                'Add',
                style: TextStyle(
                  color: kBlackColor,
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
    //                 color: kBlackColor,
    //               ),
    //             )
    //           : const Text(
    //               'Add',
    //               style: TextStyle(
    //                 color:kBlackColor,
    //                 fontSize: 20,
    //               ),
    //             ),
    //     ),
    //   ),
    // );
  }
}
