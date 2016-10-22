///send_message(text, toClient);
var text = argument0;
var tc = argument1;
var buffer_mex = buffer_create(16 + string_byte_length(text), buffer_fixed, 1);
buffer_seek(buffer_mex, buffer_seek_start, 0);
buffer_write(buffer_mex, buffer_u8, 20); //msgid
buffer_write(buffer_mex, buffer_string, text);

if(tc)
{
    for(var i=0; i<ds_list_size(socket_list); i++)
    {
        var socket = socket_list[| i];
        network_send_packet(socket, buffer_mex, buffer_tell(buffer_mex));
    }
}
else
{
    network_send_packet(socket, buffer_mex, buffer_tell(buffer_mex));
}

buffer_delete(buffer_mex);


