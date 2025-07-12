import 'dart:async';

import 'package:flutter/material.dart';
import 'package:medsync/core/constant/app_images.dart';
import 'package:medsync/core/constant/size_config.dart';
import 'package:medsync/features/home/presentation/views/widgets/banner_item.dart';

class BannerItemListView extends StatefulWidget {
  const BannerItemListView({super.key});

  @override
  State<BannerItemListView> createState() => _BannerItemListViewState();
}

class _BannerItemListViewState extends State<BannerItemListView> {
  final ScrollController _scrollController = ScrollController();
  Timer? _timer;
  double _scrollPosition = 0.0;

  List<String> images = [
    Assets.imagesMedsyncHospital,
    Assets.imagesBuildingMedsync,
    Assets.imagesTools,
  ];

  @override
  void initState() {
    super.initState();
    _startAutoScroll();
  }

  void _startAutoScroll() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 2), (timer) {
      if (_scrollController.hasClients) {
        _scrollPosition += SizeConfig.screenWidth;
        if (_scrollPosition >= images.length * SizeConfig.screenWidth) {
          _scrollPosition = 0;
        }
        _scrollController.animateTo(
          _scrollPosition,
          duration: const Duration(milliseconds: 1000),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  void _stopAutoScroll() {
    _timer?.cancel();
  }

  @override
  void dispose() {
    _timer?.cancel();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: ListView.builder(
        controller: _scrollController,
        scrollDirection: Axis.horizontal,
        itemCount: images.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTapDown: (_) => _stopAutoScroll(),
            onTapUp: (_) => _startAutoScroll(),
            onTapCancel: () => _startAutoScroll(),
            child: BannerItem(image: images[index]),
          );
        },
      ),
    );
  }
}
