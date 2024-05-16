import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
class ImageUpload extends StatefulWidget {
  const ImageUpload({super.key});

  @override
  State<ImageUpload> createState() => _ImageUploadState();
}
ImagePicker imagePicker = ImagePicker();
File? fileImage;
class _ImageUploadState extends State<ImageUpload> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: Color(0xff2196F3)
          ),
          backgroundColor: Color(0xff2196F3),
          title: Text('Image Picker',style: TextStyle(color: Colors.white,fontSize:25),),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
              child: Container(
                height: 350,
                width: 330,
                decoration: BoxDecoration(
                    image: (fileImage != null)
                        ? DecorationImage(image:FileImage(fileImage!),fit: BoxFit.cover)
                        : DecorationImage(image: AssetImage('Assets/Image/ImagePicker.jpg'),fit: BoxFit.cover),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(onPressed: ()async{
                  XFile? xFileimage = await imagePicker.pickImage(source: ImageSource.camera);
                  setState(() {
                    fileImage = File(xFileimage!.path);
                  });
                }, icon: Icon(Icons.camera_alt,size: 60,)),
                IconButton(onPressed: ()async{
                  XFile? xFileimage = await imagePicker.pickImage(source: ImageSource.gallery);
                  setState(() {
                    fileImage = File(xFileimage!.path);
                  });
                }, icon: Icon(Icons.photo,size: 60,))
              ],
            ),
            Container(
              height: 50,
              width: 340,
              decoration: BoxDecoration(
                  color: Color(0xff2196F3),
                  borderRadius: BorderRadius.circular(5)
              ),
              child: Center(child: Text('Upload Me',style: TextStyle(fontSize: 20,color: Colors.white),)),
            ),
          ],
        ),
      ),
    );
  }
}






// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'dart:io';
//
// class UploadImagePicker extends StatefulWidget {
//   const UploadImagePicker({super.key});
//
//   @override
//   State<UploadImagePicker> createState() => _UploadImagePickerState();
// }
//
// ImagePicker imagePicker = ImagePicker();
//
// File? fileimage;
//
// class _UploadImagePickerState extends State<UploadImagePicker> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.blue,
//         centerTitle: true,
//         title: Text(
//           'Image Picker',
//           style: TextStyle(color: Colors.white),
//         ),
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           Center(
//             child: Container(
//               height: 350,
//               width: 350,
//               decoration: BoxDecoration(
//                 image: (fileimage != null)
//                     ? DecorationImage(image: FileImage(fileimage!),fit: BoxFit.cover)
//                     : null,
//                 color: Colors.blue,
//
//               ),
//             ),
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               IconButton(
//                   onPressed: () async {
//                     XFile? xFileimage =
//                     await imagePicker.pickImage(source: ImageSource.camera);
//                     setState(() {
//                       fileimage = File(xFileimage!.path);
//                     });
//                   },
//                   icon: Icon(
//                     Icons.camera_alt,
//                     color: Colors.black,
//                     size: 70,
//                   )),
//               IconButton(
//                   onPressed: () async {
//                     XFile? xFileimage = await imagePicker.pickImage(
//                         source: ImageSource.gallery);
//                     setState(() {
//                       fileimage = File(xFileimage!.path);
//                     });
//                   },
//                   icon: Icon(
//                     Icons.image,
//                     color: Colors.black,
//                     size: 70,
//                   ))
//             ],
//           ),
//           Container(
//             height: 60,
//             width: 380,
//             decoration: BoxDecoration(
//               color: Colors.blue,
//             ),
//             child: Center(
//               child: Text(
//                 'Upload Me',
//                 style: TextStyle(color: Colors.white, fontSize: 25),
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
