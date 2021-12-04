-- https://rubenwardy.com/minetest_modding_book/en/players/chat.html#sending-messages-to-all-players

minetest.register_chatcommand("help", {
	description = "Stupid stuff",
	func = function(name)
		local player = minetest.get_player_by_name(name)
		minetest.chat_send_player(name, "This is a basic thing")
	end
})

minetest.register_on_joinplayer(function(player)
	minetest.chat_send_all("Welcome " .. player:get_player_name() .. " to Skegcraft MT!")
--	minetest.chat_send_player(player:get_player_name(), "Welcome to Skegcraft!")
end)
