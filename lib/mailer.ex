defmodule Teacher.Mailer do
  @config domain: "https://api.mailgun.net/v3/sandboxcf952100c69e43da805ae438006216eb.mailgun.org",
          key: "key-010b33a42ed7fe860a9aa0dfab38e95a"

  # use Mailgun.Client, @config

  # def send_contact_email(message_params) do
  #   send_email to: "sdemian@softserveinc.com",
  #              from: "sergeydemjanchyk@gmail.com",
  #              subject: message_params["subject"],
  #              text: message_params["body"]
  # end
end
