import 'package:coding_test/ui/styles/colors.dart';
import 'package:coding_test/ui/styles/textstyles.dart';
import 'package:coding_test/ui/widgets/banners/card_banner.dart';
import 'package:coding_test/ui/widgets/banners/title_banner.dart';
import 'package:coding_test/ui/widgets/button/primary_button.dart';
import 'package:coding_test/ui/widgets/list_item/classes_list_item.dart';
import 'package:coding_test/ui/widgets/list_item/expandable_list_item.dart';
import 'package:coding_test/ui/widgets/list_item/products_listitem.dart';
import 'package:coding_test/ui/widgets/sliders/day_slider.dart';
import 'package:coding_test/ui/widgets/utils/space.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: FlatButton(
          minWidth: 30,
          onPressed: () {},
          child: Icon(
            Icons.chevron_left_outlined,
            color: ColorsList.cerise,
            size: 35,
          ),
        ),
        backgroundColor: Colors.white,
        title: Text(
          'How to learn the art of Mehandi with a few easy tricks',
          style: TextStyle(color: ColorsList.cerise),
        ),
        actions: [
          FlatButton(
            minWidth: 30,
            onPressed: () {},
            child: Icon(
              Icons.chat_bubble_outline,
              color: ColorsList.cerise,
              size: 25,
            ),
          ),
          FlatButton(
            minWidth: 30,
            onPressed: () {},
            child: Icon(
              Icons.share_outlined,
              color: ColorsList.cerise,
              size: 25,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: TitleBanner(),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: DaySlider(),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  children: [
                    Expanded(
                        child: CardBanner(
                      gradientcolors: [Colors.blueAccent, Colors.lightBlue],
                      img:
                          'https://www.iconsdb.com/icons/preview/red/video-play-xxl.png',
                      title: 'Enter Class Room',
                      description:
                          'Join Course in 74:23:30 Password: A4sDrajHds',
                    )),
                    horizontalSpace(10),
                    Expanded(
                        child: CardBanner(
                      gradientcolors: [Colors.deepPurple, Colors.red],
                      img:
                          'https://img.icons8.com/color/452/add-user-group-woman-woman.png',
                      title: 'Join Course Group',
                      description:
                          'Have Questions about the course? get Immideate Answers ',
                    ))
                  ],
                ),
              ),
              // ExpandableListItem(
              //   syllabus: [
              //     'Get your Base Game Strong',
              //     'Understanding The skin Types',
              //     'Prep and Prime',
              //     'Ace your Base',
              //     'Skincare tips and hacks'
              //   ],
              //   imageUrl:
              //       'https://img.icons8.com/color/452/add-user-group-woman-woman.png',
              //   downloadstring: 'Download Recording',
              //   imageSize: Size(200, 100),
              // ),
              // ExpandableListItem(
              //   syllabus: [
              //     'Get your Base Game Strong',
              //     'Understanding The skin Types',
              //     'Prep and Prime',
              //     'Ace your Base',
              //     'Skincare tips and hacks'
              //   ],
              //   imageUrl:
              //       'https://img.icons8.com/color/452/add-user-group-woman-woman.png',
              //   downloadstring: 'Download Recording',
              //   imageSize: Size(200, 100),
              // ),
              // ExpandableListItem(
              //   syllabus: [
              //     'Get your Base Game Strong',
              //     'Understanding The skin Types',
              //     'Prep and Prime',
              //     'Ace your Base',
              //     'Skincare tips and hacks'
              //   ],
              //   imageUrl:
              //       'https://img.icons8.com/color/452/add-user-group-woman-woman.png',
              //   downloadstring: 'Download Recording',
              //   imageSize: Size(200, 100),
              // ),
              // ExpandableListItem(
              //   syllabus: [
              //     'Get your Base Game Strong',
              //     'Understanding The skin Types',
              //     'Prep and Prime',
              //     'Ace your Base',
              //     'Skincare tips and hacks'
              //   ],
              //   imageUrl:
              //       'https://img.icons8.com/color/452/add-user-group-woman-woman.png',
              //   downloadstring: 'Download Recording',
              //   imageSize: Size(200, 100),
              // ),

              ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: 6,
                itemBuilder: (context, index) {
                  return ExpandableListItem(
                    syllabus: [
                      'Get your Base Game Strong',
                      'Understanding The skin Types',
                      'Prep and Prime',
                      'Ace your Base',
                      'Skincare tips and hacks'
                    ],
                    imageUrl:
                        'https://img.icons8.com/color/452/add-user-group-woman-woman.png',
                    downloadstring: 'Download Recording',
                    imageSize: Size(200, 100),
                  );
                },
              ),

              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: PrimaryButton(
                  btnText: 'Add to Calender',
                  onPressed: () {},
                  color: Colors.deepPurple,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text('Products Used in this Course',
                        style: bold.size18.copyWith(color: Colors.black54)),
                  ),
                  Container(
                    height: 320,
                    child: ListView.builder(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 6,
                      itemBuilder: (context, index) {
                        return ProductsListItem(
                          img:
                              'https://www.garnier.in/-/media/project/loreal/brand-sites/garnier/apac/in/products/light-complete/light-complete-facewash/light-complete-facewash-50g/8901526204229_t1.jpg',
                          title: 'Ace of Face Foundation Stick',
                          strikeThroughPrice: 'Rs.650',
                          actualPrice: 'Rs.499/-',
                        );
                      },
                    ),
                  ),
                  verticalSpace(20),
                ],
              ),

              Container(
                color: Colors.black12.withOpacity(0.09),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text('Classes You may Like',
                          style: bold.size18.copyWith(color: Colors.black54)),
                    ),
                    Container(
                      height: 280,
                      child: ListView.builder(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 6,
                        itemBuilder: (context, index) {
                          return ClassesListItem(
                            img:
                                'https://cdn2.howtostartanllc.com/images/business-ideas/business-idea-images/makeup-artist-business.jpg',
                            title:
                                'Live Course - How to Learn the art of Mehndi with a Makeup',
                            date: '27th - 30th July',
                            time: '14.30 - 15.30',
                          );
                        },
                      ),
                    ),
                    verticalSpace(20)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
