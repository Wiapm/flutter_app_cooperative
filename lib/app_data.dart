// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import './models/category.dart';
import 'models/trip.dart';

const Categories_data = const [
  Category(
    id: 'c1',
    title: 'جبال',
    imageUrl:
        'https://images.unsplash.com/photo-1575728252059-db43d03fc2de?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NTh8fG1vdW5hdGluc3xlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=',
  ),
  Category(
    id: 'c2',
    title: 'بحيرات',
    imageUrl:
        'https://images.unsplash.com/photo-1501785888041-af3ef285b470?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8bGFrZXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60',
  ),
  Category(
    id: 'c3',
    title: 'شواطىء',
    imageUrl:
        'https://images.unsplash.com/photo-1493558103817-58b2924bce98?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTAxfHxiZWFjaHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60',
  ),
  Category(
    id: 'c4',
    title: 'صحارى',
    imageUrl:
        'https://images.unsplash.com/photo-1473580044384-7ba9967e16a0?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8ZGVzZXJ0fGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60',
  ),
  Category(
    id: 'c5',
    title: 'مدن تاريخية',
    imageUrl:
        'https://images.unsplash.com/photo-1467269204594-9661b134dd2b?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NjR8fHRyYXZlbHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60',
  ),
  Category(
    id: 'c6',
    title: 'أخرى',
    imageUrl:
        'https://images.unsplash.com/photo-1605540436563-5bca919ae766?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8c2tpaW5nfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60',
  ),
];

const Trips_data = [
  Trip(
    '1',
    ['c1'],
    'جبال الجنوب',
    'https://example.com/images/mountain.jpg',
    ['Hiking', 'Climbing'],
    [
      'Day 1: Arrival and acclimatization',
      'Day 2: Trek to base camp',
      'Day 3-6: Summit attempts',
      'Day 7: Descend to base camp',
      'Day 8: Return to civilization'
    ],
    8,
    'Winter',
    TripType.Exploration,
    false,
    true,
    false,
  ),
  Trip(
    '2',
    ['c5'],
    'جبال مرتفعة',
    'https://example.com/images/beach.jpg',
    ['Swimming', 'Snorkeling', 'Yoga'],
    [
      'Day 1: Arrival and welcome',
      'Day 2-5: Relaxation and beach activities',
      'Day 6: Yoga and meditation',
      'Day 7: Farewell'
    ],
    7,
    'Summer',
    TripType.Recovery,
    true,
    false,
    true,
  ),
  Trip(
    '3',
    ['c1'],
    'البحيرة الكبرى',
    'https://example.com/images/city.jpg',
    ['Museum visits', 'Walking tours', 'Local cuisine'],
    [
      'Day 1: Arrival and city tour',
      'Day 2: Visit museums and historical sites',
      'Day 3: Explore local markets',
      'Day 4: Try local cuisine',
      'Day 5: Departure'
    ],
    5,
    'Spring',
    TripType.Exploration,
    false,
    false,
    true,
  ),
  Trip(
    '4',
    ['c1'],
    'البحيرات الصغرى',
    'https://example.com/images/city.jpg',
    ['Museum visits', 'Walking tours', 'Local cuisine'],
    [
      'Day 1: Arrival and city tour',
      'Day 2: Visit museums and historical sites',
      'Day 3: Explore local markets',
      'Day 4: Try local cuisine',
      'Day 5: Departure'
    ],
    5,
    'Spring',
    TripType.Exploration,
    false,
    false,
    true,
  ),
  Trip(
    '5',
    ['c2'],
    'Safari Adventure',
    'https://example.com/images/safari.jpg',
    ['Game drives', 'Animal spotting', 'Nature walks'],
    [
      'Day 1: Arrival and safari briefing',
      'Day 2-4: Game drives and wildlife encounters',
      'Day 5: Nature walk and birdwatching',
      'Day 6: Farewell'
    ],
    6,
    'Summer',
    TripType.Activities,
    true,
    false,
    false,
  ),
  // Add more trips here...
];
