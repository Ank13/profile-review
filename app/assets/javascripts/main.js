$(document).ready(function(){

  // retrieve new profile form and display when button is clicked
  $('#create-profile').on('click', function(event){
    event.preventDefault()
    $('.main-buttons').hide()
    url = '/profiles/new'
    $.get(url, function(response){
      $('#view-here').html(response)
    })
  })

  // submit essays and display thank you page
  $('.container').on('click', '#submit-essays', function(event){
    event.preventDefault()

    $('.mainbuttons').show()
    url = 'profiles'
    data = $('form').serialize()
    console.log(data)
    $.post(url, data, function(response){
      $('#view-here').html(response)
    })
  })

})
