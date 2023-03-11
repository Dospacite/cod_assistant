import 'package:flutter/material.dart';

import 'Audio.dart';
import 'Symptom.dart';
import 'SymptomViewer.dart';

class Symptoms {
  static SymptomViewer eye = SymptomViewer(
    symptoms: [
      Symptom(
        name: "Göz Morarması",
        description: "Eye",
        image: const AssetImage("assets/images/bruised_eye.png"),
        audio: Audio(path: "assets/audio/bruised_eye.mp3"),
      ),
      Symptom(
        name: "Göz Kaşıntısı",
        description: "Eye",
        image: const AssetImage("assets/images/itchy_eye.png"),
        audio: Audio(path: "assets/audio/itchy_eye.mp3"),
      ),
      Symptom(
        name: "Şişik Göz Kapağı",
        description: "Eye",
        image: const AssetImage("assets/images/swollen_eyelid.png"),
        audio: Audio(path: "assets/audio/swollen_eyelid.mp3"),
      ),
      Symptom(
        name: "Kızarık Göz",
        description: "Eye",
        image: const AssetImage("assets/images/pink_eye.png"),
        audio: Audio(path: "assets/audio/pink_eye.mp3"),
      ),
      Symptom(
        name: "Bulanık Görüş",
        description: "Eye",
        image: const AssetImage("assets/images/blurry_vision.png"),
        audio: Audio(path: "assets/audio/blurry_vision.mp3"),
      ),
      Symptom(
        name: "Göz Çapaklanması",
        description: "Eye",
        image: const AssetImage("assets/images/eye_gunk.png"),
        audio: Audio(path: "assets/audio/eye_gunk.mp3"),
      ),
      Symptom(
        name: "Göz Damlası",
        description: "Eye",
        image: const AssetImage("assets/images/eye_drop.png"),
        audio: Audio(path: "assets/audio/eye_drop.mp3"),
      ),
      Symptom(
        name: "Göz Kontrolü",
        description: "Eye",
        image: const AssetImage("assets/images/eyesight.png"),
        audio: Audio(path: "assets/audio/eyesight.mp3"),
      ),
    ],
  );

  static SymptomViewer mouth = SymptomViewer(
    symptoms: [
      Symptom(
        name: "Diş Teli",
        description: "Eye",
        image: const AssetImage("assets/images/braces.png"),
        audio: Audio(path: "assets/audio/braces.mp3"),
      ),
      Symptom(
        name: "Dudak Sisti",
        description: "Eye",
        image: const AssetImage("assets/images/lip_cyst.png"),
        audio: Audio(path: "assets/audio/lip_cyst.mp3"),
      ),
      Symptom(
        name: "Ağız Sisti",
        description: "Eye",
        image: const AssetImage("assets/images/mouth_cyst.png"),
        audio: Audio(path: "assets/audio/mouth_cyst.mp3"),
      ),
      Symptom(
        name: "Kırık/Çürük Diş",
        description: "Eye",
        image: const AssetImage("assets/images/broken_tooth.png"),
        audio: Audio(path: "assets/audio/broken_tooth.mp3"),
      ),
      Symptom(
        name: "Diş Eti Kanaması",
        description: "Eye",
        image: const AssetImage("assets/images/bleeding_gum.png"),
        audio: Audio(path: "assets/audio/bleeding_gum.mp3"),
      ),
      Symptom(
        name: "Diş Ağrısı",
        description: "Eye",
        image: const AssetImage("assets/images/tooth_pain.png"),
        audio: Audio(path: "assets/audio/tooth_pain.mp3"),
      ),
      Symptom(
        name: "Dudak Şişmesi",
        description: "Eye",
        image: const AssetImage("assets/images/swollen_lip.png"),
        audio: Audio(path: "assets/audio/swollen_lip.mp3"),
      ),
    ],
  );

