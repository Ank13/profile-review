$(document).ready(function(){

  // retrieves new profile form and display when button is clicked
  $('#create-profile').on('click', function(event){
    event.preventDefault()
    $('#view-here').append("<h1>Loading...</h1>")
    $('.main-buttons').hide()
    var url = '/profiles/new'
    $.get(url, function(response){
      $('#view-here').html(response)
    })
  })

  // submits the user's essay and displays thank you page
  $('.container').on('click', '#submit-essays', function(event){
    event.preventDefault()
    $('.main-buttons').show()
    var url = 'profiles'
    var data = $('form').serialize()
    console.log(data)
    $.post(url, data, function(response){
      $('#view-here').html(response)
    })
  })

  // shows an essay to rate when user clicks 'give feedback'
  $('.container').on('click', '#improve-profiles', function(event){
    event.preventDefault()
    $('#view-here').append("<h1>Loading...</h1>")
    $('.main-buttons').hide()
    var url = '/get_one_to_rate'
    $.get(url, function(response){
      $('#view-here').html(response)
    })
  })

  // provide comment form when user clicks to add comment
  $('.container').on('click', '#add-comment', function(event){
    event.preventDefault
    var profileId = $('#add-comment').attr('data-profile-id')
    var url = '/profiles/' + profileId + '/comments/new'
    $.get(url, function(response){
      $('.comments-section').prepend(response)
    })
  })

  // save comment when user clicks to save and add to list of visible comments
  $('.container').on('click', '#submit-comment', function(event){
    event.preventDefault()
    var profileId = $('#add-comment').attr('data-profile-id')
    var url = '/profiles/' + profileId + '/comments'
    var data = $('form').serialize()
    $(this).parent().remove()
    $.post(url, data, function(response){
      $('.comments-section').append(response)
    })
  })

})
