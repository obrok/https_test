defmodule HttpsTestWeb.PageController do
  use HttpsTestWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def create(conn, _params) do
    conn
    |> put_flash(:info, "Success!")
    |> render("index.html")
  end
end
