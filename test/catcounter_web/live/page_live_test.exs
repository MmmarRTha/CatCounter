defmodule CatcounterWeb.PageLiveTest do
	use CatcounterWeb.ConnCase
	import Phoenix.LiveViewTest

	test "disconnected and connected render", %{conn: conn} do
		{:ok, page_live, disconnected_html} = live(conn, "/")
		assert disconnected_html =~ "0"
		assert render(page_live) =~ "0"
	end

	test "increment and decrement events", %{conn: conn} do
		{:ok, page_live, _disconnected_html} = live(conn, "/")
		assert render_click(page_live, :increment, %{}) =~ "1"
		assert render_click(page_live, :increment, %{}) =~ "2"
		assert render_click(page_live, :increment, %{}) =~ "3"
		assert render_click(page_live, :decrement, %{}) =~ "2"
		assert render_click(page_live, :decrement, %{}) =~ "1"
		assert render_click(page_live, :decrement, %{}) =~ "0"
	end

	test "clear event", %{conn: conn} do
		{:ok, page_live, _html} = live(conn, "/")
		assert render_click(page_live, :increment, %{}) =~ "1"
		assert render_click(page_live, :reset, %{}) =~ "0"
	end

end
