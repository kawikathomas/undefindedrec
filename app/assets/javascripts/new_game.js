$(document).on("turbolinks:load", function(){

  $('#new-game').on('submit', function(event){
    event.preventDefault()

    var form = $(this)
    var data = form.serialize()
    var myUrl = form.attr('action')
    console.log(data)
    console.log(myUrl)

    $.ajax({
      method: 'post',
      data: data,
      url: myUrl,
      dataType: 'json'
    }).done(function(response){
      console.log(response[0])
      console.log(response[1])
      console.log(response[2])

      var game = response[0]
      // var date = new Date(game.starts_at),
      // locale = "en-us",
      // month = date.toLocaleString(locale, {month: "long"});
      // console.log(date.getTime())
      var team1 = response[1][0]
      var team2 = response[1][1]
      var league = response[2]
      var newGame = "<tr>" +
                      "<td id='list-sport'>"
                      + league.sport +
                      "</td><td id='skill_level'>" + league.skill_level + "<td id='list-teams'>" +team1.name+ "vs." +team2.name + "</td>"+"<td id='list-date'>"+ game.starts_at_str +"</td><td>"+game.starts_at_time_str+ "</td></tr>"

    $('.upcoming-games tr:first').after(newGame)
      form.trigger('reset')


    })
  })
});
