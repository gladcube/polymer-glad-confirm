class GladConfirm
  is: \glad-confirm
  confirm: (message, @cb)->
    @set \message, message
    @$.dialog.open!
  _end: (event, {confirmed})-> if confirmed then @cb?!

|> ( .::) |> Polymer
