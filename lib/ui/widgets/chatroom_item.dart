import 'package:aldea/models/chat_room_model.dart';
import "package:flutter/material.dart";
import 'package:aldea/models/message_model.dart';
import "../shared/ui_helpers.dart" as devicesize;
import "../shared/app_colors.dart" as custcolor;

class ChatRoomItem extends StatefulWidget {
  final ChatRoomModel model;
  final Function openChat;
  final int index;
  final List users;
  final String currentUser;
  final Map<dynamic, dynamic> urls;
  const ChatRoomItem({
    this.currentUser,
    this.users,
    this.urls,
    Key key,
    this.index,
    this.model,
    this.openChat,
  }) : super(key: key);

  @override
  _ChatRoomItemState createState() => _ChatRoomItemState();
}

class _ChatRoomItemState extends State<ChatRoomItem> {
  @override
  Widget build(BuildContext context) {
    String otherUser = widget.users[0] == widget.currentUser
        ? widget.users[1]
        : widget.users[0];
    return GestureDetector(
      onTap: widget.openChat,
      child: Container(
        height: devicesize.screenHeight(context) * 0.103,
        color: widget.index % 2 == 0
            ? custcolor.darkGrey
            : custcolor.blueishGreyColor,
        width: devicesize.screenWidth(context),
        child: Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                  left: devicesize.screenWidth(context) * 0.045),
              child: CircleAvatar(
                backgroundImage: NetworkImage(widget.urls[otherUser]),
                radius: devicesize.screenWidth(context) * 0.065,
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                  left: devicesize.screenWidth(context) * 0.045),
              width: devicesize.screenWidth(context) * 0.65,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                        top: devicesize.screenHeight(context) * 0.018,
                        bottom: devicesize.screenHeight(context) * 0.015),
                    child: Container(
                      width: devicesize.screenWidth(context) * 0.5,
                      height: devicesize.screenHeight(context) * 0.025,
                      child: Text(
                        widget.model.username,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontFamily: 'Raleway',
                            fontSize: devicesize.screenWidth(context) * 0.04),
                      ),
                    ),
                  ),
                  Container(
                    height: devicesize.screenHeight(context) * 0.02,
                    width: devicesize.screenWidth(context) * 0.5,
                    child: widget.model.isImage
                        ? Icon(
                            Icons.image,
                            color: Colors.white,
                          )
                        : Text(
                            widget.model.message,
                            style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontSize:
                                    devicesize.screenWidth(context) * 0.035,
                                color: custcolor.grey,
                                fontFamily: 'Raleway'),
                          ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    widget.model.time.substring(0, 10),
                    style: TextStyle(
                        fontFamily: 'Raleway',
                        color: custcolor.grey,
                        fontStyle: FontStyle.italic,
                        fontSize: 10),
                  ),
                  Container(
                      width: devicesize.screenWidth(context) * 0.1,
                      height: devicesize.screenWidth(context) * 0.1,
                      decoration: BoxDecoration(
                        color: custcolor.lightBlueColor,
                        borderRadius: BorderRadius.circular(32),
                      ),
                      child: Icon(
                        Icons.send,
                        color: custcolor.blueTheme,
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
