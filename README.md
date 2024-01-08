# todo_cubit

## Why TODO App

- App familiar to many developers
- Easy to adjust difficulty, good app for learning
- A good app to apply various state management techniques using bloc

## Implementing 4 times

- Cubit + StreamSubscription
- Cubit + BlocListener
- Bloc + StreamSubscription
- Bloc + BlocListener

## States

- Independent States
- Computed States
    - StreamSubscription
    - BlocListener

## My Best Practice

- Make the state as atomic as possible
    - If it can be logically separated, create a separate state and manage it
- State is mainly managed in the form of a class
    - Group and manage logically related values
    - Classify and manage primitive type variables such as String and int - The advantage of avoiding type conflicts
- Immutable state
    - Create a new state using the copyWith function
- Always extends Equatable class
    - Ease of equality check of object instances
    - Provides convenience functions such as stringify
 
## TODO App Structure

![appStructure](https://github.com/kursat-ozturk/todo_cubit/assets/69029656/604f3518-3a03-412c-abc7-f99e2d65616a)

