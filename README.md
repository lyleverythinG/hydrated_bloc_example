# Hydrated_Bloc
_This project shows a simple example of using hydrated_bloc for local storage_.

Additional Info:
- hydrated_bloc is an extension package of bloc.
- Hive is used for the local storage so no need to worry about performance issues.
- path_provider package is used to get the applicationDocumentsDirectory because this is where we store it.
- WidgetsFlutterBinding.ensureInitialized() is added first in the main.dart to avoid error because HydratedStorage.build will call native code.
# Demo
[https://user-images.githubusercontent.com/75658617/179928462-c78ae089-32ab-40b1-83ce-d9563c8c1771.mp4](https://user-images.githubusercontent.com/75658617/179928643-85980ce4-7535-4144-be14-d650651b17ad.mp4)

