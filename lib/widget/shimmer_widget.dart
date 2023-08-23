import 'package:fantasypl/constants/constatnts.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerWidget extends StatelessWidget {
  const ShimmerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Row(
            children: [
              Expanded(
                flex: 1,
                child: Shimmer.fromColors(
                  baseColor: Colors.grey.shade800,
                  highlightColor: Colors.grey.shade500,
                  period: const Duration(milliseconds: 1000),
                  child: const CircleAvatar(
                    backgroundColor: primary,
                  )
                ),
              ),
              Expanded(
                flex: 4,
                child: Column(
                  children: [
                    Shimmer.fromColors(
                      baseColor: Colors.grey.shade800,
                      highlightColor: Colors.grey.shade500,
                      period: const Duration(milliseconds: 1000),
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                        height: 25,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: primary,
                        ),
                      ),
                    ),
                    Shimmer.fromColors(
                      baseColor: Colors.grey.shade800,
                      highlightColor: Colors.grey.shade500,
                      period: const Duration(milliseconds: 1000),
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                        height: 18,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: primary,
                        ),
                      ),
                    ),
                  ],
                ) 
              )
            ],
          );
        },
      ),
    );
  }
}