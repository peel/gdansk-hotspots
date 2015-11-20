defmodule GdnWifi.Hotspots.Gateway do
  use HTTPoison.Base
  @endpoint "http://www.gdanskwifi.pl/wp-content/uploads/2015/07/UM_Gdansk.csv"

  def get do get("") end
  def get! do get!("") end

  defp process_url(_url) do
    @endpoint
  end
end
