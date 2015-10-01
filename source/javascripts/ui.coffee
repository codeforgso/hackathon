$ ->

  #Ticket modal
  $('#modal-1').on 'change', ->
    if $(this).is(':checked')
      $('body').addClass 'modal-open'
    else
      $('body').removeClass 'modal-open'
    return
  $('.modal-fade-screen, .modal-close').on 'click', ->
    $('.modal-state:checked').prop('checked', false).change()
    return
  $('.modal-inner').on 'click', (e) ->
    e.stopPropagation()
    return
  return

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
