import 'package:car2go/presentaion/resources/assets_manager.dart';
import 'package:car2go/presentaion/resources/color_manager.dart';
import 'package:car2go/presentaion/resources/font_manager.dart';
import 'package:car2go/presentaion/resources/style_manager.dart';
import 'package:car2go/presentaion/resources/values_manager.dart';
import 'package:car2go/presentaion/widgets/components.dart';
import 'package:car2go/presentaion/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_form.dart';
import 'package:flutter_credit_card/credit_card_model.dart';
import 'package:flutter_credit_card/credit_card_widget.dart';
import 'package:flutter_credit_card/custom_card_type_icon.dart';
import 'package:flutter_credit_card/glassmorphism_config.dart';

class PaymentScreen extends StatefulWidget {

  int cost;
  PaymentScreen({required this.cost, Key? key}) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  final formKey = GlobalKey<FormState>();

  String ccv = 'XXX',
      number = 'XXXX XXXX XXXX XXXX',
      name = "Card Holder Name",
      date = 'XX/XX';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Checkout')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CreditCardWidget(
              cardNumber: '$number',
              expiryDate: '$date',
              cardHolderName: '$name',
              cvvCode: '$ccv',
              showBackView: false,
              cardBgColor: ColorManager.primaryLight,
              obscureCardCvv: false,
              isHolderNameVisible: true,
              height: 180,
              cardType: CardType.mastercard,
              textStyle: getRegularStyle(),
              width: MediaQuery.of(context).size.width,
              isChipVisible: true,
              isSwipeGestureEnabled: true,
              animationDuration: const Duration(milliseconds: 600),
              customCardTypeIcons: <CustomCardTypeIcon>[
                CustomCardTypeIcon(
                  cardType: CardType.visa,
                  cardImage: Image.asset(
                    ImageAssets.visaLogo,
                    height: 48,
                    width: 48,
                  ),
                ),
                CustomCardTypeIcon(
                  cardType: CardType.mastercard,
                  cardImage: Image.asset(
                    ImageAssets.masterCardLogo,
                    height: 48,
                    width: 48,
                  ),
                ),
              ],
              onCreditCardWidgetChange: (CreditCardBrand) {},
            ),
            CreditCardForm(
              formKey: formKey,
              onCreditCardModelChange: (CreditCardModel data) {
                setState(() {
                  name = data.cardHolderName;
                  ccv = data.cvvCode;
                  number = data.cardNumber;
                  date = data.expiryDate;
                });
              },
              obscureCvv: false,
              cursorColor: ColorManager.primary,
              obscureNumber: false,
              isHolderNameVisible: true,
              isCardNumberVisible: true,
              isExpiryDateVisible: true,
              cardNumberDecoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(AppSize.borderRadius),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                      color: ColorManager.primary, width: AppSize.borderWidth),
                  borderRadius: BorderRadius.all(
                    Radius.circular(AppSize.borderRadius),
                  ),
                ),
                floatingLabelStyle:
                    getRegularStyle(color: ColorManager.primary),
                labelText: 'Number',
                hintText: 'XXXX XXXX XXXX XXXX',
              ),
              expiryDateDecoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(AppSize.borderRadius),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                      color: ColorManager.primary, width: AppSize.borderWidth),
                  borderRadius: BorderRadius.all(
                    Radius.circular(AppSize.borderRadius),
                  ),
                ),
                floatingLabelStyle:
                    getRegularStyle(color: ColorManager.primary),
                labelText: 'Expired Date',
                hintText: 'XX/XX',
              ),
              cvvCodeDecoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(AppSize.borderRadius),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                      color: ColorManager.primary, width: AppSize.borderWidth),
                  borderRadius: BorderRadius.all(
                    Radius.circular(AppSize.borderRadius),
                  ),
                ),
                floatingLabelStyle:
                    getRegularStyle(color: ColorManager.primary),
                labelText: 'CVV',
                hintText: 'XXX',
              ),
              cardHolderDecoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(AppSize.borderRadius),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                      color: ColorManager.primary, width: AppSize.borderWidth),
                  borderRadius: BorderRadius.all(
                    Radius.circular(AppSize.borderRadius),
                  ),
                ),
                floatingLabelStyle:
                    getRegularStyle(color: ColorManager.primary),
                labelText: 'Name on card',
              ),
              cardNumber: number,
              expiryDate: date,
              cardHolderName: name,
              cvvCode: ccv,
              themeColor: Colors.red,
            ),
            Space(),
            const Divider(
              color: ColorManager.primary,
              thickness: 0.5,
            ),
            Space(),
            RowWith2Texts(title: '     TOTAL', value: "${widget.cost} EGP     ", fontSize: FontSize.f20),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(AppPadding.cardPadding),
        child: CustomButton(
          text: 'PAY NOW',
          function: (){},

        ),
      ),
    );
  }
}
