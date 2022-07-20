# Hydrated_Bloc
_This project shows a simple example of using hydrated_bloc for local storage_.

Additional Info:
- hydrated_bloc is an extension package of bloc.
- Hive is used for the local storage so no need to worry about performance issues.
- path_provider package is used to get the applicationDocumentsDirectory because this is where we store it.
- WidgetsFlutterBinding.ensureInitialized() is added first in the main.dart to avoid error because HydratedStorage.build will call native code.
# Demo

https://user-images.githubusercontent.com/75658617/179929650-1f44e34e-3b17-43a5-9d34-fccc50bfca5d.mp4
