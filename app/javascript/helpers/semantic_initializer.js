import { scroll_bottom,submit_message } from "helpers/chat_room_functions";

$(document).on('turbo:load', function () {    
    $('.ui.dropdown').dropdown();
    $('.ui.accordion').accordion()
    $('.message .close')
    .on('click', function() {
        $(this)
        .closest('.message')
        .transition('fade')
        ;
    });
    scroll_bottom();
    submit_message();
})


