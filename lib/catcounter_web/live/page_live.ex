defmodule CatcounterWeb.PageLive do
  use CatcounterWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok,
    socket
    |> assign(number: 0)}
  end

  def handle_event("increment", _params, socket) do
    {:noreply,
    socket
    |> update(:number, &(&1 + 1))}
  end

  def handle_event("decrement", _params, socket) do
    {:noreply,
    socket
    |> update(:number, &max(0, &1 - 1))}
  end

  def handle_event("reset", _params, socket) do
    {:noreply,
    socket
    |> assign(number: 0)}
  end
end
