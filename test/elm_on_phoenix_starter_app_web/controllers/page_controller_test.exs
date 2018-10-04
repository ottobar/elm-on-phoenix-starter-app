defmodule ElmOnPhoenixStarterAppWeb.PageControllerTest do
  use ElmOnPhoenixStarterAppWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get(conn, "/")
    assert html_response(conn, 200) =~ ~s(<script src="/js/main.js">)
  end
end