  static SymptomViewer nose = SymptomViewer(
    symptoms: [
      Symptom(
        name: "Burun Akması",
        description: "Eye",
        image: const AssetImage("assets/images/runny_nose.png"),
        audio: Audio(path: "assets/audio/runny_nose.mp3"),
      ),
      Symptom(
        name: "Burun Ameliyatı",
        description: "Eye",
        image: const AssetImage("assets/images/nose_operation.png"),
        audio: Audio(path: "assets/audio/nose_operation.mp3"),
      ),
      Symptom(
        name: "Burun Kırılması",
        description: "Eye",
        image: const AssetImage("assets/images/broken_nose.png"),
        audio: Audio(path: "assets/audio/broken_nose.mp3"),
      ),
      Symptom(
        name: "Burun Kanaması",
        description: "Eye",
        image: const AssetImage("assets/images/bleeding_nose.png"),
        audio: Audio(path: "assets/audio/bleeding_nose.mp3"),
      ),
    ],
  );

  static SymptomViewer head = SymptomViewer(
    symptoms: [
      Symptom(
        name: "Baş Ağrısı",
        description: "Eye",
        image: const AssetImage("assets/images/headache.png"),
        audio: Audio(path: "assets/audio/headache.mp3"),
      ),
      Symptom(
        name: "Baş Dönmesi",
        description: "Eye",
        image: const AssetImage("assets/images/dizziness.png"),
        audio: Audio(path: "assets/audio/dizziness.mp3"),
      ),
      Symptom(
        name: "Baş Şişmesi",
        description: "Eye",
        image: const AssetImage("assets/images/head_bump.png"),
        audio: Audio(path: "assets/audio/head_bump.mp3"),
      ),
      Symptom(
        name: "Yüksek Ateş",
        description: "Eye",
        image: const AssetImage("assets/images/high_temperature.png"),
        audio: Audio(path: "assets/audio/fever.mp3"),
      ),
    ],
  );

  static SymptomViewer ear = SymptomViewer(
    symptoms: [
      Symptom(
        name: "Tinnitus",
        description: "Eye",
        image: const AssetImage("assets/images/tinnitus.png"),
        audio: Audio(path: "assets/audio/tinnitus.mp3"),
      ),
      Symptom(
        name: "Kulak Kanaması",
        description: "Eye",
        image: const AssetImage("assets/images/bleeding_ear.png"),
        audio: Audio(path: "assets/audio/bleeding_ear.mp3"),
      ),
      Symptom(
        name: "Kulak Ağrısı",
        description: "Eye",
        image: const AssetImage("assets/images/ear_pain.png"),
        audio: Audio(path: "assets/audio/ear_pain.mp3"),
      ),
    ],
  );

  static SymptomViewer skin = SymptomViewer(
    symptoms: [
      Symptom(
        name: "Yüzde Aknelenme",
        description: "Eye",
        image: const AssetImage("assets/images/acne_on_face.png"),
        audio: Audio(path: "assets/audio/braces.mp3"),
      ),
      Symptom(
        name: "Vücutta Kızarıklık",
        description: "Eye",
        image: const AssetImage("assets/images/rashes_on_body.png"),
        audio: Audio(path: "assets/audio/braces.mp3"),
      ),
      Symptom(
        name: "Ayak Mantarı",
        description: "Eye",
        image: const AssetImage("assets/images/foot_fungus.png"),
        audio: Audio(path: "assets/audio/braces.mp3"),
      ),
      Symptom(
        name: "Vücutta Aknelenme",
        description: "Eye",
        image: const AssetImage("assets/images/acne_on_body.png"),
        audio: Audio(path: "assets/audio/braces.mp3"),
      ),
      Symptom(
        name: "Vücutta Kırmızı Noktalar",
        description: "Eye",
        image: const AssetImage("assets/images/red_spots.png"),
        audio: Audio(path: "assets/audio/braces.mp3"),
      ),
      Symptom(
        name: "Kaşıntılı Kızarıklık",
        description: "Eye",
        image: const AssetImage("assets/images/itchy_rash.png"),
        audio: Audio(path: "assets/audio/braces.mp3"),
      ),
    ],
  );

