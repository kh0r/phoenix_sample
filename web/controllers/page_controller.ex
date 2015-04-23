defmodule PhoenixSample.PageController do
  use PhoenixSample.Web, :controller

  plug :action

  def index(conn, _params) do
    render conn, "index.html"
  end
end
