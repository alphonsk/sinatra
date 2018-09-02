require 'sinatra'
require 'mailgun-ruby'
require "sendgrid-ruby"



get '/' do
    @page_title = "welcome to morgan stanley"
    erb :index
end


 

get '/whatwedo' do
    erb :whatwedo
end

 

get '/faq' do
    erb :faq
  end


  get '/contactus' do

    @name = params["name"]
    @email = params["email"]
    @my_email = "alphons3k@yahoo.com"
    @subject = params["subject"]

    from = SendGrid::Email.new(email: 'alphons3k@yahoo.com')
    to = SendGrid::Email.new(email: 'alphons3k@yahoo.com')
    subject = 'idk y'
    content = SendGrid::Content.new(type: 'text/plain', value: "her jeu adj peja jh.")
    mail = SendGrid::Mail.new(from, subject, to, content)
     sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'] )
    response = sg.client.mail._('send').post(request_body: mail.to_json)
   
 end  

 

 
#  ruby sinatra.rb