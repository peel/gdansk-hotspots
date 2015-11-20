defmodule GdnWifi.Hotspots.ParserTest do
  use ExUnit.Case

  alias GdnWifi.Hotspots.Parser
  alias GdnWifi.Hotspots.Spot

  def sample_string do
  """
  LOK001;Park Kuzniczki;54.382059;18.607072
  LOK002;Plac Wybickiego;54.384332;18.609666
  LOK007;Dworzec PKS;54.356219;18.642615
  """
  end

  test "parse CSV data into list of hotspots" do
    spots = [
      %Spot{name: "Park Kuzniczki", lat: "54.382059", long: "18.607072"},
      %Spot{name: "Plac Wybickiego", lat: "54.384332", long: "18.609666"},
      %Spot{name: "Dworzec PKS", lat: "54.356219", long: "18.642615"}
    ]
    assert spots == Parser.parse(sample_string) |> Enum.into([])
   end
end
