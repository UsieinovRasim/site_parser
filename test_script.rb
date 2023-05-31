require_relative 'site_parser'

parser = SiteParser.new
parser.login('your_username', 'your_password')
sleep 5
contacts = parser.gather_contacts
puts contacts
