import 'package:aldea/ui/shared/app_colors.dart';
import 'package:aldea/ui/widgets/notch_filler.dart';
import 'package:aldea/viewmodels/profile_settings_view_model.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import "../shared/ui_helpers.dart" as devicesize;

class ProfileSettingsView extends StatelessWidget {
  final bool isGodAdmin;

  ProfileSettingsView(this.isGodAdmin);

  final TextStyle optionsStyle =
      TextStyle(fontFamily: 'Raleway', fontSize: 22, color: almostWhite);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProfileSettingsViewModel>.reactive(
      viewModelBuilder: () => ProfileSettingsViewModel(),
      onModelReady: (model) {},
      builder: (context, model, child) => Scaffold(
        body: Column(
          children: <Widget>[
            NotchFiller(),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              width: double.infinity,
              height: devicesize.usableScreenHeight(context) * 0.1,
              alignment: Alignment.centerLeft,
              color: Color(0xff17191E),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'ALDEA',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Thinoo',
                        fontSize: 40),
                  ),
                  SizedBox(
                    height: 50,
                    child: Image.asset('assets/images/hoguera.png'),
                  ),
                ],
              ),
            ),
            Container(
                height: devicesize.screenHeight(context) * 0.84486,
                width: devicesize.screenWidth(context),
                color: darkGrey,
                child: Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: devicesize.screenWidth(context) * 0.131),
                  height: devicesize.screenHeight(context) * 0.8448,
                  width: devicesize.screenWidth(context),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: devicesize.screenHeight(context) * 0.02),
                        child: Text(
                          "Configuración",
                          style: TextStyle(
                              color: almostWhite,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w600,
                              fontSize: 25),
                        ),
                      ),
                      Container(
                          height: 1,
                          width: devicesize.screenWidth(context) * 0.682,
                          color: almostWhite),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: devicesize.screenHeight(context) * 0.024),
                        child: GestureDetector(
                          onTap: () => print("pressed"),
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.notifications,
                                color: blueTheme,
                                size: 29,
                              ),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: devicesize.screenWidth(context) *
                                          0.04),
                                  child: Text(
                                    "Notificaciones",
                                    style: optionsStyle,
                                  ))
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: devicesize.screenHeight(context) * 0.024),
                        child: GestureDetector(
                          onTap: () => print("pressed"),
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.security,
                                color: blueTheme,
                                size: 29,
                              ),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: devicesize.screenWidth(context) *
                                          0.04),
                                  child: Text(
                                    "Seguridad",
                                    style: optionsStyle,
                                  ))
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: devicesize.screenHeight(context) * 0.024),
                        child: GestureDetector(
                          onTap: () => print("pressed"),
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.lock,
                                color: blueTheme,
                                size: 29,
                              ),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: devicesize.screenWidth(context) *
                                          0.04),
                                  child: Text(
                                    "Privacidad",
                                    style: optionsStyle,
                                  ))
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: devicesize.screenHeight(context) * 0.024),
                        child: GestureDetector(
                          onTap: () => print("pressed"),
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.credit_card,
                                color: blueTheme,
                                size: 29,
                              ),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: devicesize.screenWidth(context) *
                                          0.04),
                                  child: Text(
                                    "Pagos",
                                    style: optionsStyle,
                                  ))
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: devicesize.screenHeight(context) * 0.024),
                        child: GestureDetector(
                          onTap: () => print("pressed"),
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.help,
                                color: blueTheme,
                                size: 29,
                              ),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: devicesize.screenWidth(context) *
                                          0.04),
                                  child: Text(
                                    "Ayuda",
                                    style: optionsStyle,
                                  ))
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: devicesize.screenHeight(context) * 0.024),
                        child: GestureDetector(
                          onTap: () => print("pressed"),
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.exit_to_app,
                                color: blueTheme,
                                size: 29,
                              ),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: devicesize.screenWidth(context) *
                                          0.04),
                                  child: Text(
                                    "Cerrar Sesión",
                                    style: optionsStyle,
                                  ))
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: devicesize.screenHeight(context) * 0.031,
                            bottom: devicesize.screenHeight(context) * 0.03),
                        child: Container(
                            height: 1,
                            width: devicesize.screenWidth(context) * 0.682,
                            color: almostWhite),
                      ),
                      isGodAdmin
                          ? Row(
                              children: <Widget>[
                                SizedBox(
                                  height: 50,
                                  child:
                                      Image.asset('assets/images/hoguera.png'),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: devicesize.screenWidth(context) *
                                          0.05),
                                  child: Container(
                                    width:
                                        devicesize.screenWidth(context) * 0.58,
                                    child: Text(
                                      "Administrar solicitudes creación Aldeas",
                                      style: optionsStyle,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          : Row(
                              children: <Widget>[
                                Icon(
                                  Icons.people,
                                  color: blueTheme,
                                  size: 29,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: devicesize.screenWidth(context) *
                                          0.05),
                                  child: Container(
                                    width:
                                        devicesize.screenWidth(context) * 0.6,
                                    child: Text(
                                      "¿Te interesa crear una Aldea?",
                                      style: optionsStyle,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                      isGodAdmin
                          ? Padding(
                              padding: EdgeInsets.only(top: 15),
                              child: GestureDetector(
                                onTap: () => model.goAdminScreen(),
                                child: Container(
                                  width:
                                      devicesize.screenWidth(context) * 0.321,
                                  height:
                                      devicesize.screenHeight(context) * 0.05,
                                  decoration: BoxDecoration(
                                      color: blueTheme,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(200))),
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Moderar",
                                    style: TextStyle(
                                        fontFamily: 'Raleway',
                                        fontSize: 22,
                                        color: almostWhite,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),
                            )
                          : Container(),
                      Padding(
                        padding: EdgeInsets.only(top: 11.8),
                        child: GestureDetector(
                          onTap: () => model.goCreateCommunityScreen(),
                          child: Container(
                            width: devicesize.screenWidth(context) * 0.321,
                            height: devicesize.screenHeight(context) * 0.05,
                            decoration: BoxDecoration(
                                color: blueTheme,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(200))),
                            alignment: Alignment.center,
                            child: Text(
                              "¡Crear!",
                              style: TextStyle(
                                  fontFamily: 'Raleway',
                                  fontSize: 22,
                                  color: almostWhite,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
