# README

### Dependencies

* rvm

* ruby 2.1.1

* ImageMagick

### Features

* User sign up and sign in - User registrations and authentication is handled through the gem 'devise'
* Gadget addition - An authenticated user can add new gadgets to his/her collection of gadgets. Gadgets may have 1 or more images. Image upload is handled through the gem 'carrierwave'
* Search - Search feature searches the name and description of the gadget based on the search term. If the search term exactly matches the name of a gadget, server redirects to that gadget's page. Else, matching results are presented as an unordered list.
