## Music Festival Manager
Music Festival Manager is a planner where users can view different artists, stages and performance times and add to their own schedules, as well as compare their friends’ schedules. The website also provides its own analytics.

## Techinical Aspets
+ Built the entire web application using Ruby, Ruby on Rails and the MVC pattern
+ Used Bootstrap and custom CSS for styling
+ Created customized sorting and filtering algorithms for analytics
+ Implemented user validation and authentication using bcrypt

## Screenshot

## Installation
<code>git clone https://github.com/rainANDshine/Music_Festival_Manager/</code>
<code>bundle install</code>
<code>rails s</code>

## Credits
Built by
[Gui Bin Zhang](https://github.com/gbzhang6), [Shun Yao](https://github.com/rainANDshine), [Yong-Nicholas Kim](https://github.com/yongnicholaskim), and [William Dale](https://github.com/dalewb)

## License
MIT ©

User
  1. I should be able to see all the artists and performances and their timeslots
  2. I should be able to filter on the stage to see all performances on that stage
  3. I should be able to make an itinerary
  4. I should be able to see my complete itinerary
  BONUS 1: I should be able to share my itinerary with my friends
  BONUS 2: My friends should be able to edit my itinerary

Venue
  1. I should be able to see all the attendees
  3. I should be able to see all the artists
  BONUS 1: I should be able to make an announcement to all users, i.e. weather announcement

Performance/Artist/Stage/Bookings
  1. Artist has a name
  2. Stage has a name and location
  3. Performance needs a time and duration(start time and end time), an artist, and a stage
  4. Booking needs to be able to join the user schedule with the performance, booking needs to prevent user from scheduling a booking if there is an overlap in performance time. Also it should show which performance is overlapping with so they can choose which performance to see.
  5. schedule is a collection of all the booking

To Do list
1. 10 specs
