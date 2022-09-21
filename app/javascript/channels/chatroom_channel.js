import consumer from "channels/consumer"
import { scroll_bottom } from "helpers/chat_room_functions";

consumer.subscriptions.create("ChatroomChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    // Called when there's incoming data on the websocket for this channel
    $("#chat-feed").append(data.mod_message)
    scroll_bottom();
  }
});
