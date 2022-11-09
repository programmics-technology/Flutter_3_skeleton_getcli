How to use this skeleton in your app:

Step 1: 
    Install "get_cli" in your system
    Command to install "get_cli"
        => flutter pub global activate get_cli 1.6.0
    Take a look on https://pub.dev/packages/get_cli

Step 2:
    Clone this repository in your system

Step 3:
    Change package_name and application name

Step 4: 
    Set colors for your app in "lib\utils\constants\color_constants.dart"

Step 5:
    Take a look on "lib\utils\themes\theme.dart" and make necessary changes.

Step 6:
    Specify height and width of application in "main.dart"
    Take a look on "lib\app\modules\home\views\home_view.dart" for reference to use screenutils in app
    and read comments there


Useful visual code studio extension you need to install for faster programming
    => Dart-Code.dart-code
    => Dart-Code.flutter
    => RodrigoRahman.flutter-dart-utils
    => get-snippets.get-snippets
    => jeroen-meijer.pubspec-assist
    => 2gua.rainbow-brackets
    => davidwoo.flutter-auto-import
    => luanpotter.dart-import
    => gurayyarar.dummytextgenerator

Install these extensions and read a little about the extension on every extension page. All of these extension will help you to write code faster


Settings for visual code editor
    => Press ctrl+shift+p and search for Preferences: Open User Settings (JSON)
    => open the file and "[dart]" value with the following 
    "[dart]": {
        "editor.formatOnSave": true,
        "editor.formatOnType": true,
        "editor.rulers": [
            80
        ],
        "editor.selectionHighlight": false,
        "editor.suggest.snippetsPreventQuickSuggestions": false,
        "editor.suggestSelection": "first",
        "editor.tabCompletion": "onlySnippets",
        "editor.wordBasedSuggestions": false,
        "editor.codeActionsOnSave": {
            "source.fixAll": true,
            "source.organizeImports": true
        }
    },

Points to remember
    Now for using colors and textstyles use following
        => "Theme.of(context).primaryColor" (here you can any color that is defined in theme)
        => "Theme.of(context).textTheme.headline1" (use your favourite textstyle at the place of headline1)
    To add string to application follow these steps
        => Add the text in "assets\translation\en.json" and create a corresponding unique key
        => Use the key to create a variable in "lib\utils\constants\localization_constants.dart"
        => Now you can use that variable for your texts where you need
    To add assets follow these steps
        => add your assets in "assets\images" folder
        => then create a variable for corresponding asset in "lib\utils\constants\image_constants.dart"
        => Now you can use that variable for images where you need
    To add a custom widget follow these step
        => if you need that widgets only in a single module
            => create a folder "widgets" in "view" folder of that module
            => create a file and then create widget in that file
        => if you need that widget in more than one module create the widget in "lib\app\shared\widgets"



For api integration follow these steps
    => add your api end points and update baseUrl in "lib\utils\constants\api_constants.dart"
    => take a look on "lib\app\data\model\user_model.dart" for creating models 
        => take a reference on jsontodart.com
    => take a look on "lib\app\data\repository\user_repo.dart" 
        => create functions in userrepo for all requests for usermodel
    => make seperate repo for each and every model and create functions for that model in corresponding   repo
    => for using functions of repo, take a look on "lib\app\shared\controllers\user_controller.dart"
    => if the model is needed in single model, use the function in corresponding controller


For adding any service, add it in "lib\app\services" folder


Tips for creating functions, widgets, classes and variables in flutter

    => use lowercase_with_underscores when specifying a library prefix
    => use lowerCamelCase when declaring variable or function
    => use UpperCamelCase when declaring widgets and classes name
    => use lowercase_with_underscores when naming a file
    => don't forget to specify return type of functions, if function doesn't return any value specify functions return type as void
    => try not to use print() function in code, if you need to check value of a variable, use log() from dart:developer or debugPrint() from material.dart


