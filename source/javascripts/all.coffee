#= require_tree ./vendor
#= require_tree .

$ ->
  $('#tagline').fitText(1.561)

  $('.client').on 'click', ->
    $client = $(@)
    $activeClient = $client.parent('.client-wrapper').siblings().find('.client.active')
    
    if $activeClient.length
      $activeClient.one 'transitionend webkitTransitionEnd oTransitionEnd otransitionend MSTransitionEnd', ->
        $client.addClass('active')
      $activeClient.removeClass('active')
    else
      $client.toggleClass('active')