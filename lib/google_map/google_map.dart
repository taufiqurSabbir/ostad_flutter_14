import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMap23 extends StatefulWidget {
  const GoogleMap23({super.key});

  @override
  State<GoogleMap23> createState() => _GoogleMap23State();
}

class _GoogleMap23State extends State<GoogleMap23> {
  late final GoogleMapController _googleMapController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
          mapType: MapType.normal,
          zoomGesturesEnabled: true,
          zoomControlsEnabled: true,
          myLocationButtonEnabled: true,
          myLocationEnabled: true,
          trafficEnabled: true,
          initialCameraPosition: CameraPosition(
              zoom: 16, target: LatLng(23.831961462126046, 90.41549593548098)),
      onMapCreated: (GoogleMapController controller){
            _googleMapController = controller;
    },
        onTap: (LatLng latLng){
            print(latLng);
        },

        markers: <Marker>{
            Marker(
              markerId: MarkerId('home'),
              position: LatLng(23.829537167800538, 90.41550669819117),
              onTap: (){

              },
              visible: true,
              infoWindow: InfoWindow(title: 'Home', onTap: (){})
            ),
          Marker(
              markerId: MarkerId('office'),
              position: LatLng(23.82904614922749, 90.41449785232544),
              onTap: (){

              },
              visible: true,
              infoWindow: InfoWindow(title: 'Home', onTap: (){}),
            icon: BitmapDescriptor.defaultMarkerWithHue(
              BitmapDescriptor.hueOrange
            )
          ),
          Marker(
              markerId: MarkerId('market'),
              position: LatLng(23.8294442393812, 90.41475601494312),
              onTap: (){

              },
              visible: true,
              infoWindow: InfoWindow(title: 'Home', onTap: (){}),
            icon: BitmapDescriptor.defaultMarkerWithHue(
              BitmapDescriptor.hueAzure
            )
          )
        },

        polylines: {
            Polyline(
              polylineId: PolylineId('home-to-office'),
              points: [
                LatLng(23.829537167800538, 90.41550669819117),
                LatLng(23.82904614922749, 90.41449785232544),
              ],
              visible: true,
              color: Colors.orange,
              width: 10,
              endCap: Cap.roundCap,
              startCap: Cap.squareCap,
              jointType: JointType.round
            ),
            Polyline(
              polylineId: PolylineId('home-to-market'),
              points: [
                LatLng(23.829537167800538, 90.41550669819117),
                LatLng(23.8294442393812, 90.41475601494312),
              ],
              visible: true,
              color: Colors.green,
              width: 10,
              endCap: Cap.roundCap,
              startCap: Cap.squareCap,
              jointType: JointType.round
            ),
            Polyline(
              polylineId: PolylineId('office-to-market'),
              points: [
                LatLng(23.82904614922749, 90.41449785232544),
                LatLng(23.8294442393812, 90.41475601494312),
              ],
              visible: true,
              color: Colors.red,
              width: 10,
              endCap: Cap.roundCap,
              startCap: Cap.squareCap,
              jointType: JointType.round
            ),
        },

        circles: {
            Circle(
              circleId: CircleId('Zone-1'),
              center: LatLng(23.82904614922749, 90.41449785232544),
              radius: 10,
              strokeWidth: 3,
              strokeColor: Colors.orange,
              fillColor: Colors.orange.shade100
            )
        },

        polygons: {
            Polygon(
              polygonId: PolygonId('zone'),
              points: [
                LatLng(23.82904614922749, 90.41449785232544),
                LatLng(23.8294442393812, 90.41475601494312),
                LatLng(23.829537167800538, 90.41550669819117),
                LatLng(23.82904614922749, 90.41449785232544),
              ],
              fillColor: Colors.deepPurple.shade100,
              strokeWidth: 3,
              strokeColor: Colors.purple,
              onTap: (){

              }
            )
        },
      ),
    );
  }
}
