import 'package:flutter/material.dart';
import 'package:shikkha/src/views/ui/video_conference_screen.dart';
import 'package:shikkha/src/views/utils/colors.dart';
import 'package:shikkha/src/views/widgets/widget_factory.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController conferenceID = TextEditingController();

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  const Text(
                    "Shikkaha",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                  const SizedBox(height: 40),
                  SizedBox(
                    height: 70,
                    width: MediaQuery.of(context).size.width,
                    child: TextField(
                      controller: conferenceID,
                      style: const TextStyle(fontSize: 25),
                      textAlign: TextAlign.center,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  SizedBox(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    child: WidgetFactory.buildButton(context: context,
                        child: Text("START/JOIN"),
                        backgroundColor: kThemeColor,
                        borderRadius: 10,
                        textColor: Colors.white,
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => VideoConferenceScreen(
                                conferenceID: conferenceID.text,
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
        ),
      ),
    );
  }
}
