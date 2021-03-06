import 'package:aldea/models/post_model.dart';
import 'package:aldea/ui/widgets/finishedQuickstrike.dart';
import 'package:aldea/ui/widgets/post_item.dart';
import 'package:aldea/ui/widgets/startQuickstrike.dart';
import 'package:flutter/material.dart';

class FeedWidget extends StatelessWidget {
  final PostModel postModel;
  final Function likeFunction;
  final bool isLiked;
  final Function navigateToComments;
  const FeedWidget(
      {this.postModel,
      this.likeFunction,
      this.isLiked,
      this.navigateToComments});
  @override
  Widget build(BuildContext context) {
    if (postModel.isAnnouncement == true) {
      print("announcement");
      return StartQuickstrike(
          postModel: postModel, likeFunction: likeFunction, isLiked: isLiked);
    } else if (postModel.isResult == true) {
      print("isresult");
      return FinishedQuickstrike(
          postModel: postModel, likeFunction: likeFunction, isLiked: isLiked);
    } else {
      print("isnormalpostXD");
      return PostItem(
        likeFunction: likeFunction,
        postModel: postModel,
        isLiked: isLiked,
        navigateToComments: navigateToComments,
      );
    }
  }
}
