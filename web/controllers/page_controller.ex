defmodule Profcolle.PageController do
  use Profcolle.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
