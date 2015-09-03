$(document).ready ->
  $('.changer li').click (event) ->
    event.preventDefault()
    $(this).addClass 'selected'
    $(this).siblings().removeClass 'selected'
    tab = $(this).attr('href')
    $('.has-list').not(tab).css 'display', 'none'
    $(tab).fadeIn()
    return
  return
