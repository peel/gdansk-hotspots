defmodule GdnWifi.Hotspots.ResultSetTest do
  use ExUnit.Case

  def sample_string do
    """
    LOK001;Park Kuzniczki;54.382059;18.607072
    LOK002;Plac Wybickiego;54.384332;18.609666
    LOK007;Dworzec PKS;54.356219;18.642615
    """
  end

  test "parse CSV data into list of hotspots" do
  end
end
