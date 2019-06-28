Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

get 'posts/:id', to: 'posts#show'
#GET URL       via post_controller/minerals/method named show
#     (='posts/dynamic:id'          MineralsController's show method goes to show.html.erb

#instead of posts/1, can find post with id of 1 so more dyanmic usage
#parameter received is :id, can be passed to posts#show

#In other words: Upon a get reuqest to 'posts/:id' look in views/posts for a method 
#named show. If found, run the body inside show (by default, if no body in show method,
#will render show by default)

#GET 'minerals/index', to 'minerals#index'

#Upon GET request to minerals/index
#Because 'minerals' is named like that, a controller MineralsController will be looked for.
#A method named index will be looked for INSIDE that controller.

#get minerals/new, fill out form which POSTS to minerals/index 
#When POST to minerals/index, execute the minerals/create method
# In the create method @mineral = Mineral.create(params[:name], params[:hardness]) (added to Mineral.all)
# redirect "minerals/#{@mineral.id}" to see the one you just made
# redirect "minerals/index" to show all minerals, including the one you just made

# get 'minerals/new' This form is in its HTML: <form method=POST, action='minerals/index'>....</form>
#post 'minerals/index', to: minerals#create (Giving params to minerals create)
#That form POSTs to 'minerals/index', THEN look in MineralsController for method named create
#That create method will render 'minerals/:id'

#minerals/new  via form
#minerals/create makes new Mineral object from data given by form (via controller) by accessing params

#Only 4 methods have pages, index,show,new,edit

#Form--Submit--POST to index and Create processes happen-->Redirect to index
#Form--Submit--POST to index and Create processes happen-->Redirect to index <--Show new created mineral

#get 'picture/:id/edit' to: pictures#edit




#

# <ul>
# <% @variable.each do |var| %>
#   <li><%= variable.name %></li>
# <% end %>ea

# </ul>


end

