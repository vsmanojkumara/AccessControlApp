Access Control App
About the Project
This project is a simple Access Control Dashboard built using SwiftUI.
The main purpose of this application is to display access control details in a table. Users can see different case categories, field names, access types, and masking patterns.
The design includes a sidebar, top navigation bar, and a main dashboard, similar to the provided reference image.
Technologies Used
Swift
SwiftUI
Xcode
Project Structure
The project is divided into different files to keep the code clean and easy to understand.
AccessControlApp.swift – Starting point of the application.
ContentView.swift – Main screen that combines all the views.
AccessControl.swift – Contains the model and sample data.
SidebarView.swift – Contains the left-side navigation menu.
TopNavigationView.swift – Contains the logo, search bar, notification, and profile icon.
BreadcrumbView.swift – Displays the Home, Admin, and Access Control navigation.
AccessControlView.swift – Displays the main access control table.
DetailView.swift – Shows details of a selected record.
Color+Hex.swift – Used to manage custom colors.
Features
Simple and clean dashboard design.
Blue sidebar with navigation icons.
Top navigation bar with search and profile options.
Breadcrumb navigation.
Access control table with sample records.
Displays case categories and field details.
Shows access types and masking patterns.
View buttons to open record details.
Separate detail screen for each selected record.
How to Run the Project
Open the project in Xcode.
Make sure all Swift files are added to the project.
Select an iOS Simulator.
Build the project using Command + B.
Run the application using Command + R.
Current Status
The dashboard UI has been created using SwiftUI, and sample data is displayed in the table.
The detail screen is also implemented to show information about the selected record.
Currently, the project uses static sample data. Backend integration, login functionality, and actual search functionality can be added in the future.
Note
This project was created to practice SwiftUI and build an admin dashboard based on the given design reference.
