class PasswordManager
  def initialize
    @passwords = {}
  end
#takes two string args - service & password
#stores in a hash - only if password is valid
#eg. pwtest1 = PasswordManager.new
#    pwtest1.add("myspace","qwerty123")
#    pwtest1.add("facebook","password37!")
#    pwtest1.add("twitter","qwerty!@98")
  def add(service,password)
    @passwords[service] = password if password.length > 7 && password =~ /[!@$%&]/
  end
#takes on string of service as arg
#returns the password for the service
#eg. pwtest1.password_for("myspace")
#    => "qwerty123"  
  def password_for(service)
    return @passwords[service]
  end
#takes no arguments
#returns an array of services with stored passwords
#does not return passwords
#eg. pwtest1.services 
#    => "myspace","facebook"
  def services
    return @passwords.keys
  end
end
