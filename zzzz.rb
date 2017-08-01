<!DOCTYPE html>
<html>
  <head>
    <title>cheekChubby</title>
    <%= csrf_meta_tags %>

    <%= stylesheet_link_tag    'application', media: 'all', 'data-turbolinks-track': 'reload' %>
    <%= javascript_include_tag 'application', 'data-turbolinks-track': 'reload' %>
  </head>

  <body>
    This is the frontend

    <nav class="navbar navbar-default">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
        </div>

  

        <div id="navbar" class="collapse navbar-collapse">
          
          <ul class="nav navbar-nav">
            <li class="<%= params[:controller] != 'posts' && params[:controller] != 'photos' ? 'active' : '' %>"><%= link_to "Home", root_path %></li>
            <li class="<%= params[:controller] == 'posts' ? 'active' : '' %>"><%= link_to "Posts", posts_path %></li>
            <li class="<%= params[:controller] == 'photos' ? 'active' : '' %>"><%= link_to "Photos", photos_path %></li>
          </ul>
          <%= render 'partials/search' %>
        </div><!--/.nav-collapse -->
      </div>
    </nav>

    <section>
      <div class="container">
        <div class="row">
          <div class="col-md-8">
            <!-- Alerts & Messages -->
            <% if flash[:notice] %>
              <div class="alert alert-success"><%= flash[:notice] %></div>
            <% end %>

            <% if flash[:alert] %>
              <div class="alert alert-danger"><%= flash[:alert] %></div>
            <% end %>

            <%= yield %>
          </div>
          
          <div class="col-md-4">
            <%= render 'partials/sidebar' %>
          </div>

        </div>
      </div>
    </section>

    <%= render 'partials/footer' %>


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="js/bootstrap.js"></script>
  </body>
</html>
