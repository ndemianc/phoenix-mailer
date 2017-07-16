defmodule Teacher.MessageController do
  use Teacher.Web, :controller

  alias Teacher.Message
  alias Teacher.Mailer

  def new(conn, _params) do
    changeset = Message.changeset(%Message{})
    render(conn, "new.html", changeset: changeset)
  end

  def create(conn, %{"message" => message_params}) do
    changeset = Message.changeset(%Message{}, message_params)

    case Repo.insert(changeset) do
      {:ok, _message} ->
        Mailer.send_contact_email(message_params)
        # Exq.enqueue(Exq, "email", Teacher.SendEmailWorker, [message_params])
        conn
        |> put_flash(:info, "Message sent successfully.")
        |> redirect(to: message_path(conn, :new))
      {:error, changeset} ->
        render(conn, "new.html", changeset: changeset)
    end
  end

end
