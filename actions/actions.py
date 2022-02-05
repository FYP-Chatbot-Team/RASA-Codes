from rasa_sdk.executor import CollectingDispatcher

import firebase_admin
from firebase_admin import db

#Connect to firebase database
cred_obj = firebase_admin.credentials.Certificate('nea-database-b96f8-firebase-adminsdk-mo1sn-a344a5de3b.json')
default_app = firebase_admin.initialize_app(cred_obj, {
'databaseURL':'https://nea-database-b96f8-default-rtdb.asia-southeast1.firebasedatabase.app/'})

# class ActionHelloWorld(Action):
#
#     def name(self) -> Text:
#         return "action_hello_world"
#
#     def run(self, dispatcher: CollectingDispatcher,
#             tracker: Tracker,
#             domain: Dict[Text, Any]) -> List[Dict[Text, Any]]:
#
#         dispatcher.utter_message(text="Hello World!")
#
#         return []
