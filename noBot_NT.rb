require 'discordrb'

$bot = Discordrb::Bot.new token: '###########################################################'


# Non-passive commands (You have to @mention) the bot
$bot.mention() do | event|
		command ="#{ event.message.content}"
		channel = event.message.channel
		user = event.message.user
		commands( command, channel, user ) 
end

#TODO Add more commands
def commands( command, channel, user )
	case command	
		when /How many servers are you on/
			message = "I'm on as many are on my Devs terminal page Baka (Does he think I'd show him that info)"
			puts $bot.servers
		when /I love you/
			message = "Kill yourself"
                when /i love you/
			message = "Kill yourself and learn how to capitalize"
		when /Why are you so mean/
			message	= "Because you're an idiot " + user.display_name
		when /How are you/
			message = "Why would I tell you how I am Baka " + user.display_name
		else
			message = "What the hell are you going on about Baka " + user.display_name
	end
	channel.send_message( message )
end


#Passive commands
$bot.message() do| event|
		message = event.message.content
		channel = event.message.channel
		user = event.message.user
		passive_command( message, channel, user)
end

#TODO Add these

def passive_command( message, channel, user  ) 
	respond = ""
	case message
	 when /a/
		respond << "no"
	 when /b/
		respond << "no"
         when /c/
		respond << "No"
         when /d/
		respond << "n-no"
         when /e/
		respond << "no"
         when /f/
		respond << "NO"
         when /g/
		respond << "no"
         when /h/
		respond << "no #{user.display_name}"
	 when /i/
		respond << "no #{user.display_name}"
	 when /j/
		respond << "no"
	 when /k/
		respond << "no"
         when /l/
		respond << "No"
         when /m/
		respond << "n-no"
         when /n/
		respond << "no"
         when /o/
		respond << "NO"
         when /p/
		respond << "no"
         when /q/
		respond << "no #{user.display_name}"
	 when /r/
		respond << "no #{user.display_name}"
	 when /s/
	        respond << "no"
         when /t/
		respond << "No"
         when /u/
		respond << "n-no"
         when /v/
		respond << "no"
         when /w/
		respond << "NO"
         when /x/
		respond << "no"
         when /y/
		respond << "no #{user.display_name}"
	 when /z/
		respond << "no #{user.display_name}"
         when /1/
		respond << "NO"
         when /2/
		respond << "no"
         when /3/
		respond << "no #{user.display_name}"
	 when /4/
		respond << "no #{user.display_name}"
	 when /5/
		respond << "no"
         when /6/
		respond << "No"
         when /7/
		respond << "n-no"
         when /8/
		respond << "no"
         when /9/
		respond << "NO"
         when /0/
		respond << "no"
	else 
		return
		end
	rng = rand(10)
	puts rng
	

	if rng == 0
		channel.send_message( respond )
	end

end
#Speak through her



#
$bot.run
