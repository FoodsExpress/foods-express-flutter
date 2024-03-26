import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foods_express/common/component/custom_text_form_field_with_label.dart';
import 'package:foods_express/common/const/colors.dart';
import 'package:foods_express/common/layout/default_layout.dart';
import 'package:foods_express/common/view/root_tab.dart';
import 'package:foods_express/user/model/user_model.dart';
import 'package:foods_express/user/provider/user_me_provider.dart';

class LoginScreen extends ConsumerStatefulWidget {
  static String get routeName => 'login';

  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(userMeProvider);

    return DefaultLayout(
      child: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: SafeArea(
          top: true,
          bottom: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const _Title(),
                const SizedBox(height: 16.0),
                const _SubTitle(),
                Image.asset(
                  'asset/img/logo/fe-logo.png',
                ),
                const Padding(padding: EdgeInsets.all(10)),
                CustomTextFormFieldWithLabel(
                  labelText: '이메일',
                  onChanged: (String value) {
                    email = value;
                  },
                ),
                const Padding(padding: EdgeInsets.all(10)),
                CustomTextFormFieldWithLabel(
                  labelText: '비밀번호',
                  onChanged: (String value) {
                    password = value;
                  },
                ),
                const Padding(padding: EdgeInsets.all(10)),
                ElevatedButton(
                  onPressed: state is UserModelLoading
                      ? null
                      : () async {
                          ref.read(userMeProvider.notifier).login(
                                email: email,
                                password: password,
                              );

                          // ID:비밀번호
                          // final rawString = 'email:$password';
                          //
                          // Codec<String, String> stringToBase64 = utf8.fuse(base64);
                          //
                          // String token = stringToBase64.encode(rawString);
                          //
                          // final resp = await dio.post(
                          //   'http://$ip/auth/login',
                          //   options: Options(
                          //     headers: {
                          //       'authorization': 'Basic $token',
                          //     },
                          //   ),
                          // );
                          //
                          // final refreshToken = resp.data['refreshToken'];
                          // final accessToken = resp.data['accessToken'];
                          //
                          // final storage = ref.read(secureStorageProvider);
                          //
                          // await storage.write(key: REFRESH_TOKEN_KEY, value: refreshToken);
                          // await storage.write(key: ACCESS_TOKEN_KEY, value: accessToken);
                          //
                          // Navigator.of(context).push(
                          //   MaterialPageRoute(
                          //     builder: (_) => RootTab(),
                          //   ),
                          // );
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (_) => const RootTab()));
                        },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: PRIMARY_COLOR,
                  ),
                  child:
                      const Text('로그인', style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _Title extends StatelessWidget {
  const _Title();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Foods Express',
        style: TextStyle(
          fontSize: 34,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
      ),
    );
  }
}

class _SubTitle extends StatelessWidget {
  const _SubTitle();

  @override
  Widget build(BuildContext context) {
    return const Text(
      '세상에서 제일 빠른 배달.',
      style: TextStyle(
        fontSize: 16,
        color: BODY_TEXT_COLOR,
      ),
    );
  }
}
