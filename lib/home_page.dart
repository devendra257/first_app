import 'package:first_app/animation_alignment.dart';
import 'package:first_app/animation_builder/animation_builder_rotation.dart';
import 'package:first_app/animation_builder/animation_builder_scale.dart';
import 'package:first_app/animation_builder/animation_builder_transform.dart';
import 'package:first_app/animation_container.dart';
import 'package:first_app/animation_controller/animation_controller.dart';
import 'package:first_app/animation_controller/tween_controller.dart';
import 'package:first_app/animation_crossfade.dart';
import 'package:first_app/animation_hero.dart';
import 'package:first_app/animation_opacity.dart';
import 'package:first_app/animation_padding.dart';
import 'package:first_app/api/api_file/photo_api.dart';
import 'package:first_app/api/api_file/photo_with_curated/photo_curate.dart';
import 'package:first_app/api/api_file/photo_with_search/photo_api_search.dart';
import 'package:first_app/api/api_file/product_api.dart';
import 'package:first_app/api/api_file/quote_api.dart';
import 'package:first_app/app_bar/app_bar.dart';
import 'package:first_app/app_bar/app_bar_2.dart';
import 'package:first_app/background_filter/bg_filter_blur.dart';
import 'package:first_app/bloc_state/cubit_state/cubit_data.dart';
import 'package:first_app/bottom_bar/bottom_bar.dart';
import 'package:first_app/bottomappbar/bottomappbar.dart';
import 'package:first_app/clipper/clipper_path.dart';
import 'package:first_app/clipper/clippers.dart';
import 'package:first_app/data_transfer.dart';
import 'package:first_app/database/database_advance_controller.dart';
import 'package:first_app/database/database_basic.dart';
import 'package:first_app/dialog/all_type_dialog.dart';
import 'package:first_app/drawer/drawer.dart';
import 'package:first_app/elevated_button_widget.dart';
import 'package:first_app/floating_action_button/floating_action_button.dart';
import 'package:first_app/flutter_animation/flutter_animate.dart';
import 'package:first_app/lottie_files/lottie_file.dart';
import 'package:first_app/lottie_files/lottie_file_controller.dart';
import 'package:first_app/navigation_tail/navigation_tail..dart';
import 'package:first_app/provider/list_manage_change/list_manage_page.dart';
import 'package:first_app/provider/multi_value_change/provider_data2.dart';
import 'package:first_app/provider/second_page_provider/provider_data_3.dart';
import 'package:first_app/provider/single_value_change/provider_data.dart';
import 'package:first_app/radio_button/radion_button.dart';
import 'package:first_app/rive/login_with_rive.dart';
import 'package:first_app/rive/rating_rive.dart';
import 'package:first_app/rive/rive.dart';
import 'package:first_app/scoll_list_page_for_wallpaper_app/grid_view_scoll.dart';
import 'package:first_app/scoll_list_page_for_wallpaper_app/grid_view_scroll_controller.dart';
import 'package:first_app/shared_pref/shared_pref.dart';
import 'package:first_app/shared_pref/splash_page.dart';
import 'package:first_app/switch/switch.dart';
import 'package:first_app/tab_bar/tab_bar.dart';
import 'package:first_app/tab_bar/tab_bar_with_controller.dart';
import 'package:first_app/theme_manage/with_provider/theme_with_provider.dart';
import 'package:first_app/theme_manage/with_ui_helper_class/theme_data_ui.dart';
import 'package:first_app/theme_manage/without_provider/theme_without.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'animation_controller/multi_tween_controller.dart';
import 'basic_calculator.dart';
import 'bmi_calculator.dart';
import 'contact_page_mobile.dart';
import 'contact_page_web.dart';
import 'container.dart';
import 'grid_view.dart';
import 'images.dart';
import 'list_tile.dart';
import 'list_view.dart';
import 'list_view_buileder.dart';
import 'loginpage.dart';
import 'minimal_contact_mobile.dart';
import 'minimal_contact_web.dart';
import 'page_transition/page_transition.dart';
import 'row_column_ui.dart';
import 'splash_screen.dart';
import 'text.dart';
import 'text_field.dart';
import 'text_field_widget.dart';
import 'tip_calculator.dart';
import 'two_no_addtion.dart';
import 'whatsapp_ui.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, dynamic>> mainList = [
    {
      "title": "Container UI",
      "color": Colors.orange,
    },
    {
      "title": "Row & Column UI",
      "color": const Color.fromARGB(255, 255, 181, 33),
    },
    {
      "title": "Image UI",
      "color": Colors.yellow,
    },
    {
      "title": "Text UI",
      "color": Colors.deepOrange,
    },
    {
      "title": "Field Text UI",
      "color": Colors.purple.shade400,
    },
    {
      "title": "Login Page UI",
      "color": const Color.fromARGB(255, 207, 26, 98),
    },
    {
      "title": "Contact Page UI",
      "color": Colors.green.shade600,
    },
    {
      "title": "Contact Page Web",
      "color": const Color.fromARGB(255, 255, 128, 60),
    },
    {
      "title": "Minimal Contact Page",
      "color": const Color.fromARGB(255, 251, 107, 107),
    },
    {
      "title": "Minimal Contact Web",
      "color": const Color.fromARGB(255, 255, 189, 7),
    },
    {
      "title": "Tip Calculator",
      "color": Colors.indigo.shade300,
    },
    {
      "title": "Two No Additon",
      "color": const Color.fromARGB(255, 207, 26, 98),
    },
    {
      "title": "Basic Calculator",
      "color": Colors.yellow.shade400,
    },
    {
      "title": "BMI Calculator",
      "color": const Color.fromARGB(255, 255, 128, 60),
    },
    {
      "title": "List View UI",
      "color": const Color.fromARGB(255, 251, 107, 107),
    },
    {
      "title": "List View Builder",
      "color": const Color.fromARGB(255, 255, 189, 7),
    },
    {
      "title": "Grid View UI",
      "color": Colors.yellow.shade400,
    },
    {
      "title": "List Tile UI",
      "color": const Color.fromARGB(255, 255, 128, 60),
    },
    {
      "title": "Whatsapp UI",
      "color": const Color.fromARGB(255, 0, 166, 255),
    },
    {
      "title": "Splash Screen UI",
      "color": Colors.cyan.shade200,
    },
    {
      "title": "DataTransfer",
      "color": const Color.fromARGB(255, 207, 26, 98),
    },
    {
      "title": "Elevlated Custom Widget",
      "color": const Color.fromARGB(255, 195, 255, 0),
    },
    {
      "title": "TextField Custom Widget",
      "color": const Color.fromARGB(255, 255, 111, 0),
    },
    {
      "title": "Animated Container",
      "color": const Color.fromARGB(255, 231, 73, 255),
    },
    {
      "title": "Animated Alignment",
      "color": const Color.fromARGB(255, 82, 212, 255),
    },
    {
      "title": "Animated Opacity",
      "color": const Color.fromARGB(255, 255, 111, 111),
    },
    {
      "title": "Animated Padding",
      "color": const Color.fromARGB(255, 209, 185, 0),
    },
    {
      "title": "Animated Cross Fade",
      "color": const Color.fromARGB(255, 0, 188, 38),
    },
    {
      "title": "Hero Animation",
      "color": const Color.fromARGB(255, 185, 88, 255),
    },
    {
      "title": "Page Transition",
      "color": const Color.fromARGB(255, 195, 255, 0),
    },
    {
      "title": "Animation Controller",
      "color": const Color.fromARGB(129, 90, 0, 0),
    },
    {
      "title": "Tween Animation",
      "color": Colors.indigo.shade300,
    },
    {
      "title": "Tween Animation Multi Controller",
      "color": const Color.fromARGB(255, 253, 114, 255),
    },
    {
      "title": "Animation Builder Transform",
      "color": const Color.fromARGB(255, 255, 206, 114),
    },
    {
      "title": "Animation Builder Rotation",
      "color": const Color.fromARGB(255, 114, 255, 210),
    },
    {
      "title": "Animation Builder Scale",
      "color": const Color.fromARGB(255, 114, 128, 255),
    },
    {
      "title": "Lottie Animation",
      "color": const Color.fromARGB(255, 95, 207, 110),
    },
    {
      "title": "Lottie File Controller",
      "color": const Color.fromARGB(255, 255, 181, 33),
    },
    {
      "title": "Rive Animation",
      "color": const Color.fromARGB(255, 33, 255, 155),
    },
    {
      "title": "Rive Login Animation",
      "color": const Color.fromARGB(255, 48, 33, 255),
    },
    {
      "title": "Rive Ration Animation",
      "color": const Color.fromARGB(255, 255, 106, 193),
    },
    {
      "title": "Flutter Plugin Animation",
      "color": const Color.fromARGB(255, 185, 88, 255),
    },
    {
      "title": "Shared Preferences",
      "color": Colors.yellow.shade400,
    },
    {
      "title": "Shared Preferences Login Concept",
      "color": Colors.black45,
    },
    {
      "title": "Data Base Basic",
      "color": const Color.fromARGB(255, 0, 188, 38),
    },
    {
      "title": "Data Base Adavance",
      "color": const Color.fromARGB(255, 255, 128, 60),
    },
    {
      "title": "Provider Basic",
      "color": const Color.fromARGB(255, 48, 33, 255),
    },
    {
      "title": "Multi Change Provider Value",
      "color": const Color.fromARGB(255, 0, 188, 38),
    },
    {
      "title": "Multi Change Provider \n Value Second Page",
      "color": const Color.fromARGB(255, 147, 255, 169),
    },
    {
      "title": "List Provider",
      "color": const Color.fromARGB(255, 255, 179, 138),
    },
    {
      "title": "Cubit Data",
      "color": const Color.fromARGB(255, 255, 172, 127),
    },
    {
      "title": "Theme WithOut Provider",
      "color": const Color.fromARGB(255, 255, 213, 190),
    },
    {
      "title": "Theme With Provider",
      "color": const Color.fromARGB(255, 255, 96, 96),
    },
    {
      "title": "Theme With Provider \n Constant Helper",
      "color": const Color.fromARGB(255, 255, 181, 33),
    },
    {
      "title": "Quote API",
      "color": const Color.fromARGB(255, 150, 173, 255),
    },
    {
      "title": "Product API",
      "color": const Color.fromARGB(255, 233, 255, 161),
    },
    {
      "title": "Pexel Photo API",
      "color": const Color.fromARGB(255, 108, 179, 255),
    },
    {
      "title": "Pexel Photo API \n With Search",
      "color": Colors.brown.shade200,
    },
    {
      "title": "Pexel Photo API Curated \n Automatic Updated Photos",
      "color": const Color.fromARGB(255, 255, 194, 150),
    },
    {
      "title": "Grid View \n Scoller List \n with  \n Notification Listener",
      "color": const Color.fromARGB(255, 255, 181, 33),
    },
    {
      "title": "Grid View \n Scoller List \n with Controller",
      "color": Color.fromARGB(255, 255, 234, 191),
    },
    {
      "title": "App Bar UI",
      "color": Color.fromARGB(255, 69, 64, 138),
    },
    {
      "title": "App Bar UI 2",
      "color": Colors.amber.shade300,
    },
    {
      "title": "Tab Bar Page",
      "color": Colors.purple.shade300,
    },
    {
      "title": "Tab Bar Page Controller",
      "color": const Color.fromARGB(255, 104, 200, 109),
    },
    {
      "title": "Bottom  Navigation Bar",
      "color": Color.fromARGB(255, 104, 189, 200),
    },
    {
      "title": "Drawer Page",
      "color": const Color.fromARGB(255, 231, 73, 255),
    },
    {
      "title": "Bottom App Bar ",
      "color": Color.fromARGB(255, 255, 182, 114),
    },
    {
      "title": "Navigation Rail",
      "color": Color.fromARGB(118, 48, 33, 255),
    },
    {
      "title": "Dialog Page",
      "color": Colors.cyan.shade300,
    },
    {
      "title": "Floating Action Botton",
      "color": const Color.fromARGB(255, 147, 255, 169),
    },
    {
      "title": "Radio Botton Page",
      "color": const Color.fromARGB(255, 255, 179, 138),
    },
    {
      "title": "Switch Page",
      "color": const Color.fromARGB(77, 255, 179, 138),
    },
    {
      "title": "Backgraound Filter",
      "color": const Color.fromARGB(255, 0, 166, 255),
    },
    {
      "title": "Clippers Over & RRect",
      "color": const Color.fromARGB(255, 170, 225, 255),
    },
    {
      "title": "Clipper Paths",
      "color": const Color.fromARGB(255, 255, 231, 183),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('All UI Design'),
        ),
        body: GridView.builder(
          itemCount: mainList.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                if (index == 0) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ContainerUI(),
                    ), //* Button to push Container UI Page
                  );
                } else if (index == 1) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RowAndColumn(),
                    ), //* Button to push Row & Column UI Page
                  );
                } else if (index == 2) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ImagesUI(),
                    ), //* Button to push Images UI Page
                  );
                } else if (index == 3) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TextUI(),
                    ), //* Button to push Text UI Page
                  );
                } else if (index == 4) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FieldTextUI(),
                    ), //* Button to push Field Text UI Page
                  );
                } else if (index == 5) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginPage(),
                    ), //* Button to push Login Page UI Page
                  );
                } else if (index == 6) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ContactPage(),
                    ), //* Button to push Contact Page UI Page
                  );
                } else if (index == 7) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ContactPageWeb(),
                    ), //* Button to push Contact Page web UI Page
                  );
                } else if (index == 8) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MinimalContact(),
                    ), //* Button to push Minimal Contact UI Page
                  );
                } else if (index == 9) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Minimal_Contact_Web(),
                    ), //* Button to push  Minimal Contact web UI Page
                  );
                } else if (index == 10) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TipCalculator(),
                    ), //* Button to push Tip Calculator UI Page
                  );
                } else if (index == 11) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Addition(),
                    ), //* Button to push Two number Additon UI Page
                  );
                } else if (index == 12) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BasicCalculator(),
                    ), //* Button to push Basic Calculator UI Page
                  );
                } else if (index == 13) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BMICalculator(),
                    ), //* Button to push BMI Calculator UI Page
                  );
                } else if (index == 14) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ListViewUI(),
                    ), //* Button to push List View UI Page
                  );
                } else if (index == 15) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ListViewBuilderUi(),
                    ), //* Button to push List View Builder ui UI Page
                  );
                } else if (index == 16) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => GridViewUI(),
                    ), //* Button to push Grid View UI Page
                  );
                } else if (index == 17) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ListTileUi(),
                    ), //* Button to push List Tile UI UI Page
                  );
                } else if (index == 18) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => WhatsappUI(),
                    ), //* Button to push Whatsapp UI Page
                  );
                } else if (index == 19) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SplashScreen(),
                    ), //* Button to push Splash Screen UI Page
                  );
                } else if (index == 20) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Data_Transfer(),
                    ), //* Button to push Data Transfer UI Page
                  );
                } else if (index == 21) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ElevatedButtonWidget(),
                    ), //* Button to push Elevated Button Widget UI Page
                  );
                } else if (index == 22) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const TextWidget(),
                    ), //* Button to push Text Widget UI Page
                  );
                } else if (index == 23) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AnimationContainer(),
                    ), //* Button to push Animation Container UI Page
                  );
                } else if (index == 24) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AnimationAlignment(),
                    ), //* Button to push Animation Alignment UI Page
                  );
                } else if (index == 25) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AnimationOpacity(),
                    ), //* Button to push Animation Opacity UI Page
                  );
                } else if (index == 26) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AnimationPadding(),
                    ), //* Button to push Animation Padding UI Page
                  );
                } else if (index == 27) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AnimationCrossfade(),
                    ), //* Button to push Animation Cross fade UI Page
                  );
                } else if (index == 28) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HeroAnimation(),
                    ), //* Button to push Hero Animation Hero UI Page
                  );
                } else if (index == 29) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Page_Transition(),
                    ), //* Button to push Page Transition UI Page
                  );
                } else if (index == 30) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AnimController(),
                    ), //* Button to push AnimController UI Page
                  );
                } else if (index == 31) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const TweenAnim(),
                    ), //* Button to push Tween Anim UI Page
                  );
                } else if (index == 32) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MultiTweenAnimation(),
                    ), //* Button to push Multi Tween Anim UI Page
                  );
                } else if (index == 33) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AnimationBuiler(),
                    ), //* Button to push Animation Builder Transform UI Page
                  );
                } else if (index == 34) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AnimationBuilerRotation(),
                    ), //* Button to push Animation Builder Rotation UI Page
                  );
                } else if (index == 35) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AnimationBuilderScale(),
                    ), //* Button to push Animation Builder Scale UI Page
                  );
                } else if (index == 36) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Lottiefiles(),
                    ), //* Button to push Lottie Files UI Page
                  );
                } else if (index == 37) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LottieFilesController(),
                    ), //* Button to push LottieFilesController UI Page
                  );
                } else if (index == 38) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const RiveAnimationController(),
                    ), //* Button to push Rive Animation UI Page
                  );
                } else if (index == 39) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginwithRive(),
                    ), //* Button to push Rive Animation with login Emoji UI Page
                  );
                } else if (index == 40) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const RatingRive(),
                    ), //* Button to push Rive Rating Animation  UI Page
                  );
                } else if (index == 41) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const FlutterAnimation(),
                    ), //* Button to push Flutter Animation UI Page
                  );
                } else if (index == 42) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SharedPrefPage(),
                    ), //* Button to push Shared Preference UI Page
                  );
                } else if (index == 43) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SplashPage(),
                    ), //* Button to push Shared Preference Login UI Page
                  );
                } else if (index == 44) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DataBaseBasic(),
                    ), //* Button to push DataBase BAsic UI Page
                  );
                } else if (index == 45) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DataBaseAdvance(),
                    ), //* Button to push DataBase Advance UI Page
                  );
                } else if (index == 46) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProviderData(),
                    ), //* Button to push Provider Class UI Page
                  );
                } else if (index == 47) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProviderData2(),
                    ), //* Button to push Provider Class UI Page
                  );
                } else if (index == 48) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProviderData3(),
                    ), //* Button to push Provider Class 3 UI Page
                  );
                } else if (index == 49) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ListManagePage(),
                    ), //* Button to push List Provider UI Page
                  );
                } else if (index == 50) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CubitData(),
                    ), //* Button to push Bloc State UI Page
                  );
                } else if (index == 51) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ThemeWithOut(),
                    ), //* Button to push Theme Without Provider Normal UI Page
                  );
                } else if (index == 52) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ThemeWithProvider(),
                    ), //* Button to push Theme With Provider UI Page
                  );
                } else if (index == 53) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ThemeDataUI(),
                    ), //* Button to push Theme With Provider and Contact File UI Page
                  );
                } else if (index == 54) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => QuoteApi(),
                    ), //* Button to push Quote Api calling(Means Basic Api calling ) UI Page
                  );
                } else if (index == 55) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductAPI(),
                    ), //* Button to push Product With Image Api calling UI Page
                  );
                } else if (index == 56) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PhotoAPI(),
                    ), //* Button to push Pexel Photo Api calling UI Page
                  );
                } else if (index == 57) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PhotoApiWithSearch(),
                    ), //* Button to push Photo API with Search calling UI Page
                  );
                } else if (index == 58) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PhotoCurated(),
                    ), //* Button to push Photo API with Curated data Upadte into 1 hour UI Page
                  );
                } else if (index == 59) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => GridViewScollPage(),
                    ), //* Button to push Grid View Scoll with Notification Lisner Page  UI Page
                  );
                } else if (index == 60) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ScrollControllerUsingGridView(),
                    ), //* Button to push Grid View Scoll with Controller Page UI Page
                  );
                } else if (index == 61) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AppBarPage(),
                    ), //* App bar with button
                  );
                } else if (index == 62) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AppBarPage2(),
                    ), //* App bar customScrollView
                  );
                } else if (index == 63) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TabBarPage(),
                    ), //* Tab Bar Page
                  );
                } else if (index == 64) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TabBarControllerPage(),
                    ), //* Tab Bar Page with Controller
                  );
                } else if (index == 65) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BottomBar(),
                    ), //* BottomAppBar Page with Controller
                  );
                } else if (index == 66) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DrawerPage(),
                    ), //* BottomAppBar Page with Controller
                  );
                } else if (index == 67) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BottomAppBarPage(),
                    ), //* BottomAppBar Page with Controller
                  );
                } else if (index == 68) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NavigationTailPage(),
                    ), //* BottomAppBar Page with Controller
                  );
                } else if (index == 69) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DialogPage(),
                    ), //* BottomAppBar Page with Controller
                  );
                } else if (index == 70) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FloatingActionBottonPage(),
                    ), //* BottomAppBar Page with Controller
                  );
                } else if (index == 71) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RadioBottonPage(),
                    ), //* BottomAppBar Page with Controller
                  );
                } else if (index == 72) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SwitchPage(),
                    ), //* BottomAppBar Page with Controller
                  );
                } else if (index == 73) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BGBlur(),
                    ), //* BottomAppBar Page with Controller
                  );
                } else if (index == 74) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ClippersPage(),
                    ), //* Clipper ovel and rrect
                  );
                } else if (index == 75) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ClipperPathPage(),
                    ), //* Clipper Paths
                  );
                }
              },
              child: Container(
                //                 // * This Container used to Container UI...
                margin: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: mainList[index]['color'],
                  border: Border.all(width: 1, color: Colors.black),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: FittedBox(
                    child: Text(
                      mainList[index]['title'].toString(),
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 23,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            );
          },
        )

        // Padding(
        //   padding: const EdgeInsets.all(10.0),
        //   child: SingleChildScrollView(
        //     child: Column(
        //       mainAxisAlignment: MainAxisAlignment.start,
        //       crossAxisAlignment: CrossAxisAlignment.start,
        //       children: [
        //         SingleChildScrollView(
        //           scrollDirection: Axis.horizontal,
        //           child: Row(
        //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //             children: [
        //               Container(
        //                 // * This Container used to Container UI...
        //                 width: 200,
        //                 height: 100,
        //                 decoration: BoxDecoration(
        //                   color: Colors.orange,
        //                   border: Border.all(width: 1, color: Colors.black),
        //                   borderRadius: BorderRadius.circular(20),
        //                 ),
        //                 child: TextButton(
        //                   onPressed: () {
        //                     Navigator.push(
        //                       context,
        //                       MaterialPageRoute(
        //                         builder: (context) => ContainerUI(),
        //                       ), //* Button to push Container UI Page
        //                     );
        //                   },
        //                   child: const FittedBox(
        //                     child: Text(
        //                       'Container UI',
        //                       style: TextStyle(
        //                           color: Colors.black,
        //                           fontSize: 25,
        //                           fontWeight: FontWeight.bold),
        //                     ),
        //                   ),
        //                 ),
        //               ),
        //               SizedBox(
        //                 width: 10,
        //               ),
        //               Container(
        //                 //* This Container used to first Row & Column UI..
        //                 width: 200,
        //                 height: 100,
        //                 decoration: BoxDecoration(
        //                   border: Border.all(width: 1),
        //                   color: Colors.amber,
        //                   borderRadius: BorderRadius.circular(20),
        //                 ),
        //                 child: TextButton(
        //                   onPressed: () {
        //                     Navigator.push(
        //                         context,
        //                         MaterialPageRoute(
        //                             builder: (context) =>
        //                                 RowAndColumn())); //* To Push Page on Row and Column UI
        //                   },
        //                   child: const FittedBox(
        //                     child: Text(
        //                       "Row & Column UI",
        //                       style: TextStyle(
        //                           fontSize: 25,
        //                           fontWeight: FontWeight.bold,
        //                           color: Colors.black),
        //                     ),
        //                   ),
        //                 ),
        //               ),
        //             ],
        //           ),
        //         ),
        //         const SizedBox(
        //           height: 20,
        //         ),
        //         SingleChildScrollView(
        //           scrollDirection: Axis.horizontal,
        //           child: Row(
        //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //             children: [
        //               Container(
        //                 width: 200,
        //                 height: 100,
        //                 decoration: BoxDecoration(
        //                   color: Colors.yellow.shade400,
        //                   border: Border.all(width: 1),
        //                   borderRadius: BorderRadius.circular(20),
        //                 ),
        //                 child: Center(
        //                     child: TextButton(
        //                   onPressed: () {
        //                     Navigator.push(
        //                       context,
        //                       MaterialPageRoute(
        //                           builder: (context) =>
        //                               ImagesUI()), //* To Push Page on Images Ui..
        //                     );
        //                   },
        //                   child: const Text(
        //                     'Image UI',
        //                     style: TextStyle(
        //                         fontSize: 25,
        //                         fontWeight: FontWeight.bold,
        //                         color: Colors.black),
        //                   ),
        //                 )),
        //               ),
        //               SizedBox(
        //                 width: 10,
        //               ),
        //               Container(
        //                 width: 200,
        //                 height: 100,
        //                 decoration: BoxDecoration(
        //                   color: const Color.fromARGB(255, 255, 128, 60),
        //                   border: Border.all(width: 1),
        //                   borderRadius: BorderRadius.circular(20),
        //                 ),
        //                 child: Center(
        //                     child: TextButton(
        //                   onPressed: () {
        //                     Navigator.push(
        //                       context,
        //                       MaterialPageRoute(
        //                           builder: (context) =>
        //                               TextUI()), //* To Push Page on Text Ui..
        //                     );
        //                   },
        //                   child: const Text(
        //                     'Text UI',
        //                     style: TextStyle(
        //                         fontSize: 25,
        //                         fontWeight: FontWeight.bold,
        //                         color: Colors.black),
        //                   ),
        //                 )),
        //               ),
        //             ],
        //           ),
        //         ),
        //         const SizedBox(
        //           height: 20,
        //         ),
        //         SingleChildScrollView(
        //           scrollDirection: Axis.horizontal,
        //           child: Row(
        //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //             children: [
        //               Container(
        //                 width: 200,
        //                 height: 100,
        //                 decoration: BoxDecoration(
        //                   color: Colors.indigo.shade300,
        //                   border: Border.all(width: 1),
        //                   borderRadius: BorderRadius.circular(20),
        //                 ),
        //                 child: Center(
        //                   child: TextButton(
        //                       onPressed: () {
        //                         Navigator.push(
        //                           context,
        //                           MaterialPageRoute(
        //                               builder: (context) =>
        //                                   FieldTextUI()), //* Push on Field Text UI Page
        //                         );
        //                       },
        //                       child: const Center(
        //                         child: Text(
        //                           'Field Text UI',
        //                           style: TextStyle(
        //                             color: Colors.black,
        //                             fontSize: 25,
        //                             fontWeight: FontWeight.bold,
        //                           ),
        //                         ),
        //                       )),
        //                 ),
        //               ),
        //               SizedBox(
        //                 width: 10,
        //               ),
        //               Container(
        //                 width: 200,
        //                 height: 100,
        //                 decoration: BoxDecoration(
        //                   color: const Color.fromARGB(255, 207, 26, 98),
        //                   border: Border.all(width: 1),
        //                   borderRadius: BorderRadius.circular(20),
        //                 ),
        //                 child: Center(
        //                   child: TextButton(
        //                       onPressed: () {
        //                         Navigator.push(
        //                           context,
        //                           MaterialPageRoute(
        //                               builder: (context) =>
        //                                   LoginPage()), //* Push on Field Text UI Page
        //                         );
        //                       },
        //                       child: const Center(
        //                         child: Text(
        //                           'Login Page UI',
        //                           style: TextStyle(
        //                             color: Colors.black,
        //                             fontSize: 25,
        //                             fontWeight: FontWeight.bold,
        //                           ),
        //                         ),
        //                       )),
        //                 ),
        //               )
        //             ],
        //           ),
        //         ),
        //         const SizedBox(
        //           height: 20,
        //         ),
        //         //TODO: ROW 4
        //         SingleChildScrollView(
        //           scrollDirection: Axis.horizontal,
        //           child: Row(
        //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //             children: [
        //               Container(
        //                 //* Contact Page.
        //                 width: 200,
        //                 height: 100,
        //                 decoration: BoxDecoration(
        //                   color: Colors.green.shade600,
        //                   border: Border.all(width: 1),
        //                   borderRadius: BorderRadius.circular(20),
        //                 ),
        //                 child: Center(
        //                     child: TextButton(
        //                   onPressed: () {
        //                     Navigator.push(
        //                       context,
        //                       MaterialPageRoute(
        //                           builder: (context) =>
        //                               ContactPage()), //* To Push Page on Contact Page Ui..
        //                     );
        //                   },
        //                   child: const FittedBox(
        //                     child: Text(
        //                       'Contact Page UI',
        //                       style: TextStyle(
        //                           fontSize: 25,
        //                           fontWeight: FontWeight.bold,
        //                           color: Colors.black),
        //                     ),
        //                   ),
        //                 )),
        //               ),
        //               SizedBox(
        //                 width: 10,
        //               ),
        //               Container(
        //                 width: 200,
        //                 height: 100,
        //                 decoration: BoxDecoration(
        //                   color: Color.fromARGB(255, 255, 128, 60),
        //                   border: Border.all(width: 1),
        //                   borderRadius: BorderRadius.circular(20),
        //                 ),
        //                 child: Center(
        //                   child: TextButton(
        //                     onPressed: () {
        //                       Navigator.push(
        //                         context,
        //                         MaterialPageRoute(
        //                             builder: (context) =>
        //                                 ContactPageWeb()), //* To Push Page on Text Ui..
        //                       );
        //                     },
        //                     child: const FittedBox(
        //                       child: Text(
        //                         'Contact Page Web',
        //                         style: TextStyle(
        //                             fontSize: 25,
        //                             fontWeight: FontWeight.bold,
        //                             color: Colors.black),
        //                       ),
        //                     ),
        //                   ),
        //                 ),
        //               ),
        //             ],
        //           ),
        //         ),
        //         SizedBox(
        //           height: 20,
        //         ),
        //         SingleChildScrollView(
        //           scrollDirection: Axis.horizontal,
        //           child: Row(
        //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //             children: [
        //               Container(
        //                 //* This Container used to first Row & Column UI..
        //                 width: 200,
        //                 height: 100,
        //                 decoration: BoxDecoration(
        //                   border: Border.all(width: 1),
        //                   color: Color.fromARGB(255, 251, 107, 107),
        //                   borderRadius: BorderRadius.circular(20),
        //                 ),
        //                 child: TextButton(
        //                   onPressed: () {
        //                     Navigator.push(
        //                         context,
        //                         MaterialPageRoute(
        //                             builder: (context) =>
        //                                 MinimalContact())); //* To Push Page on Row and Column UI
        //                   },
        //                   child: const FittedBox(
        //                     child: Text(
        //                       "Minimal Contact Page",
        //                       style: TextStyle(
        //                           fontSize: 25,
        //                           fontWeight: FontWeight.bold,
        //                           color: Colors.black),
        //                     ),
        //                   ),
        //                 ),
        //               ),
        //               SizedBox(
        //                 width: 10,
        //               ),
        //               Container(
        //                 // * This Container used to Container UI...
        //                 width: 200,
        //                 height: 100,
        //                 decoration: BoxDecoration(
        //                   color: Color.fromARGB(255, 255, 189, 7),
        //                   border: Border.all(width: 1, color: Colors.black),
        //                   borderRadius: BorderRadius.circular(20),
        //                 ),
        //                 child: TextButton(
        //                   onPressed: () {
        //                     Navigator.push(
        //                       context,
        //                       MaterialPageRoute(
        //                           builder: (context) =>
        //                               Minimal_Contact_Web()), //* Button to push Contact us UI Page
        //                     );
        //                   },
        //                   child: const FittedBox(
        //                     child: Text(
        //                       'Minimal Contact Web',
        //                       style: TextStyle(
        //                           color: Colors.black,
        //                           fontSize: 25,
        //                           fontWeight: FontWeight.bold),
        //                     ),
        //                   ),
        //                 ),
        //               ),
        //             ],
        //           ),
        //         ),
        //         const SizedBox(
        //           height: 20,
        //         ),
        //         SingleChildScrollView(
        //           scrollDirection: Axis.horizontal,
        //           child: Row(
        //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //             children: [
        //               Container(
        //                 width: 200,
        //                 height: 100,
        //                 decoration: BoxDecoration(
        //                   color: Colors.indigo.shade300,
        //                   border: Border.all(width: 1),
        //                   borderRadius: BorderRadius.circular(20),
        //                 ),
        //                 child: Center(
        //                   child: TextButton(
        //                       onPressed: () {
        //                         Navigator.push(
        //                           context,
        //                           MaterialPageRoute(
        //                               builder: (context) =>
        //                                   TipCalculator()), //* Push on Tip Calculator UI Page
        //                         );
        //                       },
        //                       child: const Center(
        //                         child: Text(
        //                           'Tip Calculator',
        //                           style: TextStyle(
        //                             color: Colors.black,
        //                             fontSize: 25,
        //                             fontWeight: FontWeight.bold,
        //                           ),
        //                         ),
        //                       )),
        //                 ),
        //               ),
        //               SizedBox(
        //                 width: 10,
        //               ),
        //               Container(
        //                 width: 200,
        //                 height: 100,
        //                 decoration: BoxDecoration(
        //                   color: const Color.fromARGB(255, 207, 26, 98),
        //                   border: Border.all(width: 1),
        //                   borderRadius: BorderRadius.circular(20),
        //                 ),
        //                 child: Center(
        //                   child: TextButton(
        //                     onPressed: () {
        //                       Navigator.push(
        //                         context,
        //                         MaterialPageRoute(
        //                             builder: (context) =>
        //                                 Addition()), //* Push on Field Text UI Page
        //                       );
        //                     },
        //                     child: const Center(
        //                       child: Text(
        //                         'Two No Addition',
        //                         style: TextStyle(
        //                           color: Colors.black,
        //                           fontSize: 20,
        //                           fontWeight: FontWeight.bold,
        //                         ),
        //                       ),
        //                     ),
        //                   ),
        //                 ),
        //               )
        //             ],
        //           ),
        //         ),
        //         const SizedBox(
        //           height: 20,
        //         ),
        //         SingleChildScrollView(
        //           scrollDirection: Axis.horizontal,
        //           child: Row(
        //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //             children: [
        //               Container(
        //                 width: 200,
        //                 height: 100,
        //                 decoration: BoxDecoration(
        //                   color: Colors.yellow.shade400,
        //                   border: Border.all(width: 1),
        //                   borderRadius: BorderRadius.circular(20),
        //                 ),
        //                 child: Center(
        //                     child: TextButton(
        //                   onPressed: () {
        //                     Navigator.push(
        //                       context,
        //                       MaterialPageRoute(
        //                           builder: (context) =>
        //                               BasicCalculator()), //* To Push Page on Images Ui..
        //                     );
        //                   },
        //                   child: const Text(
        //                     'Basic Calculator',
        //                     style: TextStyle(
        //                         fontSize: 20,
        //                         fontWeight: FontWeight.bold,
        //                         color: Colors.black),
        //                   ),
        //                 )),
        //               ),
        //               SizedBox(
        //                 width: 10,
        //               ),
        //               Container(
        //                 width: 200,
        //                 height: 100,
        //                 decoration: BoxDecoration(
        //                   color: const Color.fromARGB(255, 255, 128, 60),
        //                   border: Border.all(width: 1),
        //                   borderRadius: BorderRadius.circular(20),
        //                 ),
        //                 child: Center(
        //                     child: TextButton(
        //                   onPressed: () {
        //                     Navigator.push(
        //                       context,
        //                       MaterialPageRoute(
        //                           builder: (context) =>
        //                               BMICalculator()), //* To Push Page on Text Ui..
        //                     );
        //                   },
        //                   child: const Text(
        //                     'BMI Calculator',
        //                     style: TextStyle(
        //                         fontSize: 20,
        //                         fontWeight: FontWeight.bold,
        //                         color: Colors.black),
        //                   ),
        //                 )),
        //               ),
        //             ],
        //           ),
        //         ),
        //         SizedBox(
        //           height: 20,
        //         ),
        //         SingleChildScrollView(
        //           scrollDirection: Axis.horizontal,
        //           child: Row(
        //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //             children: [
        //               Container(
        //                 //* This Container used to first Row & Column UI..
        //                 width: 200,
        //                 height: 100,
        //                 decoration: BoxDecoration(
        //                   border: Border.all(width: 1),
        //                   color: Color.fromARGB(255, 251, 107, 107),
        //                   borderRadius: BorderRadius.circular(20),
        //                 ),
        //                 child: TextButton(
        //                   onPressed: () {
        //                     Navigator.push(
        //                         context,
        //                         MaterialPageRoute(
        //                             builder: (context) =>
        //                                 ListViewUI())); //* To Push Page on Row and Column UI
        //                   },
        //                   child: const FittedBox(
        //                     child: Text(
        //                       "List View UI",
        //                       style: TextStyle(
        //                           fontSize: 25,
        //                           fontWeight: FontWeight.bold,
        //                           color: Colors.black),
        //                     ),
        //                   ),
        //                 ),
        //               ),
        //               SizedBox(
        //                 width: 10,
        //               ),
        //               Container(
        //                 // * This Container used to Container UI...
        //                 width: 200,
        //                 height: 100,
        //                 decoration: BoxDecoration(
        //                   color: Color.fromARGB(255, 255, 189, 7),
        //                   border: Border.all(width: 1, color: Colors.black),
        //                   borderRadius: BorderRadius.circular(20),
        //                 ),
        //                 child: TextButton(
        //                   onPressed: () {
        //                     Navigator.push(
        //                       context,
        //                       MaterialPageRoute(
        //                         builder: (context) => ListViewBuilderUi(),
        //                       ), //* Button to push Contact us UI Page
        //                     );
        //                   },
        //                   child: const FittedBox(
        //                     child: Text(
        //                       'List View Builder',
        //                       style: TextStyle(
        //                           color: Colors.black,
        //                           fontSize: 25,
        //                           fontWeight: FontWeight.bold),
        //                     ),
        //                   ),
        //                 ),
        //               ),
        //             ],
        //           ),
        //         ),
        //         const SizedBox(
        //           height: 20,
        //         ),
        //         SingleChildScrollView(
        //           //* Grid View Container
        //           scrollDirection: Axis.horizontal,
        //           child: Row(
        //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //             children: [
        //               Container(
        //                 width: 200,
        //                 height: 100,
        //                 decoration: BoxDecoration(
        //                   color: Colors.yellow.shade400,
        //                   border: Border.all(width: 1),
        //                   borderRadius: BorderRadius.circular(20),
        //                 ),
        //                 child: Center(
        //                     child: TextButton(
        //                   onPressed: () {
        //                     Navigator.push(
        //                       context,
        //                       MaterialPageRoute(
        //                         builder: (context) => GridViewUI(),
        //                       ), //* To Push Page on Grid View..
        //                     );
        //                   },
        //                   child: const Text(
        //                     'Grid View',
        //                     style: TextStyle(
        //                         fontSize: 25,
        //                         fontWeight: FontWeight.bold,
        //                         color: Colors.black),
        //                   ),
        //                 )),
        //               ),
        //               SizedBox(
        //                 width: 10,
        //               ),
        //               Container(
        //                 width: 200,
        //                 height: 100,
        //                 decoration: BoxDecoration(
        //                   color: const Color.fromARGB(255, 255, 128, 60),
        //                   border: Border.all(width: 1),
        //                   borderRadius: BorderRadius.circular(20),
        //                 ),
        //                 child: Center(
        //                     child: TextButton(
        //                   onPressed: () {
        //                     Navigator.push(
        //                       context,
        //                       MaterialPageRoute(
        //                           builder: (context) =>
        //                               ListTileUi()), //* To Push Page on Text Ui..
        //                     );
        //                   },
        //                   child: const Text(
        //                     'List Tile',
        //                     style: TextStyle(
        //                         fontSize: 25,
        //                         fontWeight: FontWeight.bold,
        //                         color: Colors.black),
        //                   ),
        //                 )),
        //               ),
        //             ],
        //           ),
        //         ),
        //       ],
        //     ),
        //   ),
        // ),

        );
  }
}
