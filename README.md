# Circular Image Loading

Circular Progress Indicator with Centered Image

## How to Use

1. Add this dependency to your pubspec.yaml
```yaml

dependencies:
    circular_image_loading:
        git:
            url: https://github.com/kevinalexandersurjadi/circular_image_loading.git
            ref: 0.0.1

```
2. Import package
```dart

import 'package:circular_image_loading/circular_image_loading.dart';

```
3. Use
```dart

Container(
    child: CircularImageLoading(imagePath: "https://pbs.twimg.com/profile_images/1057899591708753921/PSpUS-Hp_400x400.jpg", indicatorColor: Colors.red, size: 45.0)
);

```

## Getting Started

For help getting started with Flutter, view our online [documentation](https://flutter.io/).

For help on editing package code, view the [documentation](https://flutter.io/developing-packages/).

