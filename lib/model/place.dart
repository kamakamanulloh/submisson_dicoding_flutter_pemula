import 'dart:ui';

class Place {
  String title;
  String alamat;
  String imageUrl;
  String navigasi;
  double height;
  String deskripsi;





  Place({
     this.title,
    this.alamat,
    this.imageUrl,
    this.navigasi,
    this.height,
    this.deskripsi});
}


Color mBackgroundColor = Color(0xFFFEFEFE);

Color mPrimaryColor = Color(0xFFf36f7c);

Color mSecondaryColor = Color(0xFFfff2f3);


var placeList = [
  Place(title:"PONDOK PESANTREN TEBUIRENG",
      alamat:"Jl. Irian Jaya No. 10 Tebuireng - CUKIR - DIWEK",
      imageUrl:"assets/images/tebuireng.png",
      navigasi:"https://goo.gl/maps/paQRWcKjnGmRNoQD7",
      height:240,
      deskripsi:"Pesantren ini didirikan oleh KH. Hasyim Asy'ari pada tahun 1899. Selain materi pelajaran mengenai pengetahuan agama Islam, ilmu syari’at, dan bahasa Arab, pelajaran umum juga dimasukkan ke dalam struktur kurikulum pengajarannya. Pesantren Tebuireng telah banyak memberikan konstribusi dan sumbangan kepada masyarakat luas baik, terutama dalam dunia pendidikan Islam di Indonesia."),
  Place(title:"PONDOK PESANTREN BAHRUL ULUM TAMBAK BERAS",
      alamat:"Jl. Kyai Haji Wahab Hasbullah, Tambak Rejo, Kec. Jombang, Kabupaten Jombang, Jawa Timur 61451",
      imageUrl:"assets/images/tambakberas.png",
      navigasi:"https://goo.gl/maps/9d4AQcCbhqMN1Hyu8",
      height: 200
      ,deskripsi:"Pondok Pesantren Bahrul Ulum Tambakberas Jombang merupakan salah satu pondok pesantren dan terbesar di Jawa Timur. Hingga saat ini pondok ini masih bertahan di tengah-tengah kecenderungan kuat sistem pendidikan formal."),
  Place(title:"PONDOK PESANTREN MAMBA'UL MA'ARIF DENANYAR"
      ,alamat: "Jl. KH. Bisri Syansuri, Denanyar Selatan, Denanyar, Kec. Jombang, Kabupaten Jombang, Jawa Timur 61419",
      imageUrl:"assets/images/mambaularif.png",
      navigasi:"https://goo.gl/maps/dRx3VUuED86NhuKi8",
      height:120
      ,deskripsi:"Ponpes Denanyar dirintis oleh KH Bisri Syansuri (Mbah Bisri) sekitar tahun 1917. Beliau adalah ulama kelahiran Jawa Tengah. Seusai menimba ilmu agama, beliau mendirikan ponpes di desa Denanyar. Pada awalnya ponpes hanya dikhususkan bagi santri putra."),
  Place(title:"PONDOK PESANTREN DARUL ULUM PETERONGAN"
      ,alamat: "Desa Rejoso, Kecamatan Peterongan, Jombang, Jawa Timur",
      imageUrl:"assets/images/pondok-induk.png",
      navigasi:"https://goo.gl/maps/8rZDM5KTEXgRqKLSA",
      height:200
      ,deskripsi:"Pesantren yang dirintis pertama kali oleh KH. Tamim Irsyad pada tahun 1885 ini dengan upaya serta kerja keras sehingga terwujudlah salah satu lembaga pendidikan islam yaitu Pondok Pesantren Darul 'Ulum (Rejoso) yang secara bahasa Darul berarti Gudangsedangkan 'Ulum, jamak dari ilmu yang berarti ilmu-ilmu, sehingga secara garis besar Darul 'Ulum memiliki arti “Gudangnya Ilmu-ilmu”, yang filosofinya tampak jelas dalam nama pondok pesantren tersebut. Sehingga, sampai detik ini Pondok Pesantren Darul 'Ulum (Rejoso) masih dipercaya untuk mengayomi para santri dari penjuru Nusantara kurang lebih sekitar 5000 santri yang menimba ilmu di sana."),
  Place(title:"PONDOK PESANTREN LUHUR NUR HASAN  PERAK",
      alamat:"desa Gading Mangu Perak, Jombang, Jawa Timur",
      imageUrl:"assets/images/luhurhasan.png",
      navigasi:"https://goo.gl/maps/FQASAA3tTjiqUssH6",
      height:240
      ,deskripsi:"Pondok Pesantren Gading Mangu Perak Jombang adalah salah satu pusat pendidikan agama Islam terbesar di Indonesia, yang menekankan pada pengajaran Al Quran dan Al Hadist serta pembentukan akhlakul karimah generasi muda. Pondok Pesantren ini berada di desa Gading Mangu Perak, Jombang, Jawa Timur, berlokasi 400 meter masuk ke utara Pasar Jeruk, Kecamatan Perak, Kabupaten Jombang."),
  Place(title:"Pondok Pesantren Al-Munawaroh",
      alamat: " Dusun Ngempak, Desa Ngudirejo, Diwek, Jombang, Jawa Timur.",
      imageUrl:"assets/images/almunawaroh.png",
      navigasi:"https://goo.gl/maps/R5hihsCsTQbpNo676",
      height:150
      ,deskripsi:"Pondok pesantren ini berlokasi di Dusun Ngempak, Desa Ngudirejo, Diwek, Jombang, Jawa Timur. Dibanding pondok-pondok sebelumnya, Pondok Pesantren Al-Munawaroh Jombang terbilang baru. Didirikan pada tahun 1997 atas prakarsa dari beberapa kiai yang berada di Provinsi Jawa Timur. Saat ini pengasuhnya adalah Dr. KH. Mohammad Farid Zaini."),
];
