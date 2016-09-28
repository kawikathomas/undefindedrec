$(document).on("turbolinks:load", function(){
  $("#create-team-form").on("submit", function(e){
    e.preventDefault();
    data = $(this).serialize()
    $.ajax({
      url: "/admin/teams",
      method: "POST",
      data: data
    }).done(function(response){
      $("#new-team-div").hide();
      $("#dragable-container").append("<div id='team-creater' class='col-lg-4 col-lg-offset-2 text-center'><h2 class='section-header team-name' id='"+response.id+"' >"+response.name+"</h2><table id='new-team' class='table table-bordered'><thead><tr><th class='text-center'>Name</th><th class='text-center'>User Id</th></tr></thead><tbody></tbody></table></div>")
    })
  })

  $("#available-players").find(".player").draggable({
    helper: "clone"
  });
  $("#dragable-container").on("#new-team").droppable({
      drop: function (e, ui) {
      $(ui.draggable).appendTo($("#new-team"));
      var user = $(this).find(".id").last().text()
      var team = $(".team-name").attr("id")
      data = { user_id: user, team_id: team }
      $.ajax({
        url: "/admin/teams/teamplayer",
        method: "POST",
        data: data
      }).done(function(response){
      })
    }
  });

  $("#another-team-btn").on("click", function(e){
    e.preventDefault();
    location.reload();
  })

  $("#remove-team-form").on("submit", function(e){
    e.preventDefault();
    var data = $(this).serialize();
    var item = $(this).closest(".player-contact")
    $.ajax({
      method: "PUT",
      url: "/admin/users/removeteam",
      data: data
    }).done(function(){
      $(item).remove();
    })
  })

})