  static SymptomViewer neck = SymptomViewer(
    symptoms: [
      Symptom(
        name: "Boğaz Ağrısı",
        description: "Eye",
        image: const AssetImage("assets/images/throat_pain.png"),
        audio: Audio(path: "assets/audio/braces.mp3"),
      ),
      Symptom(
        name: "Öksürük",
        description: "Eye",
        image: const AssetImage("assets/images/sneezing.png"),
        audio: Audio(path: "assets/audio/braces.mp3"),
      ),
      Symptom(
        name: "Kanamalı Öksürük",
        description: "Eye",
        image: const AssetImage("assets/images/coughing_blood.png"),
        audio: Audio(path: "assets/audio/braces.mp3"),
      ),
      Symptom(
        name: "Boyun Ağrısı",
        description: "Eye",
        image: const AssetImage("assets/images/neck_pain.png"),
        audio: Audio(path: "assets/audio/braces.mp3"),
      ),
    ],
  );

  static SymptomViewer leg = SymptomViewer(
    symptoms: [
      Symptom(
        name: "Bilekte Kanama",
        description: "Eye",
        image: const AssetImage("assets/images/bleeding_ankle.png"),
        audio: Audio(path: "assets/audio/braces.mp3"),
      ),
      Symptom(
        name: "Diz Ağrısı",
        description: "Eye",
        image: const AssetImage("assets/images/knee_pain.png"),
        audio: Audio(path: "assets/audio/braces.mp3"),
      ),
      Symptom(
        name: "Bacak Kırılması",
        description: "Eye",
        image: const AssetImage("assets/images/broken_leg.png"),
        audio: Audio(path: "assets/audio/braces.mp3"),
      ),
    ],
  );

  static SymptomViewer feet = SymptomViewer(
    symptoms: [
      Symptom(
        name: "Tırnakta Sarı Çizgiler",
        description: "Eye",
        image: const AssetImage("assets/images/yellow_lines_on_toe.png"),
        audio: Audio(path: "assets/audio/braces.mp3"),
      ),
      Symptom(
        name: "Tırnakta Batma",
        description: "Eye",
        image: const AssetImage("assets/images/ingrown_toenail.png"),
        audio: Audio(path: "assets/audio/braces.mp3"),
      ),
      Symptom(
        name: "Ayak Kokması",
        description: "Eye",
        image: const AssetImage("assets/images/smelly_feet.png"),
        audio: Audio(path: "assets/audio/braces.mp3"),
      ),
      Symptom(
        name: "Ayak Bileği Kırılması",
        description: "Eye",
        image: const AssetImage("assets/images/broken_ankle.png"),
        audio: Audio(path: "assets/audio/braces.mp3"),
      ),
      Symptom(
        name: "Ayak Bileğinde Acı",
        description: "Eye",
        image: const AssetImage("assets/images/ankle_pain.png"),
        audio: Audio(path: "assets/audio/braces.mp3"),
      ),
      Symptom(
        name: "Ayakta Şişme",
        description: "Eye",
        image: const AssetImage("assets/images/swollen_ankle.png"),
        audio: Audio(path: "assets/audio/braces.mp3"),
      ),
    ],
  );

  static SymptomViewer stomach = SymptomViewer(
    symptoms: [
      Symptom(
        name: "Mide Yanması",
        description: "Eye",
        image: const AssetImage("assets/images/burning_stomach.png"),
        audio: Audio(path: "assets/audio/braces.mp3"),
      ),
      Symptom(
        name: "Karın Ağrısı",
        description: "Eye",
        image: const AssetImage("assets/images/stomach_ache.png"),
        audio: Audio(path: "assets/audio/braces.mp3"),
      ),
      Symptom(
        name: "Kusma",
        description: "Eye",
        image: const AssetImage("assets/images/vomiting.png"),
        audio: Audio(path: "assets/audio/braces.mp3"),
      ),
      Symptom(
        name: "İshal",
        description: "Eye",
        image: const AssetImage("assets/images/diarrhea.png"),
        audio: Audio(path: "assets/audio/braces.mp3"),
      ),
      Symptom(
        name: "Kabızlık",
        description: "Eye",
        image: const AssetImage("assets/images/constipation.png"),
        audio: Audio(path: "assets/audio/braces.mp3"),
      ),
    ],
  );

