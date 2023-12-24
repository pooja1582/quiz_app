import 'package:flutter/material.dart';
import 'package:quiz_app/screens/home_screen.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  List quizListData=[
    {
      "id":1,
      "answer":"1994 AD",
      "is_answer":"0",
      "answer_discription":"",
      "is_answer_status_right_wrong_omitted":0,
       "title":"When did  the Rajasthan government institute the khel ratna award ?",
      "options":[
        {
          "option":"(a)",
          "Value":"1991 AD",
          "color":"0xFFFFFFFF",
        },
        {
          "option":"(b)",
          "Value":"1993 AD",
          "color":"0xFFFFFFFF",
        },
        {
          "option":"(c)",
          "Value":"1994 AD",
          "color":"0xFFFFFFFF",
        },
        {
          "option":"(d)",
          "Value":"1998 AD",
          "color":"0xFFFFFFFF",
        }
  ]
    },

  {
    "id":2,
    "answer":"All these",
    "is_answer":"0",
    "answer_discription":"",
    "is_answer_status_right_wrong_omitted":0,
    "title":"The castes that   migrated from punjab a Rajasthan due to the invasion of Alexander the Great were ?",
    "options":[
      {
        "option":"(a)",
        "Value":"Arjunayan and yaudheya",
        "color":"0xFFFFFFFF",
      },
      {
        "option":"(b)",
        "Value":"Shiva",
        "color":"0xFFFFFFFF",
      },
      {
        "option":"(c)",
        "Value":"Malava",
        "color":"0xFFFFFFFF",
      },
      {
        "option":"(d)",
        "Value":"All these",
        "color":"0xFFFFFFFF",
      }
    ]
  },

  {
    "id":3,
    "answer":"iron age",
    "is_answer":"0",
    "answer_discription":"",
    "is_answer_status_right_wrong_omitted":0,
    "title":"Sunari were related to which civilizatio ?",
    "options":[
      {
        "option":"(a)",
        "Value":"copper age",
        "color":"0xFFFFFFFF",
      },
      {
        "option":"(b)",
        "Value":"stone age",
        "color":"0xFFFFFFFF",
      },
      {
        "option":"(c)",
        "Value":"iron age",
        "color":"0xFFFFFFFF",
      },
      {
        "option":"(d)",
        "Value":"Bronze age",
        "color":"0xFFFFFFFF",
      }
    ]
  },

  {
    "id":4,
    "answer":"The huge bastions of the ramparts of Taragarh Ajmer",
    "is_answer":"0",
    "answer_discription":"",
    "is_answer_status_right_wrong_omitted":0,
    "title":"When did  the Rajasthan government institute the khel ratna award ?",
    "options":[
      {
        "option":"(a)",
        "Value":"Names of women's clothes in mewar region",
        "color":"0xFFFFFFFF",
      },
      {
        "option":"(b)",
        "Value":"Name of the methods of Rajasthani food",
        "color":"0xFFFFFFFF",
      },
      {
        "option":"(c)",
        "Value":"The huge bastions of the ramparts of Taragarh Ajmer",
        "color":"0xFFFFFFFF",
      },
      {
        "option":"(d)",
        "Value":"The names of the tribes of the castes in the folk tradition of Marwar",
        "color":"0xFFFFFFFF",
      }
    ]
  },

  {
    "id":5,
    "answer":"Munj",
    "is_answer":"0",
    "answer_discription":"",
    "is_answer_status_right_wrong_omitted":0,
    "title":"Which king received the title of Kavi Vrusha ?",
    "options":[
      {
        "option":"(a)",
        "Value":"Munj",
        "color":"0xFFFFFFFF",
      },
      {
        "option":"(b)",
        "Value":"Rao jodha",
        "color":"0xFFFFFFFF",
      },
      {
        "option":"(c)",
        "Value":"Abhay Singh",
        "color":"0xFFFFFFFF",
      },
      {
        "option":"(d)",
        "Value":"Pratap Singh",
        "color":"0xFFFFFFFF",
      }
    ]
  },

  {
    "id":6,
    "answer":"In Nagaure district",
    "is_answer":"0",
    "answer_discription":"",
    "is_answer_status_right_wrong_omitted":0,
    "title":"When did  the Rajasthan government institute the khel ratna award ?",
    "options":[
      {
        "option":"(a)",
        "Value":"In jhalawar district",
        "color":"0xFFFFFFFF",
      },
      {
        "option":"(b)",
        "Value":"In Humanagarh district",
        "color":"0xFFFFFFFF",
      },
      {
        "option":"(c)",
        "Value":"In Nagaure district ",
        "color":"0xFFFFFFFF",
      },
      {
        "option":"(d)",
        "Value":"In Barmer district",
        "color":"0xFFFFFFFF",
      }
    ]
  },

  ];
  final _PageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Colors.blue.shade200,
appBar: AppBar(
  backgroundColor: Colors.blue.shade700,
  leading:   InkWell(onTap: (){Navigator.pop(context);},
      child: Icon(Icons.arrow_back,color: Colors.white,)),
  title: Text("QuizScreen",style: TextStyle(color: Colors.white),),
),
body: Padding(
  padding: const EdgeInsets.all(8.0),
  child:   Column(
    children: [
  Expanded(
    child:   PageView.builder(
        controller:_PageController ,
        itemCount:quizListData.length ,

        itemBuilder: (context,Index){
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(21),
            color: Colors.orange
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              quizListData[Index]['title'],
              style: TextStyle(color: Colors.white,fontSize: 18,),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),

        ...quizListData[Index]['options']
        .Map(
            (data)=> Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: double.infinity,
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)
                  ),
                  child: TextButton(
                    style: TextButton.styleFrom(backgroundColor: Color(
                      int.parse(data['color'])
                    ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)
                      )
                    ),
                    onPressed: (){
                      if (quizListData[Index]['is_answered'] ==0
                      ){
                        setState(() {
                          if (data['value']==
                              quizListData[Index]['answer']
                          ){
                            data['color']='black';
                            quizListData[Index][
                              'is_answer_status_right_wrong_omitted'];
                            }else{
                            data['color']='0xFFFFFFFF';
                            quizListData[Index]['is_answer_status_right_wrong_omitted'];
                           }
                           quizListData[Index]['is_answer']=1;
                          }
                        );
                      }else{}
                    },child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 0
                        ),
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Color(
                              int.parse(
                               data['color']
                              )
                            )
                          ),
                          child: Center(
                            child: Text(
                              data['option'].toUpperCase(),
                              style: TextStyle(
                                color: Colors.black
                              ),
                            ),
                          ),
                        ),
                      ),
                      Flexible(child: Text(
                        data['value'],
                        style: TextStyle(color: Colors.black),
                      ))
                    ],
                  ),

                  ),
                ),

              )
            )
        )
      ],
    );
    }),
  )
    ],
  ),
),
    );
  }
}
