# ReachME:
ReachME is an app for people who want to create and share their business card (or personal contact card) digitally. It also serves as a place for user's to have a central location with all of their key information, which may differ depending on the context. For example, they may want to share a different email and phone number with their friends than with potential employers or clients.

## Links:

- URL to Front-End App: https://medunn626.github.io/Capstone_Front-End/
- URL to Front-End Repo: https://github.com/medunn626/Capstone_Front-End
- URL to API: https://infinite-wave-70361.herokuapp.com/
- URL to Back-End Repo: https://github.com/medunn626/Capstone_Back-End/

## Technologies Used for Back-End:

- Ruby
- Rails
- Shell
- Heroku

Helpful Resouces:
- Stack Overflow (a whole lot of it!)
- W3 Schools
- Ruby Docs
- Classmates and GA consultants

## Unsolved Problems:

Please refer to this issue queue for reference: https://github.com/medunn626/Capstone_Front-End/issues

### Back-End and Front-End Related Problems:

- Currently, the API has 3 resources: Users, Cards and Links_Lists. Users can have many cards and cards can have many lists with links in them. For MVP I decided not to prioritize adding a list of links to a user's card so this is something I would like to do in the next iteration of this project.

- Currently, only the logged in user can see their own contact card. In the next iteration of this project, I want to allow user's to send out an Open Read link to their card with the information they chose to display on it so that they can network with people.

## Planning & Development Process:

For this project, I was new to Angular so I spent a lot of time teaching myself the ropes. Every concept and strategy I learned thus far and applied to the first 3 projects had to be revisited, which meant this would take me more time.

Two key things strategies I focues on:

(1) Do not save the front-end for the end --> I did this for the second project where I spent the first couple of days only on back-end creating resources and testing the curl scripts only to find that I had issues visualizing the front-end and experience difficulty calling CRUD actions even when I had the resources. This time, I decided to work on the front-end Auth first, build the layout of the app, then build the back-end, then build the API resource CRUD action on the front-end, and lastly, polish the app to meet all the requirements.

(2) Prioritize list of requirements over a second resource --> After being able to fully CRUD on cards, I took a look at the list of other requirements (i.e. clearing forms on submit, no warnings in console, etc.) and realized that I needed to shift gears and focus on meeting these requirements rather than focusing on the links lists resource. This strategy was a key factor in completing the project successfully because I would frequently run into issues with the Angular app not functioning in Production that resulted in a lot of time spent fixing unexpected bugs.

In the end, I feel proud of the app I developed in its current state. I would rather have an asthetically pleasing and well functioning app with one less resource.

## ERD:
https://user-images.githubusercontent.com/17644549/33342494-480be63a-d450-11e7-81cd-6558507fca94.png

## Routes:
The routes that the API expects is /cards and /links_lists

## Dependencies:
The only dependency is to run bundle install
