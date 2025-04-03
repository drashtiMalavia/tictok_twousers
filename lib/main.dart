import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: tictoc(),debugShowCheckedModeBanner: false,));
}
class tictoc extends StatefulWidget {
  const tictoc({super.key});

  @override
  State<tictoc> createState() => _tictocState();
}

class _tictocState extends State<tictoc> {

  List li=[],li2=[];
  String  ans1 = "",ans2 = "", ans3 = "", ans4 = "", ans5 = "", ans6 = "", ans7 = "", ans8 = "", ans9 = "", btn = "",win="";
  int i = 1, cnt = 0,j=0,fnd=0;
  int tie1=0,tie2=0,tie3=0,tie4=0,tie5=0,tie6=0,tie7=0,tie8=0,tie9=0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Tic-Toc Simple Game",style: TextStyle(color: Colors.white),),
          backgroundColor: Colors.black,
        ),
        backgroundColor: Colors.black,
        body: SafeArea(child:
        Expanded(
          child: Column(
            children: [
              Expanded(flex: 3,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 150,
                        width: 420,
                        child: Text("$win",style: TextStyle(fontSize: 50),),
                        color: Colors.pink.shade50,
                        alignment: Alignment.center,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.values[2],
                  children: [
                    Expanded(
                      child: Container(
                        width: 100,
                        height: 100,
                        child: ElevatedButton(
                          style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.pink.shade50)),
                            onPressed: () {
                          logic("1");
                        },child: Text("$ans1", style: TextStyle(fontSize: 50,),)),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: 100,
                        height: 100,
                        child: ElevatedButton(
                            style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.pink.shade50)),
                            onPressed: () {
                          logic("2");
                        },child: Text("$ans2", style: TextStyle(fontSize: 50),)),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: 100,
                        height: 100,
                        child: ElevatedButton(
                            style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.pink.shade50)),
                            onPressed: () {
                          logic("3");
                        },child: Text("$ans3", style: TextStyle(fontSize: 50),)),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.values[2],
                  children: [
                    Expanded(
                      child: Container(
                        width: 100,
                        height: 100,
                        child: ElevatedButton(style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.pink.shade50)),
                            onPressed: () {
                          logic("4");
                        },child: Text("$ans4", style: TextStyle(fontSize: 50),)),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: 100,
                        height: 100,
                        child: ElevatedButton(style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.pink.shade50)),
                            onPressed: () {
                          logic("5");
                        },child: Text("$ans5", style: TextStyle(fontSize: 50),)),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: 100,
                        height: 100,
                        child: ElevatedButton(style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.pink.shade50)),
                            onPressed: () {
                          logic("6");
                        },child: Text("$ans6", style: TextStyle(fontSize: 50),)),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.values[2],
                  children: [
                    Expanded(
                      child: Container(
                        width: 100,
                        height: 100,
                        child: ElevatedButton(style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.pink.shade50)),onPressed: () {
                          logic("7");
                        },child: Text("$ans7", style: TextStyle(fontSize: 50),)),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: 100,
                        height: 100,
                        child: ElevatedButton(style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.pink.shade50)),onPressed: () {
                          logic("8");
                        },child: Text("$ans8", style: TextStyle(fontSize: 50),)),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: 100,
                        height: 100,
                        child: ElevatedButton(style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.pink.shade50)),onPressed: () {
                          logic("9");
                        },child: Text("$ans9", style: TextStyle(fontSize: 50),)),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(flex: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
                        height: 100,
                        width: 400,
                        child: ElevatedButton(style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.pink.shade50)),onPressed: () {
                          reset();
                        },child: Text("Reset",style: TextStyle(fontSize: 50),)),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),)
    );
  }

  logic(String num) {
    setState(() {
      btn = num;
      li.add(btn);
      for(j=0;j<li.length;j++)
      {
        if(!li2.contains(li[j]))
        {
          li2.add(btn);
          i++;
          if (i == 10) {
            i = 0;
          }
          if (i % 2 == 0){
            cnt = 0;
          } else {
            cnt = 1;
          }
          if (cnt == 1) {
            if (btn == '1') {
              if(fnd!=1)
              {
                ans1 = "O";
              }
              tie1=1;
            }
            if (btn == '2') {
              if(fnd!=1)
              {
                ans2 = "O";
              }
              tie2=2;
            }
            if (btn == '3') {
              if(fnd!=1)
              {
                ans3 = "O";
              }
              tie3=3;
            }
            if (btn == '4') {
              if(fnd!=1)
              {
                ans4 = "O";
              }
              tie4=4;
            }
            if (btn == '5') {
              if(fnd!=1)
              {
                ans5 = "O";
              }
              tie5=5;
            }
            if (btn == '6') {
              if(fnd!=1)
              {
                ans6 = "O";
              }
              tie6=6;
            }
            if (btn == '7') {
              if(fnd!=1)
              {
                ans7 = "O";
              }
              tie7=7;
            }
            if (btn == '8') {
              if(fnd!=1)
              {
                ans8 = "O";
              }
              tie8=8;
            }
            if (btn == '9') {
              if(fnd!=1)
              {
                ans9 = "O";
              }
              tie9=9;
            }
          }
          else{
            if (btn == '1') {
              if(fnd!=1)
              {
                ans1 = "X";
              }
              tie1=1;
            }
            if (btn == '2') {
              if(fnd!=1)
              {
                ans2 = "X";
              }
              tie2=2;
            }
            if (btn == '3') {
              if(fnd!=1)
              {
                ans3 = "X";
              }
              tie3=3;
            }
            if (btn == '4') {
              if(fnd!=1)
              {
                ans4 = "X";
              }
              tie4=4;
            }
            if (btn == '5') {
              if(fnd!=1)
              {
                ans5 = "X";
              }
              tie5=5;
            }
            if (btn == '6') {
              if(fnd!=1)
              {
                ans6 = "X";
              }
              tie6=6;
            }
            if (btn == '7') {
              if(fnd!=1)
              {
                ans7 = "X";
              }
              tie7=7;
            }
            if (btn == '8') {
              if(fnd!=1)
              {
                ans8 = "X";
              }
              tie8=8;
            }
            if (btn == '9') {
              if(fnd!=1)
              {
                ans9 = "X";
              }
              tie9=9;
            }
          }
        }
        else
        {
          ans1 = ans1;
          ans2 = ans2;
          ans3 = ans3;
          ans4 = ans4;
          ans5 = ans5;
          ans6 = ans6;
          ans7 = ans7;
          ans8 = ans8;
          ans9 = ans9;
        }
      }

    });


    if((ans1=="X" && ans2=="X" && ans3=="X") || (ans4=="X" && ans5=="X" && ans6=="X") || (ans7=="X" && ans8=="X" && ans9=="X") || (ans1=="X" && ans4=="X" && ans7=="X") || (ans2=="X" && ans5=="X" && ans8=="X") || (ans3=="X" && ans6=="X" && ans9=="X") || (ans1=="X" && ans5=="X" && ans9=="X") || (ans3=="X" && ans5=="X" && ans7=="X"))
    {
      win="X is win";
      fnd=1;
    }
    else if ((ans1=="O" && ans2=="O" && ans3=="O") || (ans4=="O" && ans5=="O" && ans6=="O") || (ans7=="O" && ans8=="O" && ans9=="O") || (ans1=="O" && ans4=="O" && ans7=="O") || (ans2=="O" && ans5=="O" && ans8=="O") || (ans3=="O" && ans6=="O" && ans9=="O") || (ans1=="O" && ans5=="O" && ans9=="O") || (ans3=="O" && ans5=="O" && ans7=="O")){
      win="O is win";
      fnd=1;
    }
    else if(tie1==1 && tie2==2 && tie3==3 && tie4==4 && tie5==5 && tie6==6 && tie7==7 && tie8==8 && tie9==9)
    {
      win="Tie";
      fnd=2;
    }
  }

  reset() {
    ans1 = "";
    ans2 = "";
    ans3 = "";
    ans4 = "";
    ans5 = "";
    ans6 = "";
    ans7 = "";
    ans8 = "";
    ans9 = "";
    btn = "";
    tie1=0;
    tie2=0;
    tie3=0;
    tie4=0;
    tie5=0;
    tie6=0;
    tie7=0;
    tie8=0;
    tie9=0;
    i = 0;
    cnt = 0;
    fnd=0;
    li.clear();
    li2.clear();
    win="";
    setState(() {});
  }
}

