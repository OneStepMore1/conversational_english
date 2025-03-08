// import 'package:conversational_english/gen/assets.gen.dart';
// import 'package:conversational_english/util/extensions/extension.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:power_state/power_state.dart';

// import '../../features/history/model/history_chat_model.dart';
// import '../../features/home/controller/home_controller.dart';
// import '../../util/constants/date_utilities.dart';
// import '../../util/constants/default_values.dart';
// import '../../util/constants/dimension_theme.dart';
// import '../../util/services/navigation_service.dart';
// import '../functions/is_null.dart';

// class CustomHistoryCard extends StatelessWidget {
//   final HistoryChat? items;
//   const CustomHistoryCard({super.key, this.items});

//   @override
//   Widget build(BuildContext context) {
//     final mq = MediaQuery.of(context).size;
//     return Padding(
//       padding: EdgeInsets.symmetric(vertical: mq.height * 0.01),
//       child: InkWell(
//         onTap: () {
//           final CHome cHome = PowerVault.find();
//           cHome.chatList.data?.messages?.clear();
//           cHome.getAiChat(chatId: items!.id!);
//           cHome.chatId = items!.id;
//           Navigation.pop();
//           Navigation.pop();
//         },
//         child: Container(
//           padding: EdgeInsets.all(mq.width * 0.03),
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(PTheme.boarderRadius),
//             border: Border.all(color: context.theme.dividerColor),
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.grey.withOpacity(0.1),
//                 spreadRadius: 1,
//                 blurRadius: 5,
//                 offset: const Offset(0, 2),
//               ),
//             ],
//           ),
//           child: Row(
//             children: [
//               // App Icon
//               SizedBox(
//                 width: 60.w,
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Container(
//                       height: mq.width * 0.1,
//                       width: mq.width * 0.1,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       child: Image.asset(
//                         setImage(text: items?.model?.toLowerCase() ?? "").toString(),
//                         fit: BoxFit.contain,
//                       ),
//                     ),
//                     SizedBox(height: mq.height * 0.005),
//                     Text(
//                       items?.model ?? PDefaultValues.noName,
//                       style: context.theme.textTheme.bodyLarge?.copyWith(fontSize: 10.sp),
//                     )
//                   ],
//                 ),
//               ).gapX,
//               Expanded(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Text(
//                       items?.firstPrompt ?? PDefaultValues.noName,
//                       style: context.theme.textTheme.bodyLarge,
//                       overflow: TextOverflow.ellipsis,
//                       textAlign: TextAlign.center,
//                       maxLines: 2,
//                     ),
//                     const SizedBox(height: 4),
//                     Text(
//                       'Last Updated: ${isNull(items?.updatedAt) ? "N/A" : PDateUtil.getDate(PDateUtil.dayMonthYear, items!.updatedAt!).toString()}',
//                       textAlign: TextAlign.center,
//                       style: context.theme.textTheme.bodyLarge?.copyWith(fontSize: 10.sp),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   String setImage({required String text}) {
//     String? gettingText;
//     switch (text.toLowerCase()) {
//       case "echogpt":
//         gettingText = Assets.images.echogpt.path;
//         break;
//       case "gpt-4o-mini" || "gpt-4" || "gpt-4o":
//         gettingText = Assets.images.chatgpt.path;
//         break;
//       case "gemini":
//         gettingText = Assets.images.geminiT.path;
//         break;
//       default:
//         gettingText = Assets.images.echogpt.path;
//     }
//     return gettingText;
//   }
// }
