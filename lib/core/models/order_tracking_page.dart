// ignore_for_file: unused_field, prefer_const_constructors, avoid_function_literals_in_foreach_calls

import 'dart:async';
import 'package:flutter_polyline_points_plus/flutter_polyline_points_plus.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/material.dart';

class OrderTrackingPage extends StatefulWidget {
  const OrderTrackingPage({super.key});

  @override
  State<OrderTrackingPage> createState() => _OrderTrackingPageState();
}

class _OrderTrackingPageState extends State<OrderTrackingPage> {
  final Completer<GoogleMapController> _controller = Completer();

  static const LatLng sourceLocation = LatLng(-1.4012, -48.4440);
  static const LatLng destination = LatLng(-1.4095, -48.4444);
  static final _initialCameraPosition = CameraPosition(
      target: LatLng(sourceLocation.latitude, sourceLocation.longitude));

  //Non-nullable instance field '_googleMapController' must be initialized.
//Try adding an initializer expression, or a generative constructor that initializes it, or mark it 'late'.

//The property 'latitude' can't be accessed on the type 'LatLng' in a constant expression.

  List<LatLng> polylineCoordinates = [];

  void getPolyPoints() async {
    PolylinePoints polylinePoints = PolylinePoints();
    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      'AIzaSyCVr5T_wbJ-v8O4WPIXoGjraDy6VzAaFI0',
      PointLatLng(sourceLocation.latitude, sourceLocation.longitude),
      PointLatLng(destination.latitude, destination.longitude),
    );
    if (result.points.isNotEmpty) {
      result.points.forEach(
        (PointLatLng point) => polylineCoordinates.add(
          LatLng(point.latitude, point.longitude),
        ),
      );
      setState(() {});
    }
  }

  late GoogleMapController _googleMapController;

  @override
  void dispose() {
    _googleMapController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    getPolyPoints();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition: const CameraPosition(
          target: sourceLocation,
          zoom: 13.5,
        ),
        polylines: {
          Polyline(
            polylineId: PolylineId("route"),
            points: polylineCoordinates,
          ),
        },
        markers: {
          const Marker(
            markerId: MarkerId("source"),
            position: sourceLocation,
          ),
          const Marker(
            markerId: MarkerId("destination"),
            position: destination,
          )
        },
        onMapCreated: (mapController) {
          _controller.complete(mapController);
        },
        myLocationButtonEnabled: false,
        zoomControlsEnabled: false,
        compassEnabled: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _googleMapController.animateCamera(
          CameraUpdate.newCameraPosition(_initialCameraPosition),
        ),
      ),
    );
  }
}
