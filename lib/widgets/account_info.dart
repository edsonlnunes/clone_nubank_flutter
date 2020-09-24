import 'package:flutter/material.dart';
import 'package:nubank_clone/themes/colors.dart';
import 'package:qr_flutter/qr_flutter.dart';

class AccountInfo extends StatelessWidget {
  final bool isExpanded;
  AccountInfo({this.isExpanded});
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: isExpanded ? MediaQuery.of(context).size.height * .4 : 0,
      width: double.maxFinite,
      duration: Duration(milliseconds: 400),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            infoAccount(),
            SizedBox(
              height: 30,
            ),
            option(Icons.help, 'Me ajuda'),
            option(Icons.person_outline, 'Perfil'),
            option(Icons.attach_money, 'Configurar conta'),
            option(Icons.credit_card, 'Configurar cartão'),
            option(Icons.store, 'Pedir conta PJ'),
            option(Icons.mobile_screen_share, 'Configurações do app'),
            Divider(
              color: Colors.white,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              child: OutlineButton(
                child: Text(
                  'SAIR DA CONTA',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                borderSide: BorderSide(
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget infoAccount() {
    return Container(
      child: Column(
        children: <Widget>[
          QrImage(
            data: "1234567890",
            version: QrVersions.auto,
            foregroundColor: kPrimaryColor,
            size: 100,
            backgroundColor: Colors.white,
          ),
          SizedBox(
            height: 10,
          ),
          Text.rich(
            TextSpan(
              text: 'Banco ',
              style: TextStyle(color: Colors.white),
              children: [
                TextSpan(
                  text: '260 - Nu Pagamentos S.A.',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text.rich(
            TextSpan(
              text: 'Agência ',
              style: TextStyle(color: Colors.white),
              children: [
                TextSpan(
                  text: '0001',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text.rich(
            TextSpan(
              text: 'Conta ',
              style: TextStyle(color: Colors.white),
              children: [
                TextSpan(
                  text: ' 0000000-0',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget option(IconData icon, String description) {
    return Column(
      children: <Widget>[
        Divider(
          color: Colors.white,
          height: 0,
        ),
        InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: <Widget>[
                Icon(
                  icon,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Text(
                    description,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Icon(
                  Icons.keyboard_arrow_right,
                  color: Colors.white,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
