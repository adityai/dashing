class Dashing.HipchatPresence extends Dashing.Widget

  ready: ->
    super

  onData: (data) ->
    node = $(@node)
    node.removeClass('status-chat status-away status-dnd status-xa status-offline')
    node.addClass "status-#{data.presence_class}"
