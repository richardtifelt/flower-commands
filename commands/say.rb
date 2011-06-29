class Say < Flower::Command
  respond_to "say", "whisper", "sing"
  
  def self.respond(command, message, sender, flower)
    case command
    when "whisper"
      system "say", "-vwhisper", message
    when "sing"
      system "say", "-vcello", message  
    when "say"
      system "say", message  
    end
  end

  def self.description
    "Say it with words"
  end
end
