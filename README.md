![SpotBookLogoDark](Documentation/Images/spot_book_logo_dark.png)

## Introduction
Welcome to SpotBook! This is an Android mobile app that has been under (intermittent) development since summer 2018. The goal of this app is to provide fellow skateboarders around the world with an easy way to save, search, and share their favorite places ("spots") to skateboard. An integral part of street skateboarding consists of finding spots (often with unique architecture) to skate. Skateboarders spend countless hours searching for new spots, deciding which spots to skate on a given day, and trying to find out about spots from others. Despite the significant role of spot searching, saving, and sharing, the ways that skateboarders currently resort to doing this are surprisingly primitive; most skateboarders have nothing more than a mental library of spots, remembering only vaguely the general vicinity of and layout of each spot. The more organized skaters may have some photos with geodata buried somewhere in their photo roll on their phone or embedded in a thread of a chat app. Consequently, returning to and sharing spots often is not always as easy as it could be.

<strong>* Note that this is the public landing page for the private repository SpotBook. This readme serves as an introduction to and overview of the app. If you would like to view the source code, please login to this GitHub account, potentialEmployer77, using the login credentials provided at the top of my resume. After logging in, you will have access to the private repository Skatespot-Organizer.</strong>

SpotBook is currently being beta tested via Google Firebase App Distribution and its release to the Google PlayStore is planned for early 2021. The beta version 0.1 is available for intial use and testing via the following Google Firebase App Distribution [invitation link](https://appdistribution.firebase.dev/i/bb56b9b6a06b649b). You will need to provide your email and then Firebase will send you an invitation walking you through the steps to download the app onto your Android device.

A video demo of the app as of October 2020 is available [here](https://youtu.be/jxqs0F_ICZM).

## Why SpotBook?
The motivation behind making this app comes from the observation that there is a shortage of good apps that allow skateboarders to organize and share spots in an easy way. While there are a few "spot apps" out there, most of the ones we've used suffer from one or more of the following problems:

 * Inability to keep spots private: While sharing is what happens to most spots after they are discovered, skateboarders often prefer to share certain spots with only a select few people. The reason is that spots can be become "busts" (non-skateable) if they become too popular. Therefore, while our app will allow users to share spots, it won't force them to. SpotBook will allow users to have a private collection of spots as well as the option to share spots (in a user-controlled way) with friends.

 * Spot search/retrieval functionality is limited: Some apps allow users to see all spots within a given radius of a specific city and/or their current location, or based on the spots' attributes (name, obstacles, etc.), however, we are yet to see an app that integrates all of these search options together in one app. Since spot search/retrieval will be a primary function of this app, we hope to make this task as user-friendly as possible.

 * Too general: General-purpose apps such as Google Maps aren't tailored (or configurable) enough to skateboarding's unique and specific requirements when it comes to cataloguing spots. While it is possible to place and save makers and information on a map via these general-purpose map apps, it is often difficult to create collections of spots in a uniform way that would allow a skater to quickly access their saved spots and have all the spot info they want in a just a click or two. As for other special-purpose spot apps, many of these encompass multiple extreme spots and force these (often quite disparate) communities of users to share the same platform. This is nice if you are indeed a jack of all extreme sports, however, from our personal experience, we've seen that many users are really only interested in one sport, and would at least like to have the option of limiting the app to their particular sport of interest.

## Enter the SpotBook app...
![SpotBookLogoDark](Documentation/Images/ic_launcher.png)

The first version of the app focuses on providing three main pieces of functionality:

1). Spot saving: First and foremost, the user must be able to capture and save spots in the app. A spot consists of a spot name, location (geographical coordinates), rating (0-5 stars), description, and media (photos and video).

![create_spot_current_location](Documentation/VideoDemos/MapOnBoarding/create_spot_current_location/create_spot_current_location.gif)

![spot_detail_resize50](Documentation/Images/spot_detail_resize50.gif)

2). Spot searching: Likewise, the user will also want to be able to edit (i.e., change name, description, photo, etc.) and delete existing spots.

3). Spot sharing: There will be two ways for a user to search for and retrieve saved spots:

  * Quick search: The search bar at the top of the app allows the user to perform a search based on either spot name or location name (i.e., "Brooklyn Banks", "New York City", "Spain").
  
  ![MapViewZoomedOut](Documentation/Images/SearchSuggestion_Demo.gif)
  
  * Advanced search: Via the sidebar navigation drawer, the user will be able to select Advanced Search to order to further refine the search parameters to consider spot type, radius from a given location, and more.
  
4). Spot viewing: There are three viewing modes:

  * Map view: When in this viewing mode, the user will see a map displaying either all of their saved spots or the results of their search as highlighted map markers. The map also provides control buttons which allow the user to zoom in/out, zoom into their current location, and open the spot's location in Google Maps (in order to receive directions). Clicking on a marker pops an info window displaying more info about the spot (name, description), and clicking the info window brings the user to the spot's detail view.
  
![MapViewZoomedOut](Documentation/Images/MapViewZoomedOut_Screenshot.jpg)
![MapViewZoomedOut](Documentation/Images/MapViewZoomedIn_Screenshot.jpg)
![MapViewZoomedOut](Documentation/Images/MapViewInfoWindow_Screenshot.jpg)
![MapViewZoomedOut](Documentation/Images/MapViewSearchResult_Screenshot.jpg)

  * List view: This viewing mode allows the user to view either all of their saved spots or the results of their search in scrollable list format. Here, the user can quickly see the name, main photo, and description of the spots. There will also be options to sort the list by various factors such as rating, name, distance, etc. Clicking on a spot list item takes the user to the spot's detail view.
  * Detail view: When in this viewing mode, the user will be able to see all of the spot's details in unabbreviated form. This will include a gallery of photos, video clips, a description, rating, and more.
