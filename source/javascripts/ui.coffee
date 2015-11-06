$ ->

  trigger = $('.menu-trigger')
  menu    = $('.menu-list')
  body    = $('body')
  dismiss = $('body.has-menu')
  overlay = $('.menu-fade-screen')

  # Hamburger menu

  trigger.click ->
    menu.toggleClass('menu-open')
    body.toggleClass('has-menu')
    overlay.toggleClass('is-visible')

  overlay.click ->
    menu.toggleClass('menu-open')
    $(this).toggleClass('is-visible')

  $('.menu-list li').click ->
    menu.toggleClass('menu-open')
    overlay.toggleClass('is-visible')

  # Schedule switcher

  $('.changer li').click (event) ->
    event.preventDefault()
    $(this).addClass 'selected'
    $(this).siblings().removeClass 'selected'
    tab = $(this).attr('href')
    $('.has-list').not(tab).css 'display', 'none'
    $(tab).fadeIn()
    return
  return
