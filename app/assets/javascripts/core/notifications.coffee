$(document).on 'turbolinks:load', ->
  $('.error').each (index) ->
    text = $(this).val()
    Notification.error text
    #$(this).remove()
    return

stack_bottomright =
  'dir1': 'up'
  'dir2': 'left'
  'firstpos1': 25
  'firstpos2': 25


Notification = error: (text) ->
  console.log stack_bottomright
  new PNotify(
    text: text,
    type: 'error'
    addclass: 'stack-bottom-right bg-danger',
    stack: stack_bottomright)
  return