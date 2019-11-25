App.room = App.cable.subscriptions.create "RoomChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

	received: (data) ->
  	$("#messages").append(data.message)

	speak: ->
 		@perform "speak"


	$(document).on "keypress", '[data-behavior="room_speaker"]', (event) ->
 		if event.KeyCode is 13 # return = send
   	console.log(event.target.value)
   	App.room.speak event.target.value
   	event.target.value = ""
   	event.preventDefault() 
