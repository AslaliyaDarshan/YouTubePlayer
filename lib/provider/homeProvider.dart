import 'package:flutter/material.dart';
import 'package:videoplayer/model/videoModel.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class HomeProvider extends ChangeNotifier {
  bool isPlay = false;

  void play() {
    isPlay = !isPlay;
    notifyListeners();
  }

  ModelClass? modelClass;

  List<ModelClass> videoImgList = [
    ModelClass(
        name:
            "Saiyaara Full Song | Ek Tha Tiger | Salman Khan, Katrina Kaif | Mohit Chauhan, Taraannum, Sohail Sen",
        img: "https://i.ytimg.com/vi/A5pSnIwbpaM/maxresdefault.jpg",
        key: "A5pSnIwbpaM"),
    ModelClass(
        name: "Dwayne DJ Bravo - Champion (Official Song)",
        img: "https://i.ytimg.com/vi/48m3CuMGphQ/hq720.jpg",
        key: "Y963o_1q71M"),
    ModelClass(
        name:
            "Salaam Rocky Bhai Full Video Song | KGF Telugu Movie | Yash | Prashanth Neel | Hombale Films",
        img: "https://i.ytimg.com/vi/L5eVKe4qOpg/maxresdefault.jpg",
        key: "6Hvc-xpNTME"),
    ModelClass(
        name:
            "Full Video Song : Ho Jaane Do Aar Paar | KGF | Yash | Srinidhi Shetty | Ravi Basrur",
        img: "https://i.ytimg.com/vi/jNulJ5P9-hs/maxresdefault.jpg",
        key: "vLD0ltGhvrY"),
    ModelClass(
        name:
            "Sulthan Video Song (Hindi) | KGF Chapter 2 | Rocking Star Yash |Prashanth Neel |Ravi Basrur |Hombale",
        img: "https://i.ytimg.com/vi/Ek-2VWEvQkQ/hq720.jpg",
        key: "Ek-2VWEvQkQ"),
    ModelClass(
        name:
            "Prassthanam Title Track - Sanjay Dutt, Manisha Koirala, Jackie Shroff, Ali Fazal",
        img:
            "https://cdn.dnaindia.com/sites/default/files/styles/full/public/2019/09/23/869763-prassthanam.jpg",
        key: "HJU7wBoLSpw"),
    ModelClass(
        name:
            "Mast Kalander | Full Audio | Mika Singh | Yo Yo Honey Singh | Latest Punjabi Song 2020",
        img:
            "https://1.bp.blogspot.com/-JMtE9EHCaFI/Uwz7LagvBKI/AAAAAAAAXMs/-zsJTc9wyKo/w600-h315-p-k-no-nu/mast-kalander-1024x576.jpg",
        key: "ZG1LobVjU7o"),
    ModelClass(
        name:
            "SUMIT GOSWAMI : Yaar Purane : KHATRI : New Haryanvi Songs Haryanavi | Sonotek",
        img:
            "https://ringtone.srkh.in/wp-content/uploads/2019/12/Yaar-Purane.jpg",
        key: "OgqFa9e7VoE"),
    ModelClass(
        name:
            "King - Tu Aake Dekhle | The Carnival | The Last Ride | Prod. by Shahbeatz | Latest Hit Songs 2020",
        img: "https://i.ytimg.com/vi/fe1OfAXXnJ4/maxresdefault.jpg",
        key: "A66TYFdz8YA"),
    ModelClass(
        name:
            "Kehndi Hundi Si Chan Tak Raah Bana De (Full Song) AP Dhillon I Gurinder Gill I Shinda Kahlon",
        img:
            "https://www.lyricsnest.com/wp-content/uploads/2022/01/kehndi-hundi-si-chan-tak-raah-bana-de-lyrics-translation.jpg",
        key: "7FVaxc-4-FQ"),
    ModelClass(
        name:
            "Vele Full Video - SOTY|Sidharth Malhotra,Varun Dhawan|Vishal Dadlani,Shekhar Ravjiani",
        img: "https://i.ytimg.com/vi/kNlY7VKDdno/maxresdefault.jpg",
        key: "kNlY7VKDdno"),
  ];
}
