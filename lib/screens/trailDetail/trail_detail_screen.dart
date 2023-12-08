import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:naemansan/utilities/style/color_styles.dart';
import 'package:naemansan/utilities/style/font_styles.dart';
import 'package:naemansan/viewModel/trail_detail_view_model.dart';
import 'package:naemansan/widget/trail/trailDetail/trail_detail_description.dart';
import 'package:naemansan/widget/trail/trailDetail/trail_detail_info.dart';

import 'package:naemansan/widget/trail/trailDetail/trail_detail_moment_list.dart';
import 'package:naemansan/widget/trail/trailDetail/trail_detail_similar_trail.dart';
import 'package:naemansan/widget/trail/trailDetail/trail_detail_spot_list.dart';
import 'package:naemansan/widget/trail/trailDetail/trail_detail_writer.dart';

class TrailDetailScreen extends StatelessWidget {
  const TrailDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TrailDetailViewModel viewModel = Get.put(TrailDetailViewModel());

    return Scaffold(
      appBar: AppBar(),
      body: GetBuilder<TrailDetailViewModel>(
        init: viewModel,
        builder: (viewModel) {
          return SingleChildScrollView(
            child: SizedBox(
              width: double.infinity,
              child: Column(children: [
                //썸네일
                Container(
                  color: ColorStyles.gray2,
                  height: 180,
                ), //썸네일

                //산책로 정보
                Container(
                  padding: const EdgeInsets.fromLTRB(16, 20, 16, 20),
                  child: Column(
                    children: [
                      TrailDetailInfo(
                          name: viewModel.trailDetailInfo.name,
                          location: viewModel.trailDetailInfo.location,
                          distance: viewModel.trailDetailInfo.distance,
                          tags: viewModel.trailDetailInfo.tags),

                      //작성자
                      TrailDetailWriter(
                        writer: viewModel.trailDetailInfo.writer,
                        date: viewModel.trailDetailInfo.date,
                      ),

                      //소개
                      TrailDetailDescription(
                          description: viewModel.trailDetailInfo.description),

                      //모먼트
                      TrailDetailMomentList(
                          momentList: viewModel.trailDetailInfo.momnetList)
                    ],
                  ),
                ), //산책로 정보

                //구분선
                Container(
                  height: 8,
                  width: double.infinity,
                  color: ColorStyles.gray0,
                ), //구분선

                Container(
                  padding: const EdgeInsets.fromLTRB(16, 0, 16, 40),
                  width: double.infinity,
                  child: Column(children: [
                    TrailDetailSpotList(
                      spotList: viewModel.trailDetailInfo.spotList,
                    ),
                    TrailDetailSimilarTrail()
                  ]),
                )
              ]),
            ),
          );
        },
      ),
    );
  }
}
