import 'package:flutter/material.dart';

class WhatsappUI extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return WhatsappUIState();
  }
}

class WhatsappUIState extends State<WhatsappUI> {
  List<Map<String, dynamic>> whatsappList = [
    {
      'img_whatsapp': 'assets/images/ic_man.png',
      'ur_name': 'Ram',
      'ur_msg': 'Hey There! Are you using whatsapp? ',
      'time': '08:58 am',
      'msg_no': '2'
    },
    {
      'img_whatsapp': 'assets/images/ic_man2.png',
      'ur_name': 'Jane',
      'ur_msg': 'Hey There!',
      'time': '10:40 am',
      'msg_no': '7'
    },
    {
      'img_whatsapp': 'assets/images/ic_woman.png',
      'ur_name': 'Ravina',
      'ur_msg': 'What are you doing tomorrow?',
      'time': '07:10 pm',
      'msg_no': '9'
    },
    {
      'img_whatsapp': 'assets/images/ic_man3.png',
      'ur_name': 'Kunal',
      'ur_msg': 'How is your scholarship going on?',
      'time': '06:50 am',
      'msg_no': '21'
    },
    {
      'img_whatsapp': 'assets/images/ic_woman2.png',
      'ur_name': 'Madhuri',
      'ur_msg': 'When are the elections?',
      'time': '07:00 pm',
      'msg_no': '76'
    },
    {
      'img_whatsapp': 'assets/images/ic_woman3.png',
      'ur_name': 'Nikita',
      'ur_msg': 'Yo wassup!',
      'time': 'YESTERDAY',
      'msg_no': '993'
    },
    {
      'img_whatsapp': 'assets/images/ic_man4.png',
      'ur_name': 'Mark',
      'ur_msg': 'Hello !!',
      'time': 'YESTERDAY',
      'msg_no': ''
    },
    {
      'img_whatsapp': 'assets/images/ic_man5.png',
      'ur_name': 'Ramesh',
      'ur_msg': 'Hello Sir',
      'time': '25/06/2023',
      'msg_no': ''
    },
    {
      'img_whatsapp': 'assets/images/ic_woman4.png',
      'ur_name': 'Kiran',
      'ur_msg': 'Hey There! Are you using whatsapp?',
      'time': '20/06/2023',
      'msg_no': ''
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.transparent,
        backgroundColor: const Color(0xff045E55),
        title: const Text(
          'Whatsapp UI',
          style: TextStyle(
            fontSize: 27,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            color: const Color(0xff045E55),
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  child: const Text(
                    'CHAT',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  child: const Text(
                    'CALLS',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  child: const Text(
                    'STATUS',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: whatsappList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      child:
                          Image.asset('${whatsappList[index]['img_whatsapp']}'),
                    ),
                    title: Text(
                      '${whatsappList[index]['ur_name']}',
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Container(
                      margin: const EdgeInsets.only(top: 5),
                      child: Text(
                        '${whatsappList[index]['ur_msg']}',
                        maxLines: 1,
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                    ),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '${whatsappList[index]['time']}',
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff1FC252),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 20),
                          child: whatsappList[index]['msg_no'] == ''
                              ? Container(
                                  child: const Text(''),
                                )
                              : CircleAvatar(
                                  radius:
                                      whatsappList[index]['msg_no'].length > 2
                                          ? 16
                                          : 13,
                                  backgroundColor: const Color(0xff1FC252),
                                  child: Text(
                                    '${whatsappList[index]['msg_no']}',
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                        )
                      ],
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
