## Test Coverage
Use the following commands to test and generate coverage report:
```
flutter test --coverage
genhtml coverage/lcov.info -o coverage/
node covBadgeGen.js
```

![Coverage](./coverage_badge.svg?sanitize=true)

## Models Build Command

dart run build_runner build --delete-conflicting-outputs


## TODO

Improve doc as we go