import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:get/get.dart';

class EditProfileController extends GetxController{

  static EditProfileController get to => Get.find();

  FilePickerResult? result;
  File? uploadedDoc;
  File? profileImage;
  String dropdownvalue = 'dropdownvalue';

  List<String> items = [
    'Document 1',
    'Document 3',
    'Document 3',
    'Document 4',
    'Document 5',
  ];

  void updateProfile()async{
    result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['jpg', 'pdf', 'doc'],
    );
    List<File> files = result!.paths.map((path) => File(path!)).toList();
    profileImage = files[0];
  }

  void uploadDoc()async{
    result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['jpg', 'pdf', 'doc'],
    );
    List<File> files = result!.paths.map((path) => File(path!)).toList();
    uploadedDoc = files[0];
  }
}