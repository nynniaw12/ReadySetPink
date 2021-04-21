import 'package:flutter/material.dart';

const kPrimaryColor = Color(0XFF0266);
const kPrimaryLightColor = Color(0xFF7597);

List<Map<String, dynamic>> recipes1 = [
  {
    'name': 'Breakfast #1',
    'img': 'https://source.unsplash.com/zOlQ7lF-3vs/1920x2880',
    'ingredients': ['Tomatoes', 'Basil', 'Onion', 'Garlic', 'Pepper'],
    'difficulty': 3,
    'desc':
        'Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellat, quis? Quo nulla consequuntur, quaerat similique commodi eos tempore harum consectetur accusamus est labore quia dolores provident eaque et dolor voluptates.',
    'duration': '30 mins',
    'temp': '180 °',
    'cooking_type': 'Oven',
    'shortdesc': 'Example short description for breakfast #1',
  },
  {
    'name': 'Breakfast #2',
    'img': 'https://source.unsplash.com/6fCnE2oVdao/1920x2400',
    'ingredients': ['Tomatoes', 'Basil', 'Onion', 'Garlic', 'Pepper'],
    'difficulty': 3,
    'desc':
        'Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellat, quis? Quo nulla consequuntur, quaerat similique commodi eos tempore harum consectetur accusamus est labore quia dolores provident eaque et dolor voluptates.',
    'duration': '30 mins',
    'temp': '180 °',
    'cooking_type': 'Oven',
    'shortdesc': 'Example short description for breakfast #2',
  },
  {
    'name': 'Breakfast #3',
    'img': 'https://source.unsplash.com/6fCnE2oVdao/1920x2400',
    'ingredients': ['Tomatoes', 'Basil', 'Onion', 'Garlic', 'Pepper'],
    'difficulty': 3,
    'desc':
        'Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellat, quis? Quo nulla consequuntur, quaerat similique commodi eos tempore harum consectetur accusamus est labore quia dolores provident eaque et dolor voluptates.',
    'duration': '30 mins',
    'temp': '180 °',
    'cooking_type': 'Oven',
    'shortdesc': 'Example short description for breakfast #3',
  },
];
List<Map<String, dynamic>> recipes2 = [
  {
    'name': 'Lunch #1',
    'img': 'https://source.unsplash.com/zOlQ7lF-3vs/1920x2880',
    'ingredients': ['Tomatoes', 'Basil', 'Onion', 'Garlic', 'Pepper'],
    'difficulty': 3,
    'desc':
        'Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellat, quis? Quo nulla consequuntur, quaerat similique commodi eos tempore harum consectetur accusamus est labore quia dolores provident eaque et dolor voluptates.',
    'duration': '30 mins',
    'temp': '180 °',
    'cooking_type': 'Oven',
    'shortdesc': 'Example short description for lunch #1',
  },
  {
    'name': 'Lunch #2',
    'img': 'https://source.unsplash.com/6fCnE2oVdao/1920x2400',
    'ingredients': ['Tomatoes', 'Basil', 'Onion', 'Garlic', 'Pepper'],
    'difficulty': 3,
    'desc':
        'Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellat, quis? Quo nulla consequuntur, quaerat similique commodi eos tempore harum consectetur accusamus est labore quia dolores provident eaque et dolor voluptates.',
    'duration': '30 mins',
    'temp': '180 °',
    'cooking_type': 'Oven',
    'shortdesc': 'Example short description for lunch #2',
  },
  {
    'name': 'Lunch #3',
    'img': 'https://source.unsplash.com/6fCnE2oVdao/1920x2400',
    'ingredients': ['Tomatoes', 'Basil', 'Onion', 'Garlic', 'Pepper'],
    'difficulty': 3,
    'desc':
        'Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellat, quis? Quo nulla consequuntur, quaerat similique commodi eos tempore harum consectetur accusamus est labore quia dolores provident eaque et dolor voluptates.',
    'duration': '30 mins',
    'temp': '180 °',
    'cooking_type': 'Oven',
    'shortdesc': 'Example short description for lunch #3',
  },
  {
    'name': 'Lunch #4',
    'img': 'https://source.unsplash.com/6fCnE2oVdao/1920x2400',
    'ingredients': ['Tomatoes', 'Basil', 'Onion', 'Garlic', 'Pepper'],
    'difficulty': 3,
    'desc':
        'Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellat, quis? Quo nulla consequuntur, quaerat similique commodi eos tempore harum consectetur accusamus est labore quia dolores provident eaque et dolor voluptates.',
    'duration': '30 mins',
    'temp': '180 °',
    'cooking_type': 'Oven',
    'shortdesc': 'Example short description for lunch #4',
  },
];
List<Map<String, dynamic>> recipes3 = [
  {
    'name': 'Dinner #1',
    'img': 'https://source.unsplash.com/zOlQ7lF-3vs/1920x2880',
    'ingredients': ['Tomatoes', 'Basil', 'Onion', 'Garlic', 'Pepper'],
    'difficulty': 3,
    'desc':
        'Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellat, quis? Quo nulla consequuntur, quaerat similique commodi eos tempore harum consectetur accusamus est labore quia dolores provident eaque et dolor voluptates.',
    'duration': '30 mins',
    'temp': '180 °',
    'cooking_type': 'Oven',
    'shortdesc': 'Example short description for dinner #1',
  },
  {
    'name': 'Dinner #2',
    'img': 'https://source.unsplash.com/6fCnE2oVdao/1920x2400',
    'ingredients': ['Tomatoes', 'Basil', 'Onion', 'Garlic', 'Pepper'],
    'difficulty': 3,
    'desc':
        'Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellat, quis? Quo nulla consequuntur, quaerat similique commodi eos tempore harum consectetur accusamus est labore quia dolores provident eaque et dolor voluptates.',
    'duration': '30 mins',
    'temp': '180 °',
    'cooking_type': 'Oven',
    'shortdesc': 'Example short description for dinner #2',
  },
  {
    'name': 'Dinner #3',
    'img': 'https://source.unsplash.com/6fCnE2oVdao/1920x2400',
    'ingredients': ['Tomatoes', 'Basil', 'Onion', 'Garlic', 'Pepper'],
    'difficulty': 3,
    'desc':
        'Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellat, quis? Quo nulla consequuntur, quaerat similique commodi eos tempore harum consectetur accusamus est labore quia dolores provident eaque et dolor voluptates.',
    'duration': '30 mins',
    'temp': '180 °',
    'cooking_type': 'Oven',
    'shortdesc': 'Example short description for dinner #3',
  },
  {
    'name': 'Dinner #4',
    'img': 'https://source.unsplash.com/6fCnE2oVdao/1920x2400',
    'ingredients': ['Tomatoes', 'Basil', 'Onion', 'Garlic', 'Pepper'],
    'difficulty': 3,
    'desc':
        'Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellat, quis? Quo nulla consequuntur, quaerat similique commodi eos tempore harum consectetur accusamus est labore quia dolores provident eaque et dolor voluptates.',
    'duration': '30 mins',
    'temp': '180 °',
    'cooking_type': 'Oven',
    'shortdesc': 'Example short description for dinner #4',
  },
];
List<List<Map<String, dynamic>>> listrecipes = [recipes1, recipes2, recipes3];

