import 'package:ashrafloginregister/Screens/home_screen.dart';
import 'package:ashrafloginregister/shared/bloc_observer/bloc_observer.dart';
import 'package:ashrafloginregister/shared/network/local_network.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'Logic/Auth/cubit/auth_state.dart';
import 'Screens/home_screen.dart';
import 'Screens/login.dart';
import 'Screens/registter.dart';
import 'Logic/Auth/cubit/auth_cubit.dart';
String? token;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  await CacheNetwork.cacheInitialization();
  token = CacheNetwork.getCacheData(key: 'token');
  print("token is : $token");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360,690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context,child){
        return MultiBlocProvider(
          providers:
          [
            BlocProvider(create: (context) => AuthCubit()),

          ],
          child: MaterialApp(
              debugShowCheckedModeBanner: false,
              home: LoginScreen()
            // token != null && token != "" ? const LayoutScreen() : LoginScreen()
          ),
        );
      },
    );
  }
}
