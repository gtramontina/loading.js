@loading = (->
  showAnimation = undefined
  hideAnimation = undefined

  overlay = undefined
  overlayDiv = ->
    return overlay if overlay?
    overlay = document.createElement 'div'
    overlay.setAttribute 'id', 'overlay-loading'
    overlay.appendChild messageSpan()
    document.body.appendChild overlay
    overlay

  message = undefined
  messageSpan = ->
    return message if message?
    message = document.createElement 'span'

  setShowAnimation = (animation) -> showAnimation = animation
  setHideAnimation = (animation) -> hideAnimation = animation

  showing = false
  show = (message) ->
    messageSpan().innerHTML = message
    return if showing
    showing = true
    if typeof showAnimation is 'function'
    then showAnimation overlayDiv()
    else overlayDiv().style.display = 'initial'

  hide = ->
    showing = false
    if typeof hideAnimation is 'function'
    then hideAnimation overlayDiv()
    else overlayDiv().style.display = 'none'

  # API
  show          : show
  hide          : hide
  setShowAnimation : setShowAnimation
  setHideAnimation : setHideAnimation
)()

