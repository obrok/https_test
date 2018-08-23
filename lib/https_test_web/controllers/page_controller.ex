defmodule HttpsTestWeb.PageController do
  use HttpsTestWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
