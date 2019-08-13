defmodule DemoWeb.WelcomeLive do
  use Phoenix.LiveView
  @moduledoc false

  def render(assigns) do
    ~L"""
    <div>
      <h2><%= @salutation %></h2>
    </div>
    """
  end

  def mount(_session, socket) do
    salutation = "Welcome to LiveView, from the Programming Phoenix team!"
    {:ok, assign(socket, salutation: salutation)}
  end

end
