 
import 'package:flutter/material.dart'; 
import 'package:tdsman_windows_app/custom_widget/customButton.dart';
import 'package:tdsman_windows_app/custom_widget/customDropDown.dart';
import 'package:tdsman_windows_app/custom_widget/customText.dart';
import 'package:tdsman_windows_app/custom_widget/textField.dart';
  
 
class SalaryDetails extends StatefulWidget {  
  @override
  _SalaryDetailsState createState() => _SalaryDetailsState();
}

class _SalaryDetailsState extends State<SalaryDetails> {
  final ValueNotifier<double> _total1 = ValueNotifier<double>(0.00);
  final ValueNotifier<double> _total2 = ValueNotifier<double>(0.00);
  final ValueNotifier<double> _total3 = ValueNotifier<double>(0.00);
  TextEditingController totalController = TextEditingController(); 
  TextEditingController totalController2 = TextEditingController(); 
  TextEditingController totalController3 = TextEditingController();  
  List<TextEditingController> controller = [];
  @override
  void initState() {
    controller.add(totalController);
    controller.add(totalController2);
    controller.add(totalController3); 
   totalController.text = "0.00";
   totalController2.text = "0.00";
   totalController3.text = "0.00";  
   super.initState();
  }
 
 @override
  void dispose() {  
    totalController.dispose();
    super.dispose();
  }
 
  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.all(10),
      width: double.infinity,
      child: Column(children: [ 
        displayFields(context),
        Expanded(
                  child: Row(children: [  
                Column(
                   children: [
                     displayFields1(context), 
                     displayFields2(context,controller,_total1,_total2,_total3),
                     
                   ],
                 ),   
                 displayTable(context),
             ],),
        ), 

      footer(context)
      ],),
      );
  }
}

Widget displayFields(BuildContext context)=>Row(
  children: [
           Expanded(
                        child: Container(width: MediaQuery.of(context).size.width*0.4,
    
                      padding: EdgeInsets.all(5),
    
                      decoration: BoxDecoration(
    
                        border: Border.all(
    
                          color: Colors.black38,
    
                        ),
    
                        color: Colors.grey[200],
    
                      ),
    
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    
                        children: [
     
                   textBox( context,
                              "Financial Year",
                              "2020-21",
                              10.0,
                              0.1
                            ),
     
                   textBox( context,
                              "Quater",
                              "Q4",
                              10.0,
                              0.05
                            ), 
                  textBox( context,
                              "Company",
                              "GOVERNMENT SECONDARY SCHOOL ADWAD",
                              10.0,
                              0.3
                            ),
     
    
                      ],),
    
                      ),
           ),
     
  ],
);
 

