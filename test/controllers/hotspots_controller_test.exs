defmodule GdnWifi.HotspotsControllerTest do
  use GdnWifi.ConnCase

  test "GET /" do
    conn = get conn(), "/"
    assert html_response(conn, 200) =~ ""
  end
end
