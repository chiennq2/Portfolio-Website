import 'package:Nakul_Dev/Data/education.dart';
import 'package:Nakul_Dev/Data/exp.dart';
import 'package:Nakul_Dev/Data/profilePic_book.dart';
import 'package:Nakul_Dev/Data/projects.dart';
import 'package:Nakul_Dev/Data/skill.dart';
import 'package:Nakul_Dev/functions/Custom_backdrop_filter.dart';
import 'package:Nakul_Dev/functions/downloadResume.dart';
import 'package:Nakul_Dev/functions/navigate.dart';
import 'package:Nakul_Dev/functions/notifySnackBar.dart';
import 'package:Nakul_Dev/nakuldev_portfolio/ToResponsivePage/toResponsive_Projects.dart';
import 'package:Nakul_Dev/nakuldev_portfolio/ToResponsivePage/toResponsive_contactMe.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:timeline_tile/timeline_tile.dart';
import '../styles/styles.dart';

class mobile extends StatefulWidget {
  const mobile({super.key});

  @override
  State<mobile> createState() => _mobileState();
}

class _mobileState extends State<mobile> {
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    String rurl = 'https://xn--chinnq-yi8b.vn/';

    return ScrollConfiguration(
      behavior: const ScrollBehavior().copyWith(scrollbars: false),
      child: SingleChildScrollView(
        child: Column(
          //main column
          children: [
            //profile
            CustomBox(
              borderRadius: mobile_containerStyle.borderRadius,
              margin: mobile_containerStyle.margin,
              child: Container(
                decoration: BoxDecoration(
                  color: mobile_containerStyle.color,
                  borderRadius: mobile_containerStyle.borderRadius,
                ),
                padding: const EdgeInsets.only(
                  left: 16,
                  right: 16,
                  top: 16,
                ),
                // margin: mobile_containerStyle.margin,
                width: deviceWidth * mobile_containerStyle.width,
                height: 215,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Image.asset(
                        profilepic,
                        fit: BoxFit.fitHeight,
                        alignment: Alignment.bottomCenter,
                        // scale: 3.0, // scale the image by a factor of 2
                      ),
                    ),
                    SizedBox(
                      width: deviceWidth * 0.02,
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //name
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  FittedBox(
                                    fit: BoxFit.scaleDown,
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(text: "ChienNQ", style: GoogleFonts.chakraPetch(textStyle: textStyles.Name1, fontSize: 20)),
                                          TextSpan(text: "</Dev>", style: GoogleFonts.chakraPetch(textStyle: textStyles.Name2, fontSize: 20)),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Icon(
                                    color: textStyles.B.color,
                                    Icons.verified_rounded,
                                    size: deviceWidth * mobile_containerStyle.iconSize,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: deviceHeight * 0.02,
                              ),
                              //heading
                              FittedBox(
                                fit: BoxFit.contain,
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "Building the ",
                                        style: GoogleFonts.chakraPetch(textStyle: textStyles.B),
                                      ),
                                      TextSpan(
                                        text: "Future",
                                        style: GoogleFonts.chakraPetch(textStyle: textStyles.I),
                                      ),
                                      TextSpan(
                                        text: ",\nOne Line of ",
                                        style: GoogleFonts.chakraPetch(textStyle: textStyles.B),
                                      ),
                                      TextSpan(
                                        text: "Code",
                                        style: GoogleFonts.chakraPetch(textStyle: textStyles.I),
                                      ),
                                      TextSpan(
                                        text: "\nat a Time",
                                        style: GoogleFonts.chakraPetch(textStyle: textStyles.B),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),

                          GestureDetector(
                            onTap: () {
                              downloadResume(rurl);
                              notifySnackBar(context, "Preparing my resume... it will download shortly.");
                            },
                            child: Container(
                              decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 99, 99, 99),
                                borderRadius: BorderRadius.all(Radius.circular(5)),
                              ),
                              padding: const EdgeInsets.all(5),
                              margin: const EdgeInsets.only(bottom: 16),
                              width: deviceWidth * 0.25,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: FittedBox(
                                      fit: BoxFit.scaleDown,
                                      child: Icon(
                                        color: textStyles.B.color,
                                        Icons.description,
                                        size: deviceWidth * mobile_containerStyle.iconSize,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: FittedBox(
                                      fit: BoxFit.scaleDown,
                                      child: Text(
                                        "Resume",
                                        style: GoogleFonts.chakraPetch(textStyle: textStyles.B, fontSize: kDefaultFontSize),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          // //about
                          // AutoSizeText(
                          //   minFontSize: 5,
                          //   maxFontSize: 12,
                          //   maxLines: 10,
                          //   style: GoogleFonts.chakraPetch(textStyle: textStyles.P1_mobile),
                          //   "Solving complex problems as an engineering student with a love for tech and learning.",
                          // ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            //skilled in
            CustomBox(
              borderRadius: mobile_containerStyle.borderRadius,
              margin: mobile_containerStyle.margin,
              child: Container(
                decoration: BoxDecoration(
                  color: mobile_containerStyle.color,
                  borderRadius: mobile_containerStyle.borderRadius,
                ),
                padding: const EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 16),
                // margin: mobile_containerStyle.margin,
                width: deviceWidth * mobile_containerStyle.width,
                // height: deviceHeight * (mobile_containerStyle.height * .9),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: AutoSizeText.rich(
                            maxFontSize: 23,
                            minFontSize: 5,
                            maxLines: 1,
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Tech I',
                                  style: GoogleFonts.chakraPetch(textStyle: textStyles.HeadingI),
                                ),
                                TextSpan(
                                  text: ' Love',
                                  style: GoogleFonts.chakraPetch(textStyle: textStyles.HeadingB),
                                )
                              ],
                            ),
                          ),
                        ),
                        Icon(
                          color: textStyles.B.color,
                          Icons.lens_blur_rounded,
                          size: deviceWidth * mobile_containerStyle.iconSize,
                        )
                      ],
                    ),
                    SizedBox(
                      height: deviceHeight * 0.015,
                    ),
                    SizedBox(
                      height: 120,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: deviceWidth * mobile_SVGContainer.width,
                                //height: deviceWidth * mobile_SVGContainer.height,
                                child: Center(
                                  child: SvgPicture.asset(
                                    skills[0],
                                    // color: textStyles.B.color,
                                    width: deviceWidth * mobile_SVGContainer.width,
                                    //height: deviceWidth * mobile_SVGContainer.height,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: deviceWidth * mobile_SVGContainer.width,
                                //height: deviceWidth * mobile_SVGContainer.height,
                                child: Center(
                                  child: SvgPicture.asset(
                                    skills[1],

                                    // color: textStyles.B.color,
                                    width: deviceWidth * mobile_SVGContainer.width,
                                    //height: deviceWidth * mobile_SVGContainer.height,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: deviceWidth * mobile_SVGContainer.width,
                                //height: deviceWidth * mobile_SVGContainer.height,
                                child: Center(
                                  child: SvgPicture.asset(
                                    skills[2],

                                    // color: textStyles.B.color,
                                    width: deviceWidth * mobile_SVGContainer.width,
                                    //height: deviceWidth * mobile_SVGContainer.height,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: deviceWidth * mobile_SVGContainer.width,
                                //height: deviceWidth * mobile_SVGContainer.height,
                                child: Center(
                                  child: SvgPicture.asset(
                                    skills[3],

                                    // color: textStyles.B.color,
                                    width: deviceWidth * mobile_SVGContainer.width,
                                    //height: deviceWidth * mobile_SVGContainer.height,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: deviceWidth * mobile_SVGContainer.width,
                                //height: deviceWidth * mobile_SVGContainer.height,
                                child: Center(
                                  child: SvgPicture.asset(
                                    skills[4],

                                    // color: textStyles.B.color,
                                    width: deviceWidth * mobile_SVGContainer.width,
                                    //height: deviceWidth * mobile_SVGContainer.height,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: deviceWidth * mobile_SVGContainer.width,
                                //height: deviceWidth * mobile_SVGContainer.height,
                                child: Center(
                                  child: SvgPicture.asset(
                                    skills[5],

                                    // color: textStyles.B.color,
                                    width: deviceWidth * mobile_SVGContainer.width,
                                    //height: deviceWidth * mobile_SVGContainer.height,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: deviceWidth * mobile_SVGContainer.width,
                                //height: deviceWidth * mobile_SVGContainer.height,
                                child: Center(
                                  child: SvgPicture.asset(
                                    skills[6],

                                    // color: textStyles.B.color,
                                    width: deviceWidth * mobile_SVGContainer.width,
                                    //height: deviceWidth * mobile_SVGContainer.height,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: deviceWidth * mobile_SVGContainer.width,
                                //height: deviceWidth * mobile_SVGContainer.height,
                                child: Center(
                                  child: SvgPicture.asset(
                                    skills[7],

                                    // color: textStyles.B.color,
                                    width: deviceWidth * mobile_SVGContainer.width,
                                    //height: deviceWidth * mobile_SVGContainer.height,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: deviceWidth * mobile_SVGContainer.width,
                                //height: deviceWidth * mobile_SVGContainer.height,
                                child: Center(
                                  child: SvgPicture.asset(
                                    skills[8],

                                    // color: textStyles.B.color,
                                    width: deviceWidth * mobile_SVGContainer.width,
                                    //height: deviceWidth * mobile_SVGContainer.height,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: deviceWidth * mobile_SVGContainer.width,
                                //height: deviceWidth * mobile_SVGContainer.height,
                                child: Center(
                                  child: SvgPicture.asset(
                                    skills[9],

                                    // color: textStyles.B.color,
                                    width: deviceWidth * mobile_SVGContainer.width,
                                    //height: deviceWidth * mobile_SVGContainer.height,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: deviceWidth * mobile_SVGContainer.width,
                                //height: deviceWidth * mobile_SVGContainer.height,
                                child: Center(
                                  child: SvgPicture.asset(
                                    skills[10],

                                    // color: textStyles.B.color,
                                    width: deviceWidth * mobile_SVGContainer.width,
                                    //height: deviceWidth * mobile_SVGContainer.height,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: deviceWidth * mobile_SVGContainer.width,
                                //height: deviceWidth * mobile_SVGContainer.height,
                                child: Center(
                                  child: SvgPicture.asset(
                                    skills[11],

                                    // color: textStyles.B.color,
                                    width: deviceWidth * mobile_SVGContainer.width,
                                    // height: devi * mobile_SVGContainer.height,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //my projects
            CustomBox(
              borderRadius: mobile_containerStyle.borderRadius,
              margin: mobile_containerStyle.margin,
              child: Container(
                decoration: BoxDecoration(
                  color: mobile_containerStyle.color,
                  borderRadius: mobile_containerStyle.borderRadius,
                ),
                padding: const EdgeInsets.only(top: 16),
                // margin: mobile_containerStyle.margin,
                height: 255 + 4.5,
                width: deviceWidth * mobile_containerStyle.width,
                // height: deviceHeight * (mobile_containerStyle.height * 1.2),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        navigateTo(
                            context,
                            const toResponsiveLayout_project(
                              initialIndex: 0,
                            ));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16, right: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: AutoSizeText.rich(
                                maxFontSize: 23,
                                minFontSize: 5,
                                maxLines: 1,
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'My ',
                                      style: GoogleFonts.chakraPetch(textStyle: textStyles.HeadingB),
                                    ),
                                    TextSpan(
                                      text: 'Projects',
                                      style: GoogleFonts.chakraPetch(textStyle: textStyles.HeadingI),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Icon(
                              color: IconHClr,
                              Icons.arrow_outward_rounded,
                              size: deviceWidth * mobile_containerStyle.iconSize,
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 170,
                      child: ListView.builder(
                        // controller: pgController,
                        scrollDirection: Axis.horizontal,
                        itemCount: projects.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              navigateTo(context, toResponsiveLayout_project(initialIndex: index));
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: EducationcontainerStyle.color,
                                    borderRadius: EducationcontainerStyle.borderRadius,
                                  ),
                                  height: mobile_ProjectContainer.height,
                                  width: mobile_ProjectContainer.width,
                                  padding: mobile_ProjectContainer.padding,
                                  margin: mobile_ProjectContainer.margin,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(color: textStyles.B.color, Icons.arrow_right_rounded, size: 33),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(bottom: 35),
                                            child: Icon(
                                              color: textStyles.B.color,
                                              projects[index].icon,
                                              size: 42,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: deviceHeight * 0.01,
                                ),
                                Container(
                                  // decoration:  BoxDecoration(
                                  //   color: EducationcontainerStyle.color,
                                  //   borderRadius: mobile_ProjectContainer.borderRadius,
                                  // ),
                                  height: 30,
                                  width: mobile_ProjectContainer.width,
                                  padding: const EdgeInsets.only(left: 5),
                                  margin: mobile_ProjectContainer.margin,
                                  child: Text(
                                    // minFontSize: 1,
                                    // maxFontSize: 15,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: GoogleFonts.chakraPetch(textStyle: textStyles.P2B, fontSize: 12),
                                    // overflow: TextOverflow.ellipsis,
                                    projects[index].title,
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(5),
                      margin: const EdgeInsets.all(0),
                      width: deviceWidth * mobile_containerStyle.widthButton,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                          color: Color.fromARGB(0, 26, 26, 26)),
                      // child: Row(
                      //   crossAxisAlignment: CrossAxisAlignment.center,
                      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //   children: [
                      //     GestureDetector(
                      //       onTap: () {
                      //         toPrevious(pgController);
                      //       },
                      //       child: Icon(color: textStyles.B.color,

                      //         Icons.arrow_back_ios_new_rounded,
                      //         size: deviceWidth < 900 ? tablet_containerStyle.iconSizeS : tablet_containerStyle.iconSizeL,
                      //       ),
                      //     ),
                      //     Icon(color: textStyles.B.color,

                      //       Icons.linear_scale_outlined,
                      //       size: deviceWidth < 900 ? tablet_containerStyle.iconSizeS : tablet_containerStyle.iconSizeL,
                      //     ),
                      //     GestureDetector(
                      //       onTap: () {
                      //         toNext(projects.length, pgController);
                      //       },
                      //       child: Icon(color: textStyles.B.color,

                      //         Icons.arrow_forward_ios_rounded,
                      //         size: deviceWidth < 900 ? tablet_containerStyle.iconSizeS : tablet_containerStyle.iconSizeL,
                      //       ),
                      //     ),
                      //   ],
                      // ),
                    )
                  ],
                ),
              ),
            ),
            //My Edu
            CustomBox(
              borderRadius: mobile_containerStyle.borderRadius,
              margin: mobile_containerStyle.margin,
              child: Container(
                decoration: BoxDecoration(
                  color: mobile_containerStyle.color,
                  borderRadius: mobile_containerStyle.borderRadius,
                ),
                padding: const EdgeInsets.only(top: 16),
                // margin: mobile_containerStyle.margin,
                width: deviceWidth * mobile_containerStyle.width,
                height: 260,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16, right: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: AutoSizeText.rich(
                              maxFontSize: 23,
                              minFontSize: 5,
                              maxLines: 1,
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'My ',
                                    style: GoogleFonts.chakraPetch(textStyle: textStyles.HeadingB),
                                  ),
                                  TextSpan(
                                    text: 'Education',
                                    style: GoogleFonts.chakraPetch(textStyle: textStyles.HeadingI),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Icon(
                            color: textStyles.B.color,
                            Icons.school_rounded,
                            size: deviceWidth * mobile_containerStyle.iconSize,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 220,
                      child: ListView.builder(
                        // controller: pgController2,
                        scrollDirection: Axis.horizontal,
                        itemCount: educations.length,
                        itemBuilder: (context, index) {
                          return TimelineTile(
                            axis: TimelineAxis.horizontal,
                            isFirst: educations[index].start,
                            isLast: educations[index].end,
                            afterLineStyle: LineStyle(
                              thickness: 2,
                              color: EducationcontainerStyle.color,
                            ),
                            beforeLineStyle: LineStyle(
                              thickness: 2,
                              color: EducationcontainerStyle.color,
                            ),
                            indicatorStyle: IndicatorStyle(
                              color: EducationcontainerStyle.color,
                              iconStyle: IconStyle(color: Colors.white, fontSize: 25, iconData: Icons.arrow_drop_down_rounded),
                            ),
                            alignment: TimelineAlign.start,
                            endChild: Expanded(
                              flex: 5,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Container(
                                  padding: EducationcontainerStyle.padding,
                                  margin: EducationcontainerStyle.margin,
                                  decoration: BoxDecoration(
                                    color: EducationcontainerStyle.color,
                                    borderRadius: EducationcontainerStyle.borderRadius,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      FittedBox(
                                        fit: BoxFit.scaleDown,
                                        child: Text(
                                          educations[index].institutionName,
                                          style: GoogleFonts.chakraPetch(textStyle: textStyles.edu_H_B),
                                        ),
                                      ),
                                      FittedBox(
                                        fit: BoxFit.scaleDown,
                                        child: Row(
                                          children: [
                                            Text(
                                              educations[index].startTime,
                                              style: GoogleFonts.chakraPetch(textStyle: textStyles.edu_P_L),
                                            ),
                                            const Text(" - "),
                                            Text(
                                              educations[index].endTime,
                                              style: GoogleFonts.chakraPetch(textStyle: textStyles.edu_P_L),
                                            ),
                                          ],
                                        ),
                                      ),
                                      educations[index].department != ''
                                          ? FittedBox(
                                              fit: BoxFit.scaleDown,
                                              child: Text(
                                                educations[index].department,
                                                style: GoogleFonts.chakraPetch(textStyle: textStyles.edu_P_N),
                                              ),
                                            )
                                          : const Offstage(),
                                      educations[index].grade != ''
                                          ? FittedBox(
                                              fit: BoxFit.scaleDown,
                                              child: Text(
                                                educations[index].grade,
                                                style: GoogleFonts.chakraPetch(textStyle: textStyles.edu_P_N),
                                              ),
                                            )
                                          : const Offstage(),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),

                    // Container(
                    //   padding:  EdgeInsets.all(5),
                    //   margin:  EdgeInsets.all(0),
                    //   width: deviceWidth * mobile_containerStyle.widthButton,
                    //   decoration:  BoxDecoration(
                    //       borderRadius: BorderRadius.only(
                    //         topLeft: Radius.circular(10),
                    //         bottomRight: Radius.circular(10),
                    //       ),
                    //       color: EducationcontainerStyle.color),
                    //   child: Row(
                    //     crossAxisAlignment: CrossAxisAlignment.center,
                    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //     children: [
                    //       GestureDetector(
                    //         onTap: () {
                    //           toPrevious(pgController2);
                    //         },
                    //         child: Icon(color: textStyles.B.color,

                    //           Icons.arrow_back_ios_new_rounded,
                    //           size: deviceWidth < 900 ? tablet_containerStyle.iconSizeS : tablet_containerStyle.iconSizeL,
                    //         ),
                    //       ),
                    //       Icon(color: textStyles.B.color,

                    //         Icons.linear_scale_outlined,
                    //         size: deviceWidth < 900 ? tablet_containerStyle.iconSizeS : tablet_containerStyle.iconSizeL,
                    //       ),
                    //       GestureDetector(
                    //         onTap: () {
                    //           toNext(educations.length, pgController2);
                    //         },
                    //         child: Icon(color: textStyles.B.color,

                    //           Icons.arrow_forward_ios_rounded,
                    //           size: deviceWidth < 900 ? tablet_containerStyle.iconSizeS : tablet_containerStyle.iconSizeL,
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // )
                  ],
                ),
              ),
            ),
            //my exp
            CustomBox(
              borderRadius: mobile_containerStyle.borderRadius,
              margin: mobile_containerStyle.margin,
              child: Container(
                decoration: BoxDecoration(
                  color: mobile_containerStyle.color,
                  borderRadius: mobile_containerStyle.borderRadius,
                ),
                padding: const EdgeInsets.only(top: 16, bottom: 16),
                // margin: mobile_containerStyle.margin,
                width: deviceWidth * mobile_containerStyle.width,
                height: 171,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16, right: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: AutoSizeText.rich(
                              maxFontSize: 23,
                              minFontSize: 5,
                              maxLines: 1,
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'My ',
                                    style: GoogleFonts.chakraPetch(textStyle: textStyles.HeadingB),
                                  ),
                                  TextSpan(
                                    text: 'Experience',
                                    style: GoogleFonts.chakraPetch(textStyle: textStyles.HeadingI),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Icon(
                            color: textStyles.B.color,
                            Icons.work_history_rounded,
                            size: deviceWidth * mobile_containerStyle.iconSize,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: deviceHeight * 0.015,
                    ),
                    SizedBox(
                      height: 141,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: Experiences.length,
                        itemBuilder: (context, index) {
                          return TimelineTile(
                            axis: TimelineAxis.horizontal,
                            isFirst: Experiences[index].start,
                            // isFirst: true,
                            isLast: Experiences[index].end,
                            // isLast: false,
                            afterLineStyle: LineStyle(
                              thickness: 2,
                              color: EducationcontainerStyle.color,
                            ),
                            beforeLineStyle: LineStyle(
                              thickness: 2,
                              color: EducationcontainerStyle.color,
                            ),
                            indicatorStyle: IndicatorStyle(
                              color: EducationcontainerStyle.color,
                              iconStyle: IconStyle(color: Colors.white, fontSize: 25, iconData: Icons.arrow_drop_down_rounded),
                            ),
                            alignment: TimelineAlign.start,
                            endChild: Expanded(
                              // flex: 5,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Container(
                                  padding: EducationcontainerStyle.padding,
                                  margin: EducationcontainerStyle.margin,
                                  decoration: BoxDecoration(
                                    color: EducationcontainerStyle.color,
                                    borderRadius: EducationcontainerStyle.borderRadius,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      FittedBox(
                                        fit: BoxFit.scaleDown,
                                        child: Text(
                                          Experiences[index].role,
                                          style: GoogleFonts.chakraPetch(textStyle: textStyles.edu_H_B),
                                        ),
                                      ),
                                      FittedBox(
                                        fit: BoxFit.scaleDown,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              Experiences[index].startTime,
                                              style: GoogleFonts.chakraPetch(textStyle: textStyles.edu_P_L),
                                            ),
                                            Text(
                                              ' - ',
                                              style: GoogleFonts.chakraPetch(textStyle: textStyles.edu_P_L),
                                            ),
                                            Text(
                                              Experiences[index].endTime,
                                              style: GoogleFonts.chakraPetch(textStyle: textStyles.edu_P_L),
                                            ),
                                            Text(
                                              ' • ',
                                              style: GoogleFonts.chakraPetch(textStyle: textStyles.edu_P_L),
                                            ),
                                            Text(
                                              Experiences[index].duration,
                                              style: GoogleFonts.chakraPetch(textStyle: textStyles.edu_P_L),
                                            ),
                                          ],
                                        ),
                                      ),
                                      FittedBox(
                                        fit: BoxFit.scaleDown,
                                        child: Text(
                                          Experiences[index].companyName,
                                          style: GoogleFonts.chakraPetch(textStyle: textStyles.edu_P_N),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //contact me
            GestureDetector(
              onTap: () {
                navigateTo(context, const toResponsiveLayout_contactMe());
              },
              child: Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: CustomBox(
                  borderRadius: mobile_containerStyle.borderRadius,
                  margin: mobile_containerStyle.margin,
                  child: Container(
                    decoration: BoxDecoration(
                      color: containerStyle.color,
                      borderRadius: mobile_containerStyle.borderRadius,
                    ),
                    padding: mobile_containerStyle.padding,
                    // margin: mobile_containerStyle.margin,
                    width: deviceWidth * mobile_containerStyle.width,
                    height: 103,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: AutoSizeText(
                                "Have some Questions?",
                                maxLines: 3,
                                maxFontSize: 15,
                                minFontSize: 10,
                                style: GoogleFonts.chakraPetch(textStyle: textStyles.P1),
                              ),
                            ),
                            Icon(
                              color: IconHClr,
                              Icons.arrow_outward_rounded,
                              size: deviceWidth * mobile_containerStyle.iconSize,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: deviceHeight * 0.015,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: AutoSizeText.rich(
                                maxFontSize: 23,
                                minFontSize: 5,
                                maxLines: 1,
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Contact ',
                                      style: GoogleFonts.chakraPetch(textStyle: textStyles.HeadingB),
                                    ),
                                    TextSpan(
                                      text: 'Me',
                                      style: GoogleFonts.chakraPetch(textStyle: textStyles.HeadingI),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
