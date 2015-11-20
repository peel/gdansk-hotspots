defmodule GdnWifi.Hotspots.ResultStream do
  alias GdnWifi.Hotspots.Parser
  alias GdnWifi.Hotspots.Gateway

  def new do
    fetch_list |> Parser.parse
  end

  defp fetch_list do
    response = Gateway.get!
    response.body
  end
end
