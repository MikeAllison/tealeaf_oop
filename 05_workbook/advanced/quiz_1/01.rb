class SecretFile

  def initialize(secret_data, logger)
    @data = secret_data
    @logger = logger
  end

  def data
    @logger.create_log_entry
    @data
  end

end

class SecurityLogger
  def create_log_entry
    puts "Log entry created."
  end
end

logger = SecurityLogger.new
file = SecretFile.new("Here are the secrets.", logger)
p file.data
