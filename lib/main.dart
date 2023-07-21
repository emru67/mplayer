import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:audioplayers/audioplayers.dart';

main() {
 runApp(const MyHome());
}

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  MyHomeState createState() => MyHomeState();
}

class MyHomeState extends State<MyHome> {
  bool playingButton = false;
  var audioplayer = AudioPlayer();
  mytoast(var message) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.grey.shade600,
        textColor: Colors.white,
        fontSize: 16.0);
  }
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky,overlays: [SystemUiOverlay.top]);
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: <Widget>[
            Stack(
              clipBehavior: Clip.none, alignment: Alignment.center,
              children: <Widget>[
                Container(
                  height: 250,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade600,
                        spreadRadius: 1,
                        blurRadius: 15,
                        offset: const Offset(4, 4),
                      ),
                    ],
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.elliptical(200, 70),
                      bottomRight: Radius.elliptical(200, 70),
                    ),
                    gradient: const LinearGradient(
                      colors: [
                        Colors.black54,
                        Colors.black38,
                      ],
                      //begin: Alignment.topCenter,
                    ),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "mPlayer",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 45,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 190,
                  child: Container(
                    height: 110,
                    width: 110,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black38,
                        width: 3,
                      ),
                      boxShadow: [
                        const BoxShadow(
                          color: Colors.black87,
                          spreadRadius: 5,
                          blurRadius: 15,
                          offset: Offset(4, 4),
                        ),
                        BoxShadow(
                          color: Colors.grey.shade600,
                          spreadRadius: 1,
                          blurRadius: 15,
                          offset: const Offset(-4, -4),
                        ),
                      ],
                      shape: BoxShape.circle,
                      color: Colors.black54,
                      image: const DecorationImage(
                        image: AssetImage('images/music.png'),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 30,
                  right: 10,
                  child: IconButton(
                    icon: const Icon(
                      Icons.account_circle,
                      size: 40,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      //print("Account");
                      mytoast("Unavailable");
                    },
                  ),
                ),
                Positioned(
                  top: 30,
                  left: 5,
                  child: IconButton(
                    icon: const Icon(
                      Icons.dehaze,
                      size: 40,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      //print("More");
                      mytoast("Unavailable");
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Stack(
              clipBehavior: Clip.none, children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(left: 34, right: 34, top: 30),
                  height: 150,
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 5,
                        blurRadius: 70,
                      )
                    ],
                    borderRadius: BorderRadius.circular(20),
                    gradient: const LinearGradient(
                      colors: [
                        Colors.black26,
                        Colors.black12,
                      ],
                      begin: Alignment.topCenter,
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.only(top: 14),
                        // height: double.infinity,
                        width: double.infinity,
                        alignment: Alignment.topCenter,
                        child: const Text(
                          "Beat",
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        //padding: const EdgeInsets.only(left: 138),
                        // height: double.infinity,
                        width: double.infinity,
                        alignment: Alignment.topCenter,
                        child: const Text(
                          "RedPill",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                  child: Container(
                    margin: const EdgeInsets.only(left: 20, right: 20, top: 110),
                    height: 115,
                    decoration: BoxDecoration(
                      boxShadow: [
                        const BoxShadow(
                          color: Colors.black87,
                          spreadRadius: 1,
                          blurRadius: 15,
                          offset: Offset(4, 4),
                        ),
                        BoxShadow(
                          color: Colors.grey.shade500,
                          spreadRadius: 1,
                          blurRadius: 15,
                          offset: const Offset(-4, -4),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black26,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              IconButton(
                                icon: const Icon(
                                  Icons.fast_rewind,
                                  size: 45,
                                  color: Colors.black,
                                ),
                                onPressed: () {
                                  //print('Rewind');
                                  mytoast("Unavailable");
                                },
                              ),
                              const SizedBox(
                                width: 25,
                              ),
                              IconButton(
                                icon: Icon(
                                  playingButton
                                      ? Icons.pause
                                      : Icons.play_arrow,
                                  size: 45,
                                  color: Colors.black,
                                ),
                                onPressed: () async {
                                  audioplayer.onPlayerStateChanged.listen(
                                        (s) {
                                      //print('Current player state: $s');
                                      switch (s) {
                                         case PlayerState.completed:
                                          setState(() {
                                            playingButton = false;
                                          });
                                          break;
                                        default:
                                          break;
                                      }
                                    },
                                  );
                                  if (playingButton == false) {
                                    await audioplayer.play(UrlSource('https://sevencolors.org/apps/music/Papens100.mp3'));
                                    //print(result);
                                    //mytoast("Playing");
                                    setState(() {
                                      playingButton = true;
                                    });
                                  } else {
                                    await audioplayer.pause();
                                    //print(r);
                                    //mytoast("Paused");
                                    setState(() {
                                      playingButton = false;
                                    });
                                  }
                                },
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              IconButton(
                                icon: const Icon(
                                  Icons.fast_forward,
                                  size: 45,
                                  color: Colors.black,
                                ),
                                onPressed: () {
                                  //print('Forward');
                                  mytoast("Unavailable");
                                },
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          //alignment: Alignment.center,
                          padding: const EdgeInsets.only(right: 97),
                          // width: double.infinity,
                          child: IconButton(
                            icon: const Icon(
                              Icons.stop,
                              size: 45,
                              color: Colors.black,
                            ),
                            onPressed: () async {
                              //print('Stop');
                              await audioplayer.stop();
                              //print(vstop);
                              //mytoast("Stopped");
                              setState(() {
                                playingButton = false;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 107,
                  left: 35,
                  child: Container(
                    padding: const EdgeInsets.all(55),
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black54,
                        width: 3,
                      ),
                      boxShadow: [
                        const BoxShadow(
                          color: Colors.black,
                          spreadRadius: 1,
                          blurRadius: 15,
                          offset: Offset(4, 4),
                        ),
                        BoxShadow(
                          color: Colors.grey.shade600,
                          spreadRadius: 1,
                          blurRadius: 15,
                          offset: const Offset(-4, -4),
                        ),
                      ],
                      shape: BoxShape.circle,
                      color: Colors.black26,
                      image: const DecorationImage(
                        image: AssetImage('images/art.jpg'),
                      ),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black54,
                          width: 1,
                        ),
                        shape: BoxShape.circle,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height - 635,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                height: 108,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade600,
                      spreadRadius: 1,
                      blurRadius: 15,
                      offset: const Offset(-4, -4),
                    ),
                  ],
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.elliptical(200, 50),
                    topRight: Radius.elliptical(200, 50),
                  ),
                  gradient: const LinearGradient(
                    colors: [
                      Colors.black12,
                      Colors.black26,
                    ],
                    //begin: Alignment.topCenter,
                  ),
                ),
                child: Column(
                  children: <Widget>[
                    const SizedBox(
                      height: 29,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            IconButton(
                              icon: const Icon(
                                Icons.headset,
                                size: 37,
                              ),
                              onPressed: () {
                                mytoast("Unavailable");
                              },
                              color: Colors.black,
                            ),
                            const Text(
                              "  Playlist",
                              style: TextStyle(
                                  color: Colors.black, fontSize: 15),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            IconButton(
                              icon: const Icon(
                                Icons.file_download,
                                size: 37,
                              ),
                              onPressed: () {
                                mytoast("Unavailable");
                              },
                              color: Colors.black,
                            ),
                            const Text(
                              "  Downloads",
                              style: TextStyle(
                                  color: Colors.black, fontSize: 15),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            IconButton(
                              icon: const Icon(
                                Icons.search,
                                size: 37,
                              ),
                              onPressed: () {
                                mytoast("Unavailable");
                              },
                              color: Colors.black,
                            ),
                            const Text(
                              "  Search",
                              style: TextStyle(
                                  color: Colors.black, fontSize: 15),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            IconButton(
                              icon: const Icon(
                                Icons.notifications,
                                size: 37,
                              ),
                              onPressed: () {
                                mytoast("Unavailable");
                              },
                              color: Colors.black,
                            ),
                            const Text(
                              "  Notification",
                              style: TextStyle(
                                  color: Colors.black, fontSize: 15),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}