List<Map<String, dynamic>> excercises1 = [
  {
    'name': 'Aerobic Exercise #1',
    'img': 'https://source.unsplash.com/3RnkZpDqsEI/2400x1600',
    'ingredients': ['Tomatoes', 'Basil', 'Onion', 'Garlic', 'Pepper'],
    'difficulty': 3,
    'desc':
        'Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellat, quis? Quo nulla consequuntur, quaerat similique commodi eos tempore harum consectetur accusamus est labore quia dolores provident eaque et dolor voluptates.',
    'duration': '30 mins',
    'temp': '3 sets',
    'cooking_type': '5 times each set',
    'shortdesc':
        'Example short description for aerobic exercise #1  - 0/10 secs done',
  },
  {
    'name': 'Aerobic Exercise #2',
    'img': 'source.unsplash.com/2RrBE90w0T8/1920x2879',
    'ingredients': ['Tomatoes', 'Basil', 'Onion', 'Garlic', 'Pepper'],
    'difficulty': 3,
    'desc':
        'Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellat, quis? Quo nulla consequuntur, quaerat similique commodi eos tempore harum consectetur accusamus est labore quia dolores provident eaque et dolor voluptates.',
    'duration': '30 mins',
    'temp': '180 °',
    'cooking_type': 'Oven',
    'shortdesc':
        'Example short description for aerobic exercise #2 - 0/15 mins done',
  },
  {
    'name': 'Aerobic Exercise #3',
    'img': 'source.unsplash.com/2RrBE90w0T8/1920x2879',
    'ingredients': ['Tomatoes', 'Basil', 'Onion', 'Garlic', 'Pepper'],
    'difficulty': 3,
    'desc':
        'Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellat, quis? Quo nulla consequuntur, quaerat similique commodi eos tempore harum consectetur accusamus est labore quia dolores provident eaque et dolor voluptates.',
    'duration': '30 mins',
    'temp': '180 °',
    'cooking_type': 'Oven',
    'shortdesc':
        'Example short description for aerobic exercise #3 - 0/10 mins done',
  },
];
List<Map<String, dynamic>> excercises2 = [
  {
    'name': 'Resistance Exercise #1',
    'img': 'source.unsplash.com/2RrBE90w0T8/1920x2879',
    'ingredients': ['Tomatoes', 'Basil', 'Onion', 'Garlic', 'Pepper'],
    'difficulty': 3,
    'desc':
        'Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellat, quis? Quo nulla consequuntur, quaerat similique commodi eos tempore harum consectetur accusamus est labore quia dolores provident eaque et dolor voluptates.',
    'duration': '30 mins',
    'temp': '180 °',
    'cooking_type': 'Oven',
    'shortdesc':
        'Example short description for resistance exercise #1 - 0/10 mins done',
  },
  {
    'name': 'Resistance Exercise #2',
    'img': 'source.unsplash.com/2RrBE90w0T8/1920x2879',
    'ingredients': ['Tomatoes', 'Basil', 'Onion', 'Garlic', 'Pepper'],
    'difficulty': 3,
    'desc':
        'Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellat, quis? Quo nulla consequuntur, quaerat similique commodi eos tempore harum consectetur accusamus est labore quia dolores provident eaque et dolor voluptates.',
    'duration': '30 mins',
    'temp': '180 °',
    'cooking_type': 'Oven',
    'shortdesc':
        'Example short description for resistance exercise #2 - 0/10 mins done',
  },
  {
    'name': 'Resistance Exercise #3',
    'img': 'source.unsplash.com/2RrBE90w0T8/1920x2879',
    'ingredients': ['Tomatoes', 'Basil', 'Onion', 'Garlic', 'Pepper'],
    'difficulty': 3,
    'desc':
        'Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellat, quis? Quo nulla consequuntur, quaerat similique commodi eos tempore harum consectetur accusamus est labore quia dolores provident eaque et dolor voluptates.',
    'duration': '30 mins',
    'temp': '180 °',
    'cooking_type': 'Oven',
    'shortdesc':
        'Example short description for resistance exercise #3 - 0/10 mins done',
  },
  {
    'name': 'Resistance Exercise #4',
    'img': 'source.unsplash.com/2RrBE90w0T8/1920x2879',
    'ingredients': ['Tomatoes', 'Basil', 'Onion', 'Garlic', 'Pepper'],
    'difficulty': 3,
    'desc':
        'Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellat, quis? Quo nulla consequuntur, quaerat similique commodi eos tempore harum consectetur accusamus est labore quia dolores provident eaque et dolor voluptates.',
    'duration': '30 mins',
    'temp': '180 °',
    'cooking_type': 'Oven',
    'shortdesc':
        'Example short description for resistance exercise #4 - 0/10 mins done',
  },
];
List<Map<String, dynamic>> excercises3 = [
  {
    'name': 'Meditation #1',
    'img': 'source.unsplash.com/2RrBE90w0T8/1920x2879',
    'ingredients': ['Tomatoes', 'Basil', 'Onion', 'Garlic', 'Pepper'],
    'difficulty': 3,
    'desc':
        'Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellat, quis? Quo nulla consequuntur, quaerat similique commodi eos tempore harum consectetur accusamus est labore quia dolores provident eaque et dolor voluptates.',
    'duration': '30 mins',
    'temp': '180 °',
    'cooking_type': 'Oven',
    'shortdesc': 'Example short description for Meditation #1 - 0/5 mins done',
  },
  {
    'name': 'Meditation #2',
    'img': 'source.unsplash.com/2RrBE90w0T8/1920x2879',
    'ingredients': ['Tomatoes', 'Basil', 'Onion', 'Garlic', 'Pepper'],
    'difficulty': 3,
    'desc':
        'Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellat, quis? Quo nulla consequuntur, quaerat similique commodi eos tempore harum consectetur accusamus est labore quia dolores provident eaque et dolor voluptates.',
    'duration': '30 mins',
    'temp': '180 °',
    'cooking_type': 'Oven',
    'shortdesc':
        'Example short description for Meditation #2 - 0/2.5 mins done',
  },
  {
    'name': 'Meditation #3',
    'img': 'source.unsplash.com/2RrBE90w0T8/1920x2879',
    'ingredients': ['Tomatoes', 'Basil', 'Onion', 'Garlic', 'Pepper'],
    'difficulty': 3,
    'desc':
        'Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellat, quis? Quo nulla consequuntur, quaerat similique commodi eos tempore harum consectetur accusamus est labore quia dolores provident eaque et dolor voluptates.',
    'duration': '30 mins',
    'temp': '180 °',
    'cooking_type': 'Oven',
    'shortdesc': 'Example short description for Meditation #3 - 0/5 mins done',
  },
  {
    'name': 'Meditation #4',
    'img': 'source.unsplash.com/2RrBE90w0T8/1920x2879',
    'ingredients': ['Tomatoes', 'Basil', 'Onion', 'Garlic', 'Pepper'],
    'difficulty': 3,
    'desc':
        'Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellat, quis? Quo nulla consequuntur, quaerat similique commodi eos tempore harum consectetur accusamus est labore quia dolores provident eaque et dolor voluptates.',
    'duration': '30 mins',
    'temp': '180 °',
    'cooking_type': 'Oven',
    'shortdesc': 'Example short description for Meditation #4',
  },
];
List<List<Map<String, dynamic>>> listexcercises = [
  excercises1,
  excercises2,
  excercises3
];
