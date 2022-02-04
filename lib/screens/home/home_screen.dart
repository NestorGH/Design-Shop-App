import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app_design/constants.dart';
import 'package:shop_app_design/screens/components/categories.dart';
import 'package:shop_app_design/screens/components/new_arrival.dart';
import 'package:shop_app_design/screens/components/popular_category.dart';
import 'package:shop_app_design/screens/components/search_form.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset("assets/icons/menu.svg"),
        ),
        //Titulo del appBar
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/icons/Location.svg"),
            const SizedBox(width: defaultPadding / 2),
            Text(
              "Mi casita 1/2 al oeste",
              style:
                  Theme.of(context).textTheme.subtitle2, //Tamano del subtitulo
            )
          ],
        ),
        actions: [
          //Basicamente una lista de widget despues de un titulo
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/Notification.svg"),
          )
        ],
      ),
      //***************  Contenido debajo del Appbar  ***************
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(
            defaultPadding), //Padding para que todos los widget hijos esten igual
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Explore",
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(fontWeight: FontWeight.w500, color: Colors.black),
            ),
            const Text(
              "Best outfits for you",
              style: TextStyle(fontSize: 18),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: defaultPadding),
              child: SearchForm(), //  La barra de busqueda
            ),
            //******************   EL SLIDER de Categorias ***************************/
            const Categories(),
            //****************     Titulo de secciones ************** */
            const SizedBox(height: defaultPadding),
            //*************   Las imagenes con precio ************* */
            const NewArrival(),
            const SizedBox(height: defaultPadding),
            const Popular(),
          ],
        ),
      ),
    );
  }
}
