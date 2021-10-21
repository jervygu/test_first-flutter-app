import 'package:flutter/material.dart';

class Wisdom extends StatefulWidget {
  const Wisdom({Key? key}) : super(key: key);

  @override
  _WisdomState createState() => _WisdomState();
}

class _WisdomState extends State<Wisdom> {
  int _index = 0;

  List quotes = [
    "The greatest glory in living lies not in never falling, but in rising every time we fall. -Nelson Mandela",
    "The way to get started is to quit talking and begin doing. -Walt Disney",
    "Your time is limited, so don't waste it living someone else's life. Don't be trapped by dogma – which is living with the results of other people's thinking. -Steve Jobs",
    "If life were predictable it would cease to be life, and be without flavor. -Eleanor Roosevelt",
    "If you look at what you have in life, you'll always have more. If you look at what you don't have in life, you'll never have enough. -Oprah Winfrey",
    "If you set your goals ridiculously high and it's a failure, you will fail above everyone else's success. -James Cameron",
    "Life is what happens when you're busy making other plans. -John Lennon",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Center(
                child: Container(
                    width: 350.0,
                    height: 200.0,
                    margin: EdgeInsets.all(30.0),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(14.5),
                    ),
                    child: Center(child: Text(quotes[_index % quotes.length],
                    style: TextStyle(
                      color: Colors.grey.shade700,
                      fontStyle: FontStyle.italic,
                      fontSize: 16.5,
                    ),
                    ))),
              ),
            ),
            const Divider(
              thickness: 5.3,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: FlatButton.icon(
                onPressed: _showQuote,
                color: Colors.greenAccent.shade700,
                icon: const Icon(Icons.wb_sunny),
                label: const Text(
                  "Inspire me!",
                  style: TextStyle(
                    fontSize: 18.8,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Spacer()
          ],
        ),
      ),
    );
  }

  void _showQuote() {
    // increment index by 1
    setState(() {
      _index++;
    });
  }
}

class BizCard extends StatelessWidget {
  const BizCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        title: const Text("BizCard"),
        centerTitle: false,
      ),
      backgroundColor: Colors.lightGreen.shade300,
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            _getCard(),
            _getAvatar(),
          ],
        ),
      ),
    );
  }

  Container _getCard() {
    return Container(
      width: 350,
      height: 200,
      margin: const EdgeInsets.all(50.0),
      decoration: BoxDecoration(
          color: Colors.green, borderRadius: BorderRadius.circular(14.5)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            "Jervy Umandap",
            style: TextStyle(
              fontSize: 20.9,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
          const Text("com.jervygu.BizCard"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.person_outline),
              Text("IG: @jervygu"),
            ],
          ),
        ],
      ),
    );
  }

  Container _getAvatar() {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(50.0)),
        border: Border.all(color: Colors.redAccent, width: 1.2),
        image: const DecorationImage(
            image: NetworkImage(
                "https://scontent.fmnl9-2.fna.fbcdn.net/v/t1.6435-9/91835654_3307803552581719_4921906085968740352_n.jpg?_nc_cat=103&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeF7IQwsFyw4nXAZBgnEzPQbJbZTvt6gc68ltlO-3qBzr-SZouBBo-VKUmGClHi0W6K10vtn4OK-hDsq0ymSWl1N&_nc_ohc=zhYqep-4Rb4AX98cdOv&_nc_ht=scontent.fmnl9-2.fna&oh=c5923f0044269e8f5a5152b79a9d2687&oe=619285C4"),
            fit: BoxFit.cover),
      ),
    );
  }
}

class ScaffoldExample extends StatelessWidget {
  const ScaffoldExample({Key? key}) : super(key: key);

  _tapButton() {
    debugPrint("Tapped Alarm!");
  }

  // _tapDelete() {
  //   debugPrint("Tapped Delete!");
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Scaffold"),
        centerTitle: false,
        backgroundColor: Colors.amberAccent.shade700,
        actions: <Widget>[
          IconButton(
              onPressed: () => debugPrint("Email tapped!"),
              icon: const Icon(Icons.email)),
          IconButton(
              onPressed: _tapButton, icon: const Icon(Icons.access_alarm)),
          // IconButton(onPressed: _tapDelete , icon: const Icon(Icons.delete)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.lightGreen,
          child: const Icon(Icons.call_missed),
          onPressed: () => debugPrint("Hello!")),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), title: Text("First")),
          BottomNavigationBarItem(
              icon: Icon(Icons.ac_unit), title: Text("Second")),
          BottomNavigationBarItem(
              icon: Icon(Icons.home_work), title: Text("Third")),
        ],
        onTap: (int index) => debugPrint("Tapped item: $index"),
      ),
      backgroundColor: Colors.redAccent.shade100,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            CustomButton()

            // InkWell(
            //   child: const Text(
            //     "Tap Me!",
            //     style: TextStyle(
            //       fontSize: 23.4,
            //       fontWeight: FontWeight.bold,
            //     ),
            //   ),
            //   onTap: () => debugPrint("Tapped...!"),
            // )
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final snackBar = SnackBar(
          content: const Text("Hello SnackBar!"),
          backgroundColor: Colors.amberAccent.shade700,
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
      child: Container(
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            color: Colors.pinkAccent, borderRadius: BorderRadius.circular(8.0)),
        child: const Text("Button"),
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Material(
      color: Colors.deepOrange,
      child: Center(
          child: Text(
        "Hello Flutter!",
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 23.4,
          fontStyle: FontStyle.italic,
        ),
      )),
    );

    // return const Center(
    //   child: Text("Hello Flutter!",
    //       textDirection: TextDirection.ltr),
    // );
  }
}
