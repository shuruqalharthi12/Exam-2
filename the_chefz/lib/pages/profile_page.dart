import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('حسابي'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.settings,
              color: Colors.orange.shade800,
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'اهلا بك',
              style: TextStyle(fontSize: 12, color: Colors.orange),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text('شروق الحارثي'),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.edit_note,
                    color: Colors.orange,
                  ),
                ),
              ],
            ),
          ),
          // two card in row for wallet and pointgs, the icons on left and wallet ba,ance as column
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.account_balance_wallet_outlined,
                            color: Colors.orange,
                          ),
                          // space
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              Text('المحفظة'),
                              Text('0.00 ريال'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.star_border_outlined,
                            color: Colors.orange,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              Text('نقاطك'),
                              Text('152 نقطة'),
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
          SizedBox(
            height: 20,
          ),
          ListTile(
            leading: Icon(
              Icons.credit_card_outlined,
              color: Colors.grey,
            ),
            title: Text('بطاقات الدفع'),
            trailing: Icon(
              Icons.arrow_forward_ios_outlined,
              color: Colors.grey,
            ),
          ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.favorite_border_outlined,
              color: Colors.grey,
            ),
            title: Text('مفضلتي'),
            trailing: Icon(
              Icons.arrow_forward_ios_outlined,
              color: Colors.grey,
            ),
          ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.contact_support_outlined,
              color: Colors.grey,
            ),
            title: Text('تواصل معنا'),
            trailing: Icon(
              Icons.arrow_forward_ios_outlined,
              color: Colors.grey,
            ),
          ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.share_outlined,
              color: Colors.grey,
            ),
            title: Text('شارك التطبيق'),
            trailing: Icon(
              Icons.arrow_forward_ios_outlined,
              color: Colors.grey,
            ),
          ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.question_answer_outlined,
              color: Colors.grey,
            ),
            title: Text('الاسئلة الآكثر شيوعا'),
            trailing: Icon(
              Icons.arrow_forward_ios_outlined,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
