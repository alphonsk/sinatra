require 'sinatra'
require 'mailgun-ruby'


get '/' do
    @page_title = "welcome to morgan stanley"
    erb :index
end

get '/contactus' do
    @firstname = params["firstname"]
    @lastname = params["lastname"]
    @subject = params["subject"]
    erb :contactus
end

get '/whatwedo' do
    erb :whatwedo
end

post '/contactus' do
    @firstname =  params["firstname"]
    store_name("firstname.text",@firstname)
    redirect "index"
end

get '/faq' do
    erb :faq
  end


# # First, instantiate the Mailgun Client with your API key
# mg_client = Mailgun::Client.new 'api:a3e1a81609bad03340d18202d0735ee7-c1fe131e-22d70536'

# # Define your message parameters
# message_params =  { from: "Mailgun Sandbox <postmaster@sandbox9b0d88f9da5b477ea46b969a50385319.mailgun.org>",
#                     to:   "<alphons3k@yahoo.com>",
#                     subject: 'The Ruby SDK is awesome!',
#                     text:    'It is really easy to send a message!'
#                   }

# # Send your message through the client
# mg_client.send_message 'sending_domain.com', message_params

# def send_simple_message
#     RestClient.post "https://api:a3e1a81609bad03340d18202d0735ee7-c1fe131e-22d70536"
#         "@api.mailgun.net/v3/sandbox9b0d88f9da5b477ea46b969a50385319.mailgun.org/messages"
#         :from =  "Mailgun Sandbox <postmaster@sandbox9b0d88f9da5b477ea46b969a50385319.mailgun.org>";
#         :to = "george kkk <alphons3k@yahoo.com>";
#         :subject = "Hello george kkk";
#         :text  = "Congratulations george kkk, you just sent an email with Mailgun!  You are truly awesome!"
# end

get '/' do
    # filepath = File.join(settings.public_folder, 'index.html')
    # File.read(filepath)
end
 