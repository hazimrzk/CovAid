# CovAid

CovAid is a CoVid-19 case tracking app developed as our submission for Universiti Malaya Electrical Engineering (UMEE) E-Makerthon Competition.

Our team collected case statistics from Kementerian Kesihatan Malaysia (KKM) and performed analytics to offer useful visualization of data to the users. The result is shown to end users in the form of mobile app.

The project was developed with at its [original remote repository](https://github.com/CovAid-EEUM/covaid). As it is private, the project is reuploaded here for code-reviewing purposes.

### Technologies

- Data Scraping - Python
- Analytics - NumPy
- Database - Firebase Firestore
- Frontend - Flutter & Dart

## Installation

*Note that the app runs on real-time data. As the data scrapper is no longer maintained, the app will not able to download data from our database. Thus, It will not run as intended*

Step 0: Install VS Code, Android Studio and Flutter
- [Install Android Studio and Flutter](https://www.youtube.com/watch?v=1ukSR1GRtMU)
- [Prepare VS Code for Flutter](https://www.youtube.com/watch?v=sfA3NWDBPZ4)

Make sure to install flutter to C:\src

Step 1: Flutter Initialization
- Create a new Flutter project in VS Code. Ctrl+Shift+P > Flutter: New Application Project > Select any folder > Name of application "covaid".
- Open GitHub Desktop and clone this repository.
- After cloning completed, copy all files on this repository folder to "covaid" folder. Replace all files.
- Delete all files on repository folder.
- Copy all files in "covaid" folder and paste it on repository folder.
- In Github Desktop, press 'Fetch Origin'.

Step 2: Commit process
- Before start to code, open GitHub Desktop and press 'Pull Origin' if available.
- Open repository in VS code and start implementing new features.
- After completed and checked for errors by trying to run the application, fill up summary in GitHub Desktop and press 'Commit to main'.
- Press 'Push Origin'

## Contributions

- [Muhammad Ammar bin Hassan@Zakaria](https://www.github.com/thelight0134) - Data Scraping & Analytics 
- [Muhammad Azizul Hazim bin Abd Razak](https://www.github.com/hazimrzk) - App Development & UI Design
- Mohammad Nadzmi bin Jamal Nasir
- Goh Wen Zheng
- Muhammad Ariff Firdaus bin Rosli
