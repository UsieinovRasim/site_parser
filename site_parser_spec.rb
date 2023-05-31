require 'rspec'
require_relative 'site_parser'

describe SiteParser do
  let(:parser) { SiteParser.new }

  before do
    parser.login('your_username', 'your_password')
  end

  it 'gathers contacts' do
    contacts = parser.gather_contacts
    expect(contacts).to include('Almanca Bilen', 'Senior Specialist')
  end
end
