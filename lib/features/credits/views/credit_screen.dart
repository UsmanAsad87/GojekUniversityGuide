import 'package:gojek_university_app/features/credits/widgets/credit_widget.dart';
import 'package:gojek_university_app/features/credits/widgets/thanks_widget.dart';
import 'package:gojek_university_app/utils/constants/assets_manager.dart';
import '../../../commons/common_imports/common_libs.dart';


/// Credits Screen
class CreditScreen extends StatelessWidget {
  const CreditScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 160.h,),
            SizedBox(
              height: 37.h,
            ),
            Image.asset(AppAssets.smallShapesImages, width: 140.w, height: 60.h,),
            SizedBox(
              height: 40.h,
            ),
            /// Credits Card Widget
            CreditWidget(
              imagePath: AppAssets.samuelImage,
              smallSubTitle: 'swe',
              title: 'Samuel Kleats , GJ10, SWE',
              subtitle: 'App Development + Design',
              onTap: () {},
            ),
            CreditWidget(
              smallSubTitle: 'swe',
              imagePath: AppAssets.sophiaImage,
              title: 'Sophia Krutz , GJ10, SWE',
              subtitle: 'Design + App Architecture',
              onTap: () {},
            ),
            CreditWidget(
              smallSubTitle: 'swe',
              imagePath: AppAssets.albertoImage,
              title: 'Alberto Fernandes, GJ10, SWE',
              subtitle: 'Chatbot + Resource Collation',
              onTap: () {},
            ),
            const ThanksWidget(),
            SizedBox(
              height: 40.h,
            ),
          ],
        ),
      ),
    );
  }
}


