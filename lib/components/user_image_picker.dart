// ignore_for_file: depend_on_referenced_packages

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class UserImagePicker extends StatefulWidget {
  final void Function(File image) onImagePick;

  const UserImagePicker({
    super.key,
    required this.onImagePick,
  });

  @override
  State<UserImagePicker> createState() => _UserImagePickerState();
}

class _UserImagePickerState extends State<UserImagePicker> {
  File? _image;

  Future<void> _pickImage(ImageSource source) async {
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(
      source: source,
      imageQuality: 50,
      maxWidth: 150,
    );

    if (pickedImage != null) {
      setState(() {
        _image = File(pickedImage.path);
      });

      widget.onImagePick(_image!);
    }
  }

  Future<void> _showSelectionDialog(BuildContext context) async {
    return await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Selecionar Imagem'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                GestureDetector(
                  child: const Text('Câmera'),
                  onTap: () {
                    _pickImage(ImageSource.camera);
                    Navigator.of(context).pop();
                  },
                ),
                const Padding(padding: EdgeInsets.all(8.0)),
                GestureDetector(
                  child: const Text('Galeria'),
                  onTap: () {
                    _pickImage(ImageSource.gallery);
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 40,
          backgroundColor: Colors.grey,
          backgroundImage: _image != null ? FileImage(_image!) : null,
        ),
        TextButton(
          onPressed: () {
            _showSelectionDialog(context);
          },
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.image,
              ),
              SizedBox(width: 10),
              Text('Adicionar Imagem'),
            ],
          ),
        ),
      ],
    );
  }
}

// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';

// class UserImagePicker extends StatefulWidget {
//   final void Function(File image) onImagePick;

//   const UserImagePicker({
//     super.key,
//     required this.onImagePick,
//   });

//   @override
//   State<UserImagePicker> createState() => _UserImagePickerState();
// }

// class _UserImagePickerState extends State<UserImagePicker> {
//   File? _image;

//   Future<void> _pickImage() async {
//     final picker = ImagePicker();
//     final pickedImage = await picker.pickImage(
//       source: ImageSource.gallery,
//       imageQuality: 50,
//       maxWidth: 150,
//     );

//     if (pickedImage != null) {
//       setState(() {
//         _image = File(pickedImage.path);
//       });

//       widget.onImagePick(_image!);
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         CircleAvatar(
//           radius: 40,
//           backgroundColor: Colors.grey,
//           backgroundImage: _image != null ? FileImage(_image!) : null,
//         ),
//         TextButton(
//           onPressed: _pickImage,
//           child: const Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Icon(
//                 Icons.image,
//               ),
//               SizedBox(width: 10),
//               Text('Adicionar Imagem'),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }
