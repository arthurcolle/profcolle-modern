defmodule Profcolle.Router do
  use Profcolle.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Profcolle do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    get "/mission", PageController, :mission
    get "/topics", PageController, :topics
    get "/biographical_highlights", PageController, :biographical_highlights
    get "/personal_education", PageController, :personal_education
    get "/teaching_experience", PageController, :teaching_experience
    get "/rates", PageController, :rates
    get "/endorsements", PageController, :endorsements
    get "/contact", PageController, :contact
  end

  # Other scopes may use custom stacks.
  # scope "/api", Profcolle do
  #   pipe_through :api
  # end
end
