export let scroll_bottom = () => {
    let messages_feed = $("#messages-feed")
    if(messages_feed.length>0){
        $("#messages-feed").scrollTop(messages_feed[0].scrollHeight)
    }
}

export let submit_message = () => {
    $("#message_body").on("keydown", (e)=>{
        if(e.keyCode==13){
            $("button").click();
            $("#message_body").val("");
        }
    })
}