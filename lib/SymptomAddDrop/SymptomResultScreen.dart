import 'package:cod_assistant/Audio/AudioHandler.dart';
import 'package:flutter/material.dart';

import '../Audio/Audio.dart';
import '../GlobalData.dart';
import '../Symptom/Symptom.dart';

class SymptomResultScreen extends StatefulWidget {
  const SymptomResultScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return SymptomResultScreenState();
  }
}

class SymptomResultScreenState extends State<SymptomResultScreen> {
  AudioHandler audioHandler = AudioHandler();

  @override
  Widget build(BuildContext context) {
    audioHandler.clearQueue();
    audioHandler.addAudio(Audio(path: "assets/audio/ben_cod.mp3"));
    for (Symptom symptom in GlobalData.symptoms) {
      audioHandler.addAudio(symptom.audio);
    }
    audioHandler.addAudio(Audio(path: "assets/audio/bolumlere_iletin.mp3"));

    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.025,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.tealAccent.shade100,
                  borderRadius: BorderRadius.circular(25),
                ),
                padding: const EdgeInsets.all(20),
                width: MediaQuery.of(context).size.width * 0.8,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "Merhaba, ben codassistant. Önünüzde gördüğünüz kişinin dijital asistanıyım. Kendisi işitme engelli bir birey ve şu semptomları gösteriyor:",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black54,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Divider(
                      color: Colors.black87,
                      height: MediaQuery.of(context).size.height * 0.05,
                      thickness: 2,
                      indent: 30,
                      endIndent: 30,
                    ),
                    ConstrainedBox(
                      constraints: BoxConstraints(
                        maxHeight: MediaQuery.of(context).size.height * 0.4,
                      ),
                      child: SingleChildScrollView(
                        padding: const EdgeInsets.all(5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            for (Symptom symptom in GlobalData.symptoms)
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.7,
                                child: FittedBox(
                                  fit: BoxFit.fitHeight,
                                  child: symptom.getRowWidget(context),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      color: Colors.black87,
                      height: MediaQuery.of(context).size.height * 0.05,
                      thickness: 2,
                      indent: 30,
                      endIndent: 30,
                    ),
                    const Text(
                      "Lütfen onu semptomlarıyla ilgilenen bölümlere ulaştırın.",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              InkResponse(
                onTap: () {
                  Navigator.pushNamed(context, '/profile');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.account_circle,
                      size: 50,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.01,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      padding: const EdgeInsets.all(10),
                      child: const Text(
                        "Hasta Bilgileri",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              InkResponse(
                onTap: () {
                  audioHandler.playAll();
                },
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.volume_up,
                        color: Colors.white,
                        size: 30,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.02,
                      ),
                      const Text(
                        "Seslendir",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
