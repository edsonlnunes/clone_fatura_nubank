import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clone Nubank',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const TitleAppBar(),
      ),
      backgroundColor: const Color(0xFFefefef),
      body: Column(
        children: [
          Container(
            height: 150,
            width: double.infinity,
            color: const Color(0XFF00bcca),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "R\$ 1.234,75",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Vencimento 07 MAR.",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Fechamento em 28 FEV.",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 40,
              itemBuilder: (ctx, index) {
                return const OptionPayment();
              },
            ),
          ),
        ],
      ),
    );
  }
}

class OptionPayment extends StatelessWidget {
  const OptionPayment({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Row(
          children: const [
            Text("30 JAN."),
            SizedBox(
              width: 10,
            ),
            Expanded(child: Text("Supermercado do Bob Esponja")),
            Text("R\$ 45,00"),
          ],
        ),
      ),
    );
  }
}

class TitleAppBar extends StatelessWidget {
  const TitleAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          splashRadius: 15,
          onPressed: () {},
          icon: const Icon(
            Icons.close,
            color: Colors.grey,
            size: 30,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: const [
                MonthOption(month: "JAN"),
                MonthOption(month: "FEV"),
                MonthOption(
                  month: "MAR",
                  selected: true,
                ),
                MonthOption(month: "ABR"),
                MonthOption(month: "MAI"),
                MonthOption(month: "JUN"),
                MonthOption(month: "JUL"),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class MonthOption extends StatelessWidget {
  final bool selected;
  final String month;

  const MonthOption({
    super.key,
    this.selected = false,
    required this.month,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 5,
      ),
      decoration: selected
          ? BoxDecoration(
              color: const Color(0xFF96cf04),
              borderRadius: BorderRadius.circular(20),
            )
          : null,
      child: Text(
        month,
        style: TextStyle(
          color: selected ? Colors.black87 : const Color(0xFF96cf04),
        ),
      ),
    );
  }
}
