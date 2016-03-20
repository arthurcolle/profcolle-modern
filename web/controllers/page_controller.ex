defmodule Profcolle.PageController do
  use Profcolle.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
  def mission(conn, _params) do
    render conn, "mission.html"
  end
  def topics(conn, _params) do
    render conn, "topics.html"
  end
  def biographical_highlights(conn, _params) do
    render conn, "biographical_highlights.html"
  end
  def personal_education(conn, _params) do
    render conn, "personal_education.html"
  end
  def teaching_experience(conn, _params) do
    render conn, "teaching_experience.html"
  end
  def rates(conn, _params) do
    render conn, "rates.html"
  end
  def endorsements(conn, _params) do
    render conn, "endorsements.html"
  end
  def contact(conn, _params) do
    render conn, "contact.html"
  end
end
