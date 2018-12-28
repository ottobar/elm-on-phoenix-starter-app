defmodule ElmOnPhoenixStarterAppWeb.ErrorViewTest do
  use ElmOnPhoenixStarterAppWeb.ConnCase, async: true

  # Bring render/3 and render_to_string/3 for testing custom views
  import Phoenix.View

  test "renders 404.html" do
    assert render_to_string(ElmOnPhoenixStarterAppWeb.ErrorView, "404.html", []) =~
             "Not Found (404)"
  end

  test "renders 500.html" do
    assert render_to_string(ElmOnPhoenixStarterAppWeb.ErrorView, "500.html", []) =~
             "Internal Server Error (500)"
  end
end
