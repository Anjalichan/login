import 'package:flutter/material.dart';
void main()
{
  runApp(MyApp());
}
class MyApp  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginUp(),   
    );
  }
}
class LoginUp extends StatelessWidget{
// const SignUp({ Key key }) : super(key: key);
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar : AppBar(title: Text("Login" ,style:TextStyle(fontSize: 40)),
      backgroundColor: Colors.black,
      leading: IconButton(onPressed: (){},
      icon: Icon(Icons.arrow_back_ios),color: Colors.white
      ),
      ),
      backgroundColor: Colors.black,
      body: Column(
        children:[
          Container(
            padding: EdgeInsets.only(top:40,left: 15),
            child : Text("Sign up with one of following option",style : TextStyle(color:Colors.white))
          ),
          SizedBox(height:30,width: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
             /* new Image.asset(
                'res/images/icons/google/btn_google_dark_normal_mdpi.9.png',
                height: 48.0,
              ),*/
              Container(
                child: CircleAvatar(radius: 50,
                    child: Image.network(
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_SQ3suwV52iz2LU0RMbP1Y0LwGTZLabmRlFd8_DdmN7p8VJhO1RQkwdVQQcwefVZTtj0&usqp=CAU",),
                     backgroundColor: Colors.black,
                    ),
                  
                height:60,width:190,
                decoration: BoxDecoration(
                  borderRadius:BorderRadius.circular(10),
                  border: Border(
                    left:BorderSide(width: 1.3,color:Colors.grey),
                    right: BorderSide(width: 1.3,color: Colors.grey),
                    top: BorderSide(width:1.3,color:Colors.grey),
                    bottom: BorderSide(width:1.3,color:Colors.grey),
                  ),
                   
              ),
              
                ),
                
                 Container(
                   padding: EdgeInsets.all(10),
           child: CircleAvatar(
             radius: 10,
             child: Image.network("data:image/png;base64,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"),
           backgroundColor: Colors.black,
           ),
                  height:50,width:190,
                decoration: BoxDecoration(
                  borderRadius:BorderRadius.circular(10),
                  border: Border(
                    left:BorderSide(width: 1.3,color:Colors.grey),
                    right: BorderSide(width: 1.3,color: Colors.grey),
                    top: BorderSide(width:1.3,color:Colors.grey),
                    bottom: BorderSide(width:1.3,color:Colors.grey),
                  ),
                ),

                )

            ]
          ),
          SizedBox(height:25),
           Container(
            padding:EdgeInsets.only(left:20),
            alignment:Alignment.centerLeft,
            child:Padding(padding: const EdgeInsets.all(10),
            child: Text("Email",style: TextStyle(color:Colors.white),),
            ),
          ),
          Padding(
            padding:const EdgeInsets.all(10),
            child:Container(
              decoration: BoxDecoration(
                borderRadius:BorderRadius.circular(20),
                color:Colors.black,
                border:Border.all(color:Colors.grey)
              ),
             // padding: EdgeInsets.all(10),
              child:Container(
                decoration:BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black,
                  border: Border.all(color:Colors.grey)
                 ),//
                 padding: EdgeInsets.all(10),
                 height: 70,width: 500,
                 child: TextFormField(
                   style: TextStyle(color:Colors.white),
                   decoration: InputDecoration(
                     fillColor: Colors.grey,
                     focusColor: Colors.grey,
                     hintText: "username@gmail.com",hintStyle: TextStyle(color:Colors.grey),
                     labelStyle: TextStyle(color:Colors.white),
                     focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                     borderSide: const BorderSide(color: Colors.transparent,width:2),
                     )
                   ),
                 ),
              ),

            ),
            
          ),
          Container(
            padding:EdgeInsets.only(left:20),
            alignment:Alignment.centerLeft,
            child:Padding(
              padding: const EdgeInsets.all(10),
              child: Text("Password",style:TextStyle(color:Colors.white,),),
            ),
            ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              decoration:BoxDecoration(borderRadius:BorderRadius.circular(20),color:Colors.black,border:Border.all(color:Colors.grey)),
              padding: EdgeInsets.all(10),
              height: 50,width: 500,
              child: TextFormField(
                cursorColor: Colors.transparent ,
                style:TextStyle(color:Colors.white),
                decoration: InputDecoration(hintText:"strong password",hintStyle: TextStyle(color:Colors.grey),
                focusedBorder: OutlineInputBorder(
                  borderRadius:BorderRadius.circular(10) ,
                  borderSide: const BorderSide(color:Colors.transparent,width:2.5),
                  )
                ),
              ),
            ),
          ),
            SizedBox(height:30,width: 20,),
     Container(height: 50.0,
     child: RaisedButton(
    onPressed: () {},
   // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
    padding: EdgeInsets.all(0.0),
    child: Ink(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.deepPurple,Colors.pink],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
         // borderRadius: BorderRadius.circular(30.0)
      ),
      child: Container(
        constraints: BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
        alignment: Alignment.center,
        child: Text(
          "Create Account",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white
          ),
        ),
      ),
    ),
  ),
  
  
  
            
        

  ) ,
SizedBox(height:10),
Row(
  mainAxisAlignment:MainAxisAlignment.center,
  children:[
    Text("Don't have an account?",
    style: TextStyle(
      color:Colors.white,
      fontWeight: FontWeight.normal),
    ),
    Text("Login in",style:TextStyle(color: Colors.white,fontWeight: FontWeight.w600))
  ]
)
      
  

          

        
        ],
        
      ),
      );
      
  }
  }


      