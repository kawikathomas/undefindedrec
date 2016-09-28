$(document).on("turbolinks:load", function(){
  $("#available-players").find(".player").draggable({
    helper: "clone"
  });
  $("#edit-team").droppable({
      drop: function (e, ui) {
      $(ui.draggable).appendTo($("#edit-team"));
      var user = $(this).find(".id").last().text()
      var team = $(".teamid").attr("id")
      data = { user_id: user, team_id: team }
      console.log(data)
      $.ajax({
        url: "/admin/teams/teamplayer",
        method: "POST",
        data: data
      }).done(function(response){
      })
    }
  });
})
