import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());//Application
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    //return const MaterialApp /// const not use for theme
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      darkTheme: ThemeData(primarySwatch: Colors.grey),
      color: Colors.blue,
      debugShowCheckedModeBanner: false,
      home: HomeActvity(),);
  }
}



class HomeActvity extends StatelessWidget{
  const HomeActvity({super.key});


  MySnakbar(message,context){
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message))
    );

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Text("Inventory App"),
          titleSpacing: 10, //titleSpacing: 250,
          //centerTitle: true,
          toolbarHeight: 60,
          toolbarOpacity: 1, //toolbarOpacity: 0.5,
          elevation: 0, //elevation: 10,
          backgroundColor: Colors.green,
          actions: [
            //IconButton(onPressed: (){}, icon: Icon(Icons.comment)),
            IconButton(onPressed: (){MySnakbar("I am Connents", context);}, icon: Icon(Icons.comment)),
            SizedBox(width: 1,),
            IconButton(onPressed: (){MySnakbar("I am Search", context);}, icon: Icon(Icons.search)),
            SizedBox(width: 1,),
            IconButton(onPressed: (){MySnakbar("I am Settings", context);}, icon: Icon(Icons.settings)),
            SizedBox(width: 1,),
            IconButton(onPressed: (){MySnakbar("I am Email", context);}, icon: Icon(Icons.email)),
            SizedBox(width: 1,),
            IconButton(onPressed: (){MySnakbar("I am Person", context);}, icon: Icon(Icons.person)),

          ],


        ),

        floatingActionButton: FloatingActionButton(
          elevation: 10,
          child: Icon(Icons.add),
          backgroundColor: Colors.green,
          onPressed: (){
            MySnakbar("I am afloating action button", context);
          },
        ),





        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.message),label: "Contact"),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
          ],
          onTap: (int index){
            if (index ==0){
              MySnakbar("I am home bottom menu", context);
            }


            if (index ==1){
              MySnakbar("I am contact bottom menu", context);
            }


            if (index ==2){
              MySnakbar("I am profile bottom menu", context);
            }

          },
        ),



        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                //child: Text("Hasibul Islam")
                  child: UserAccountsDrawerHeader(
                    accountName: Text("Hasibul Islam",style: TextStyle(color: Colors.black),),
                    accountEmail: Text("Hasibul@gmail.com",style: TextStyle(color: Colors.black),),
                    decoration: BoxDecoration(color: Colors.amber),
                    currentAccountPicture: Image.network("https://raw.githubusercontent.com/github/explore/cebd63002168a05a6a642f309227eefeccd92950/topics/flutter/flutter.png"),
                    onDetailsPressed: (){
                      MySnakbar("This Is My Profile", context);
                    },
                  )
              ),



              //ListTile(title: Text("Home"),),
              //ListTile(title: Text("Home"),leading: Icon(Icons.home),),
              //ListTile(leading: Icon(Icons.home),title: Text("Home"),onTap: (){MySnakbar("Home", context);},),

              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                onTap: (){MySnakbar("I am Home", context);},
              ),


              ListTile(
                  leading: Icon(Icons.contact_mail),
                  title: Text("Contact"),
                  onTap: (){MySnakbar("I am Contact", context);}
              ),


              ListTile(leading: Icon(Icons.person),
                  title: Text("Profile"),
                  onTap: (){MySnakbar("I am Profile", context);}
              ),


              ListTile(leading: Icon(Icons.email),
                  title: Text("Email"),
                  onTap: (){MySnakbar("I am Email", context);}
              ),


              ListTile(leading: Icon(Icons.phone),
                  title: Text("Phone"),
                  onTap: (){MySnakbar("I am Phone", context);}
              ),
            ],
          ),

        ),

        endDrawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                //child: Text("Hasibul Islam")
                  child: UserAccountsDrawerHeader(
                    accountName: Text("Hasibul Islam",style: TextStyle(color: Colors.black),),
                    accountEmail: Text("Hasibul@gmail.com",style: TextStyle(color: Colors.black),),
                    decoration: BoxDecoration(color: Colors.amber),
                    currentAccountPicture: Image.network("https://raw.githubusercontent.com/github/explore/cebd63002168a05a6a642f309227eefeccd92950/topics/flutter/flutter.png"),
                    onDetailsPressed: (){
                      MySnakbar("This Is My Profile", context);
                    },
                  )
              ),



              //ListTile(title: Text("Home"),),
              //ListTile(title: Text("Home"),leading: Icon(Icons.home),),
              //ListTile(leading: Icon(Icons.home),title: Text("Home"),onTap: (){MySnakbar("Home", context);},),

              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                onTap: (){MySnakbar("I am Home", context);},
              ),


              ListTile(
                  leading: Icon(Icons.contact_mail),
                  title: Text("Contact"),
                  onTap: (){MySnakbar("I am Contact", context);}
              ),


              ListTile(leading: Icon(Icons.person),
                  title: Text("Profile"),
                  onTap: (){MySnakbar("I am Profile", context);}
              ),


              ListTile(leading: Icon(Icons.email),
                  title: Text("Email"),
                  onTap: (){MySnakbar("I am Email", context);}
              ),


              ListTile(leading: Icon(Icons.phone),
                  title: Text("Phone"),
                  onTap: (){MySnakbar("I am Phone", context);}
              ),
            ],
          ),

        ),





        body: Center(
            child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5RJTb5kkPsWrJAL_6skT7i7PZYUkN7270H6G33-VX5h3WoIRwfhWn3lhvyUiWk6oUNMg&usqp=CAU')
        )

    );
  }

}