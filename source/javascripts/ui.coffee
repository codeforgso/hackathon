$ ->
  $('.has-list:gt(0)').hide();

  trigger = $('.menu-trigger')
  menu = $('.menu-list')
  body = $('body')

  trigger.click ->
    menu.toggleClass('menu-open')
    body.toggleClass('has-menu')
    $(this).toggleClass('is-close-button')
