"""Kivy entry point. This is bundled into the APK by python-for-android."""
from kivy.app import App
from kivy.lang import Builder
from kivymd.app import MDApp

KV = """
MDScreen:
    MDBoxLayout:
        orientation: "vertical"
        spacing: "16dp"
        padding: "24dp"
        MDTopAppBar:
            title: "Kivy + KivyMD"
        MDLabel:
            text: "Python, Kivy, KivyMD, PyJNIus, ffpyplayer and FFmpeg"
            halign: "center"
"""

class DemoApp(MDApp):
    def build(self):
        return Builder.load_string(KV)

if __name__ == "__main__":
    DemoApp().run()
