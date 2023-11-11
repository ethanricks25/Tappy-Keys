# Tappy Keys

## Table of Contents

1. [Overview](#Overview)
2. [Product Spec](#Product-Spec)
3. [Wireframes](#Wireframes)
4. [Schema](#Schema)

## Overview

### Description

This app is a game where people can play a typing speed game... but on their phone. Players can choose different length typing tests to play on their phone. Development may include allowing each player to have icons that travel across the screen as they make progress in the game. The ultimate goal is to make sure that the user becomes as completely unproductive as possible as they get addicted to the game.

### App Evaluation

- **Category:**
    - Entertainment
- Mobile
    - There are no major apps that I know of that have a mobile typing test. The UI would be move smoother than it would on the web and it would be more compact.
    - The two features that I would like to aim for would be sound fx that reward the user for good/bad gameplay, and leaderboard services where users can compare their scores.
- Story
    - The value of the app would be very clear to the audience. For any person who is bored and isn't spending much time doing anything, they could use this app to entertain themselves. This app provides value to a large group of people, because people like to play games that don't take much thought. My peers would respond well to this app idea, because the one thing college students seem to be good at is getting distracted from their work. This app would help them accomplish that task much more easily. 
- Market
    - The size and scale of my potential user base is massive. Anyone across the world would be able to play this game, except maybe some physically disable people. The game can be played by people both young and old, and across every demographic. It doesn't provide value to a niche group of people, but it's appeal to the general population is what makes its scope so large.
- Habit 
    - This app would be very addictive. It's expected that this user would open and close this app multiple times throughout the day. The average consumer would just consume the app.
- Scope
    - This app will be difficult to create. One of the features that concerns me the most is how to create the scrolling feature that will allow gameplay for the feature. Even without all the extra features, a stripped-down version of this app would still be interesting to build. The product that I want to build is very clearly defined.

## Product Spec

### 1. User Stories (Required and Optional)

**Required Must-have Stories**

* [ ] The user must be able to do a typing test game using their phone
* [ ] The user must be able to see past scores from previous typing tests
* [ ] The user must be able to choose different length typing tests to play

**Optional Nice-to-have Stories**

* [ ] The user should be able to hear sound effects when they press on the keyboard and as they progress through the game
* [ ] The user should be able to see scores of other players in their area (very far-fetched feature)
* [ ] The user should be able to have a racing avatar to travel across their screen as they play the game.

### 2. Screen Archetypes

- [ ] Stream
* The player can select typing tests from here
* Player uses keyboard to play typing screen
* Player can see display of stats of game just played
- [ ] Leaderboard
* The player must be able to see scores from previous typing tests here.
* The player can see other players scores
- [ ] Profile
* The player must be able to see their profile here
* Player can edit different text fields on their profile

### 3. Navigation

**Tab Navigation** (Tab to Screen)

* Play
* Leaderboard
* Profile

**Flow Navigation** (Screen to Screen)

- Play
* => Main Screen (Screen with display of different types of typing test)
* => Go back to Play Screen or select type of test to play (Typing Test Detail)
* => From Typing Test Detail to Gameplay Screen (Or goback to Play Screen)
* => From Gameplay Screen to Gameover Screen (Or the user can cancel out of a game and go back to Play screen)
* => From Gameover Screen to Play Screen
- Leaderboard
* => Leaderboard Screen can have tab display
* => One tab can display previous scores. From there it can display the stats for the specific game
* => The other tab can display scores from other Users. From there it can display their stats for the game
- Profile
* => First screen displays profile (Profile Display Screen)
* => From Profile Display Screen to Edit Profile Display Screen

## Wireframes

![Alt text](image.png)

### [BONUS] Digital Wireframes & Mockups

### [BONUS] Interactive Prototype

## Schema 

[This section will be completed in Unit 9]

### Models

[Add table of models]

### Networking

- [Add list of network requests by screen ]
- [Create basic snippets for each Parse network request]
- [OPTIONAL: List endpoints if using existing API such as Yelp]