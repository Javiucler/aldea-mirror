import '../shared/ui_helpers.dart';
import '../widgets/busy_button.dart';
import '../widgets/input_field.dart';
import '../widgets/text_link.dart';
import 'package:flutter/material.dart';
import 'package:provider_architecture/provider_architecture.dart';
import '../../viewmodels/signup_view_model.dart';

class SignUpView extends StatelessWidget {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ViewModelProvider<SignUpViewModel>.withConsumer(
      viewModel: SignUpViewModel(),
      builder: (context, model, child) => Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Sign Up',
                style: TextStyle(
                  fontSize: 38,
                ),
              ),
              verticalSpaceLarge,
              // TODO: Add additional user data here to save (episode 2)
              InputField(
                placeholder: 'Email',
                controller: emailController,
              ),
              verticalSpaceSmall,
              InputField(
                placeholder: 'Password',
                password: true,
                controller: passwordController,
                additionalNote: 'Password has to be a minimum of 6 characters.',
              ),
              verticalSpaceMedium,
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  BusyButton(
                    title: 'Sign Up',
                    onPressed: () {
                      // TODO: Perform firebase login here
                    },
                  )
                ],
              ),
              verticalSpaceMedium,
                TextLink(
                  'Ya tienes una cuenta? Loggeate.',
                  onPressed: () {
                    // TODO: Handle navigation
                  },
                )
            ],
          ),
        ),
      ),
    );
  }
}