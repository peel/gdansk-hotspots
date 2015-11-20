defmodule GdnWifi.Hotspots.GatewayTest do
  use ExUnit.Case
  alias GdnWifi.Hotspots.Gateway

  test "grabbing file from GdanskWifi website" do
    HTTPoison.start
    assert match?({_, %HTTPoison.Response{body: _body, headers: _headers, status_code: _status}}, Gateway.get)
  end
  test "force grabbing file from GdanskWifi website" do
    HTTPoison.start
    assert match?(%HTTPoison.Response{body: _body, headers: _headers, status_code: _status}, Gateway.get!)
  end
end
