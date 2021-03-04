import 'package:coding_test/ui/styles/textstyles.dart';
import 'package:coding_test/ui/widgets/button/primary_button.dart';
import 'package:coding_test/ui/widgets/utils/space.dart';
import 'package:flutter/material.dart';

class ProductsListItem extends StatelessWidget {
  final String img;
  final String title;
  final String strikeThroughPrice;
  final String actualPrice;

  const ProductsListItem(
      {Key key,
      this.img,
      this.title,
      this.strikeThroughPrice,
      this.actualPrice})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10
      ),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Container(
          height: 220,
          width: 180,
          padding: EdgeInsets.symmetric(
            horizontal: 10,vertical: 10
          ),
          child: Column(
            children: [
              Container(
                  height: 170,
                  width: 70,
                  child: Image.network(
                    img,
                    fit: BoxFit.cover,
                  )),
              verticalSpace(5),
              Text(title,textAlign: TextAlign.center,style: bold.size16,),
              verticalSpace(5),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text(strikeThroughPrice,style: bold.size16.copyWith(
                  color: Colors.black26,decoration: TextDecoration.lineThrough
                ),), horizontalSpace(10),Text(actualPrice,style: bold.size16.waterMelon,)],
              ),
              verticalSpace(5),
              PrimaryButton(
                btnText: 'Buy Now',
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