Widget footer(BuildContext context)=>  Column(
        children: [
          Divider(thickness: 3,color: Colors.grey,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Wrap(
                children: [
                  CustomButton(
                    onPressed: () {},
                    buttonName: "Save",
                    verticalPad: 10,
                    horizontalPad: 20,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CustomButton(
                    onPressed: () {},
                    buttonName: "Cancel",
                    verticalPad: 10,
                    horizontalPad: 20,
                  ),
                ],
              ),
              Wrap(
                children: [
                  CustomButton(
                    onPressed: () {},
                    buttonName: "Missing PANs",
                    verticalPad: 10,
                    horizontalPad: 20,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CustomButton(
                    onPressed: () {},
                    buttonName: "Edit",
                    verticalPad: 10,
                    horizontalPad: 20,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CustomButton(
                    onPressed: () {},
                    buttonName: "Search",
                    verticalPad: 10,
                    horizontalPad: 20,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CustomButton(
                    onPressed: () {},
                    buttonName: "Delete",
                    verticalPad: 10,
                    horizontalPad: 20,
                  ),  SizedBox(
                    width: 20,
                  ),
                  CustomButton(
                    onPressed: () {},
                    buttonName: "Refresh",
                    verticalPad: 10,
                    horizontalPad: 20,
                  ),
                ],
              ),
              CustomButton(
                onPressed: () {},
                buttonName: "Challan & Employee Entry",
                verticalPad: 10,
                horizontalPad: 20,
              ),
            ],
          ),
         
        ],
      );
         
        Widget customText(String text,bool isbold,[color=Colors.black]) => Padding(
        padding: const EdgeInsets.all(4.5),
        child: CustomText(
          text: text,
          color: color,
          bold: isbold,
        ),)
      ;

        Widget customField(BuildContext context,widthFactor, validator, saved,maxlength,[align=TextAlign.left,initval,controller,onchanged]) =>
      Container( 
        padding: const EdgeInsets.all(1.5),
        width: MediaQuery.of(context).size.width * widthFactor,
        child: CustomField(align: align, initval: initval,onChanged: onchanged,
          validator: validator,maxlength: maxlength,
          onSaved: saved,
          controller: controller,
        ),
      );
       

      Widget  displayFields1(BuildContext context)=>  
               Container( margin: EdgeInsets.only(bottom: 2),
                 width: MediaQuery.of(context).size.width*0.6,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(
                        ), 
                      ),child: 
                      Column(
                        children: [
                              field1(context),  
                              field2(context),
                              field3(context)
                        ],
                      ),
        
      );
      
      Widget displayTable(BuildContext context){
        return    Expanded(
                  child: Container(margin: EdgeInsets.only(top: 5,left: 10,bottom: 15), padding: EdgeInsets.all(5),
                      width: MediaQuery.of(context).size.width*0.20,
                      decoration: BoxDecoration( color:Colors.grey[200],
                        border: Border.all(
                        ), 
                      ),child: Column(crossAxisAlignment: CrossAxisAlignment.center
                      ,  children: [
                          Row(children: [
                            Expanded(  child: Container(alignment: Alignment.center,decoration: BoxDecoration(  color: Colors.white,
                              border: Border.all(
                              ), 
                          ),child: customText("Salary Details", true),),
                            )
                          ],),
                        ],
                      ),),
        );
      }

      Widget field1(BuildContext context)=>Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [ 
          textBox(context,"Srl No.","34",10.0,0.05 ),  
          reuseFields(context,"Name [329]",true,0.2, (val){}, (val){},20,TextAlign.right,0.0) , 
          reuseFields(context,"PAN [328]",true,0.1, (val){}, (val){},10,TextAlign.right,0.0) ,  
          Checkbox( onChanged: (val){},value: false)
        ],
      );

        Widget field2(BuildContext context)=> Row(children: [          
          customText( "Cat [330]",true),
          CDropDown(menuList: ['G-General'],widthFactor: 0.2,), 
          Spacer(), 
          reuseFields(context,"From Dt",true,0.07, (val){}, (val){},20,TextAlign.right,10.0,"DD/MM/YY") ,   
          reuseFields(context,"To Dt",true,0.07, (val){}, (val){},20,TextAlign.right,10.0,"DD/MM/YY") ,   
        ],);
        
        Widget field3(context) =>  Row(
          children: [
            reuseContainer(radio(), EdgeInsets.only(left:20)), 
            Spacer(),
             Checkbox( onChanged: (val){},value: true),
             customText("Taxation u/s 115BAC?", true)
          ],
        );

        Widget radio()=> Row(
           children:[ Radio(value: true,onChanged: (val){},
            activeColor: Colors.black,
            groupValue: true,
            ),
            customText("Enter Mandatory Fields only",true)
           ,]  
           
        );
        Widget textBox(context,text1,text2,swidth,cwidthfactor )=>Row(children: [
       customText(text1,true),
       SizedBox(width:swidth),
         Container(width: MediaQuery.of(context).size.width*cwidthfactor,
        
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(3),
      ),child: customText(text2,true),)
     ],);

         Widget displayFields2(BuildContext context,controller,_total1,_total2,_total3)=>Expanded( 
                      child:  
                            Container( margin: EdgeInsets.only(bottom: 15),
                            width: MediaQuery.of(context).size.width*0.6,  padding: EdgeInsets.all(5), 
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                                border: Border.all(
                                ), 
                              ),child: Scrollbar(isAlwaysShown: true, thickness: 5,
                              showTrackOnHover: true,
                               child: ListView(children: [
                             reuseContainer(mainBox(context,controller,_total1,_total2,_total3),EdgeInsets.only(left: 20,right:15),EdgeInsets.only(bottom: 5)),
                                   
                                   ],)
                              
                                ,), 
      ),  
         );
         Widget mainBox(context,controller, _total1,_total2,_total3)=>Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [  
                                   customText("Total Salary",true), 
                                   reuseContainer( firstBox(context,controller,_total1,_total2,_total3),EdgeInsets.only(left: 10,right:80)),
                                    
                                    reuseContainer( secondBox(context),EdgeInsets.only(left: 10,right:80,top: 10)),
                                    reuseContainer( subsecondBoxFpart(context ),EdgeInsets.only(left: 10,right:80,top: 10))

                                 ]);

         Widget firstBox(context,controller ,_total1,_total2,_total3){ 
           return  Row(crossAxisAlignment: CrossAxisAlignment.start,
             children: [
              subfirstTextBox( ),
              subfirstFieldBox(context,controller,  _total1,_total2,_total3),
              Spacer(),
              subfirstTotalBox(context,controller,_total1,_total2,_total3)
             ],
           );
         }
         Widget subfirstTextBox( )=> Column(crossAxisAlignment: CrossAxisAlignment.start,
         mainAxisAlignment: MainAxisAlignment.start,
                                 children: [
                                 customText("1. Gross Salary",false),
                                 customText("(a) Sec17(1) - Salary", false),
                                 customText("(b) Sec 17(2) - Value of perquisites", false),
                                 customText("(c) Sec 17(3) - Profits in lieu of salary", false),  
                                 ],
                                 );


              Widget subfirstFieldBox(context,controller,_total1,_total2,_total3)=>  
               Column(children: [ 
                 SizedBox(height: 25,),
                    customField(context,0.15,(val){},(val){}, 13,TextAlign.right,null,controller[0] ), 
                    customField(context,0.15,(val){},(val){}, 13,TextAlign.right,null,controller[1] )  ,
                     
                    customField(context,0.15,(val){},(val){}, 13,TextAlign.right,null,controller[2] ) ,
                     
                  ], 
             
                );    
              
         Widget subfirstTotalBox(context,controller,_total1,_total2,_total3)=> Column( 
                                      children: [ 
                                        SizedBox(height: 60,),
                                         customText('(d) Total',true) ,  
                                        AnimatedBuilder(animation: Listenable.merge([controller[0],controller[1],controller[2]]),builder: (BuildContext context,_){
                                          
                                          return  Container(alignment: Alignment.center,width: 130, 

                                          child: customText( (double.parse(controller[0].text==''?"0.00":controller[0].text)+double.parse(controller[1].text==''?"0.00":controller[1].text)+double.parse(controller[2].text==''?"0.00":controller[2].text)).toString() ,true,Colors.indigoAccent[700],) ) ;
                                        },
                                        ), 
                                      ],
                                    );
        Widget secondBox(context ){ 
           return  Row(crossAxisAlignment: CrossAxisAlignment.start,
             children: [
              subsecondBoxTextBox(context),
              subsecondBoxFieldBox(context ),
              Spacer(), 
             ],
           );
         }
         Widget subsecondBoxTextBox(context)=> Column(crossAxisAlignment: CrossAxisAlignment.start,
         mainAxisAlignment: MainAxisAlignment.start,
                                 children: [
                                 customText("2. Lesss : Allowance under section 10",false),
                                 customText("(a) Section 10(5)-Travel concession or assistance",false),
                                 customText("(b) Sec 10(10)-Death cum Retiremenet Gratuity", false),
                                 customText("(c) Sec 10(10A) - Commuted value of pension", false),  
                                 customText("(d) Sec 10(10AA)- Cash equivalent of leave", false),  
                                 customText("(e) Sec 10(13A)-House Rent Allowance", false),   
                                 ],
                                 );
 
              Widget subsecondBoxFieldBox(context )=>  
               Column(children: [ 
                 SizedBox(height: 25,),
                    customField(context,0.15,(val){},(val){}, 13,TextAlign.right,null,  ), 
                    customField(context,0.15,(val){},(val){}, 13,TextAlign.right,null,  )  ,
                    customField(context,0.15,(val){},(val){}, 13,TextAlign.right,null,  )  ,
                    customField(context,0.15,(val){},(val){}, 13,TextAlign.right,null,  )  , 
                    customField(context,0.15,(val){},(val){}, 13,TextAlign.right,null,  ) , 
                     
                  ], 
             
                );    
              
        
        Widget subsecondBoxFpart(context)=>Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
            customText("(f) Amount of any other exemption under Section 10", false,Colors.grey[500]),  
                                     
                    Row( mainAxisAlignment: MainAxisAlignment.spaceAround,children: [ customText("Description", false,Colors.grey[500]),  customText("Amount", false,Colors.grey[500]), ],),
                    Row(mainAxisAlignment: MainAxisAlignment.center,children: [customField(context,0.2,(val){},(val){}, 13,TextAlign.right,null,  ),
                    customField(context,0.1,(val){},(val){}, 13,TextAlign.right,null  ), ],),
                    Row( mainAxisAlignment: MainAxisAlignment.center,children: [ 
                    customField(context,0.2,(val){},(val){}, 13,TextAlign.right,null,  ),  
                    customField(context,0.1,(val){},(val){}, 13,TextAlign.right,null,  ),  ],),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [ 
                    customField(context,0.2,(val){},(val){}, 13,TextAlign.right,null,  ),  
                    customField(context,0.1,(val){},(val){}, 13,TextAlign.right,null,  ),  ],),
                    
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [ 
                    customField(context,0.2,(val){},(val){}, 13,TextAlign.right,null,  ),  
                    customField(context,0.1,(val){},(val){}, 13,TextAlign.right,null,  ),  ],),
                    
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [ 
                    customField(context,0.2,(val){},(val){}, 13,TextAlign.right,null,  ),  
                    customField(context,0.1,(val){},(val){}, 13,TextAlign.right,null,  ),  ],) 
                             
                                 
                                    ]);
        

         Widget reuseContainer(Widget child,[margin,padding])=>  Container( margin:margin,padding:padding,
                            decoration: BoxDecoration(
                            color: Colors.grey[200],
                            border: Border.all(color:  Colors.grey.withOpacity(0.5),
                            ),
                             ),
                             child:child);


     Widget reuseFields(context,text,isbold,widthfact,validator,onsaved,maxlength,align,width,[initval,controller])=>Row(children: [
       customText(text,isbold),
       SizedBox(width:width),
       customField(context,widthfact,validator,onsaved,maxlength,align,initval,controller) 
     
     ],);

                             
