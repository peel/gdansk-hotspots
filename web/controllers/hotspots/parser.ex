defmodule GdnWifi.Hotspots.Parser do
  alias GdnWifi.Hotspots.Spot

  def parse(csv) do
    csv
    |> Codepagex.from_string!(:ascii, Codepagex.use_utf_replacement)
    |> String.split("\n", trim: true)
    |> Stream.map(&("#{&1}"))
    |> CSV.decode(separator: ?;)
    |> Stream.map(
      fn(x) ->
        [_id, name, lat, long] = x
        %Spot{name: name, lat: lat, long: long}
      end)
  end
end