  static SymptomViewer hand = SymptomViewer(
    symptoms: [
      Symptom(
        name: "Elde Şişme",
        description: "Eye",
        image: const AssetImage("assets/images/swollen_hand.png"),
        audio: Audio(path: "assets/audio/braces.mp3"),
      ),
      Symptom(
        name: "Elde Ağrı",
        description: "Eye",
        image: const AssetImage("assets/images/hand_pain.png"),
        audio: Audio(path: "assets/audio/braces.mp3"),
      ),
      Symptom(
        name: "Kırık Parmak",
        description: "Eye",
        image: const AssetImage("assets/images/broken_finger.png"),
        audio: Audio(path: "assets/audio/braces.mp3"),
      ),
      Symptom(
        name: "Bilekte Ağrı",
        description: "Eye",
        image: const AssetImage("assets/images/wrist_pain.png"),
        audio: Audio(path: "assets/audio/braces.mp3"),
      ),
      Symptom(
        name: "Dirsekte Ağrı",
        description: "Eye",
        image: const AssetImage("assets/images/elbow_pain.png"),
        audio: Audio(path: "assets/audio/braces.mp3"),
      ),
      Symptom(
        name: "Kırık Kol",
        description: "Eye",
        image: const AssetImage("assets/images/broken_arm.png"),
        audio: Audio(path: "assets/audio/braces.mp3"),
      ),
    ],
  );

  static SymptomViewer male = SymptomViewer(
    symptoms: [
      Symptom(
        name: "Penis Ağrısı",
        description: "Eye",
        image: const AssetImage("assets/images/penis_pain.png"),
        audio: Audio(path: "assets/audio/braces.mp3"),
      ),
      Symptom(
        name: "Prostat",
        description: "Eye",
        image: const AssetImage("assets/images/UNKNOWN_penis.png"),
        audio: Audio(path: "assets/audio/braces.mp3"),
      ),
    ],
  );

  static SymptomViewer back = SymptomViewer(
    symptoms: [
      Symptom(
        name: "Fıtık",
        description: "Eye",
        image: const AssetImage("assets/images/hernia.png"),
        audio: Audio(path: "assets/audio/braces.mp3"),
      ),
      Symptom(
        name: "Bel Ağrısı",
        description: "Eye",
        image: const AssetImage("assets/images/back_pain.png"),
        audio: Audio(path: "assets/audio/braces.mp3"),
      ),
      Symptom(
        name: "Skolyoz",
        description: "Eye",
        image: const AssetImage("assets/images/scoliosis.png"),
        audio: Audio(path: "assets/audio/braces.mp3"),
      ),
      Symptom(
        name: "Omuz Ağrısı",
        description: "Eye",
        image: const AssetImage("assets/images/shoulder_pain.png"),
        audio: Audio(path: "assets/audio/braces.mp3"),
      ),
    ],
  );

  static SymptomViewer chest = SymptomViewer(
    symptoms: [
      Symptom(
        name: "Kalp Yanması",
        description: "Eye",
        image: const AssetImage("assets/images/heart_burn.png"),
        audio: Audio(path: "assets/audio/braces.mp3"),
      ),
      Symptom(
        name: "Kalp Krizi",
        description: "Eye",
        image: const AssetImage("assets/images/heart_attack.png"),
        audio: Audio(path: "assets/audio/braces.mp3"),
      ),
      Symptom(
        name: "Kalp Ağrısı",
        description: "Eye",
        image: const AssetImage("assets/images/heart_pain.png"),
        audio: Audio(path: "assets/audio/braces.mp3"),
      ),
    ],
  );

  static SymptomViewer hip = SymptomViewer(
    symptoms: [
      Symptom(
        name: "Kalça Ağrısı",
        description: "Eye",
        image: const AssetImage("assets/images/hip_pain.png"),
        audio: Audio(path: "assets/audio/braces.mp3"),
      ),
      Symptom(
        name: "Kalça Çıkması",
        description: "Eye",
        image: const AssetImage("assets/images/UNKNOWN_hip.png"),
        audio: Audio(path: "assets/audio/braces.mp3"),
      ),
    ],
  );
}
