# Q0: Why is this error being thrown?
This error is being thrown because we have not initialized a Pokemon model class yet to set the constant equal to.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
The random Pokemon are appearing due to the index method in the Home_Controller. It is sampling from the "tranerless" pokemon and rendering the pokemon in the index.html.erb file in the views/home repo. The common factor between all the possible Pokemon that appear is that they do not have a trainer associated with them.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
First, this line crates a button with the label "Throw a Pokeball!". After pressing, it redirects to the "ccapture_path" url defined in my routes file. It makes a patch request, and calls the method capture that I defined.

# Question 3: What would you name your own Pokemon?
Poke

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
The redirect_to that I called was "trainer_path(pokemon.trainer_id)". By calling rails routes, I could see that trainer_path routed to "/trainers/:id". I noticed that the path needed an id passed into it, so I grabbed the pokemon's trainer id that I damaged and passed this in.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
This shows errors by grabbing the @pokemon reference in the form and collecting the validations are being violated in my pokemon model. The "full_messages.to_sentence" put the errors into a text that is displayed on the form in a way that is readable to the user.

# Give us feedback on the project and decal below!
The project was a pretty large jump, but it also helped me understand routing and MVC a lot more.

# Extra credit: Link your Heroku deployed app
