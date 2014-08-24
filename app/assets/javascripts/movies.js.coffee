class @Movie
  @ready: ->
    $('div.rating').raty      
      readOnly: true          
      half: true              
      score: () ->
        return $(this).attr('data-score')
