import 'package:flutter/material.dart';
import 'package:project_kuliah/widget/menu.dart';

class Utama extends StatelessWidget {
  const Utama({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 2, 14, 147),
        title: Center(
          child: const Text("Koperasi Undiksha"),
        ),
        actions: [
          Container(
            child: Icon(Icons.logout),
            padding: EdgeInsets.all(10),
          )
        ],
      ),
      body: Column(children: [
        Container(
          margin: EdgeInsets.fromLTRB(10, 20, 10, 10),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  offset: const Offset(
                    0.0,
                    0.0,
                  ),
                  blurRadius: 1.0,
                  spreadRadius: 1.0,
                ), //BoxShadow
                BoxShadow(
                  color: Colors.white,
                  offset: const Offset(0.0, 0.0),
                  blurRadius: 0.0,
                  spreadRadius: 0.0,
                )
              ]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Container(
                  height: 100,
                  width: 100,
                  child: Image.asset(
                    'asset/fotoku.png',
                    width: 100,
                    height: 100,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                  child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 200,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 194, 215, 233),
                      // border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Column(
                      children: [
                        Text(
                          'Nasabah',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text('Bambang Tabuthi')
                      ],
                    ),
                  ),
                  Container(
                    width: 200,
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 194, 215, 233),

                      // border: Border.all(color: Colors.black,),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Column(
                      children: [
                        Text(
                          'Saldo',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text('Rp.1.000.000,00')
                      ],
                    ),
                  )
                ],
              ))
            ],
          ),
        ),
        // Container(
        //   margin: EdgeInsets.all(10),
        //   padding: EdgeInsets.all(10),
        //   decoration: BoxDecoration(
        //       border: Border.all(color: Colors.black),
        //       borderRadius: BorderRadius.circular(10),
        //       boxShadow: [
        //         BoxShadow(
        //           color: Colors.black,
        //           offset: const Offset(
        //             0.0,
        //             0.0,
        //           ),
        //           blurRadius: 1.0,
        //           spreadRadius: 1.0,
        //         ), //BoxShadow
        //         BoxShadow(
        //           color: Colors.white,
        //           offset: const Offset(0.0, 0.0),
        //           blurRadius: 0.0,
        //           spreadRadius: 0.0,
        //         )
        //       ]),
        //   child: Wrap(
        //     spacing: 27.0,
        //     runSpacing: 10.0,
        //     children: [
        //       Menu(
        //         icon: Icons.wallet,
        //         text: "Saldo",
        //         onTap: () {},
        //       ),
        //       Menu(
        //         icon: Icons.money,
        //         text: "Transfer",
        //         onTap: () {
        //           Navigator.push(context,
        //               MaterialPageRoute(builder: (context) => Transfer()));
        //         },
        //       ),
        //       Menu(
        //         icon: Icons.savings,
        //         text: "Deposito",
        //         onTap: () {},
        //       ),
        //       Menu(
        //         icon: Icons.credit_card_outlined,
        //         text: "Payment",
        //         onTap: () {},
        //       ),
        //       Menu(
        //         icon: Icons.monetization_on_outlined,
        //         text: "Pinjaman",
        //         onTap: () {},
        //       ),
        //       Menu(
        //         icon: Icons.add_chart,
        //         text: "Mutasi",
        //         onTap: () {},
        //       ),
        //     ],
        //   ),
        // ),
        Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 209, 212, 215),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                alignment: Alignment.topLeft,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Butuh Bantuan?',
                      style: TextStyle(fontWeight: FontWeight.normal),
                    ),
                    Text(
                      '087102983710',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    )
                  ],
                ),
              ),
              Container(
                child: Icon(
                  Icons.phone,
                  size: 50,
                  color: Colors.green,
                ),
              )
            ],
          ),
        ),
      ]),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            label: 'setting',
            icon: Expanded(
                flex: 1,
                child: Icon(
                  Icons.settings,
                  size: 60,
                  color: Colors.blueAccent,
                )),
          ),
          BottomNavigationBarItem(
            label: 'profil',
            icon: Expanded(
                flex: 1,
                child: Icon(
                  Icons.person,
                  size: 60,
                  color: Colors.blueAccent,
                )),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.large(
        onPressed: () {
          // Add your onPressed code here!
        },
        backgroundColor: Color.fromARGB(255, 22, 6, 88),
        child: const Icon(
          Icons.qr_code_scanner_outlined,
          size: 60,
        ),
      ),
    );
  }
}
