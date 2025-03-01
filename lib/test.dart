// SizedBox(
//   height: MediaQuery.sizeOf(context).height * 0.6, // Constrain Stack size
//   width: MediaQuery.sizeOf(context).width, // Prevent overflow
//   child: Stack(
//     clipBehavior: Clip.hardEdge, // Ensures clipping within the Stack
//     children: [
//       Positioned(
//         left: -MediaQuery.sizeOf(context).width * 0.25,
//         right: -MediaQuery.sizeOf(context).width * 0.25,
//         top: -MediaQuery.sizeOf(context).height * 0.2,
//         child: Container(
//           height: MediaQuery.sizeOf(context).height * 0.6,
//           width: MediaQuery.sizeOf(context).width * 1.2,
//           decoration: const BoxDecoration(
//             color: Color(0xFFF2B049),
//             shape: BoxShape.circle,
//           ),
//         ),
//       ),
//       Positioned(
//         left: -130,
//         top: MediaQuery.sizeOf(context).height * 0.08,
//         child: Container(
//           width: 400,
//           height: MediaQuery.sizeOf(context).height * 0.2,
//           decoration: const BoxDecoration(
//             color: Color(0xFFF5BA4A),
//             shape: BoxShape.circle,
//           ),
//         ),
//       ),
//       Positioned(
//         right: -130,
//         top: MediaQuery.sizeOf(context).height * 0.1,
//         child: Container(
//           width: 300,
//           height: MediaQuery.sizeOf(context).height * 0.2,
//           decoration: const BoxDecoration(
//             color: Color(0xFFF5BA4A),
//             shape: BoxShape.circle,
//           ),
//         ),
//       ),
//     ],
//   ),
// );
