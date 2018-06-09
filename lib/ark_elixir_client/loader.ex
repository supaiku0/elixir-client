defmodule ArkElixirClient.Loader do
  @moduledoc """
  Documentation for ArkElixirClient.Loader.
  """

  import ArkElixir

  @doc """
  Auto-configure the client loader.

  ## Examples

      iex> ArkElixirClient.Loader.autoconfigure(client)
      {:ok,
       %{
         "network" => %{
           "explorer" => "http://dexplorer.ark.io",
           "nethash" => "578e820911f24e039733b45e4882b73e301f813a0d2c31330dafda84534ffa23",
           "symbol" => "DѦ",
           "token" => "DARK",
           "version" => 30
         },
         "success" => true
       }}
  """
  @spec autoconfigure(Tesla.Client.t()) :: ArkElixirClient.response()
  def autoconfigure(client) do
    get(client, "api/loader/autoconfigure")
  end

  @doc """
  Get the blockchain status.

  ## Examples

      iex> ArkElixirClient.Loader.status(client)
      {:ok,
       %{"blocksCount" => 0, "loaded" => false, "now" => 3089786, "success" => true}}
  """
  @spec status(Telsa.Client.t()) :: ArkElixirClient.response()
  def status(client) do
    get(client, "api/loader/status")
  end

  @doc """
  Get the synchronisation status of the client.

  ## Examples

      iex> ArkElixirClient.Loader.sync(client)
      {:ok,
       %{
         "blocks" => -35,
         "height" => 3102327,
         "id" => "10803247886369746727",
         "success" => true,
         "syncing" => false
       }}
  """
  @spec sync(Tesla.Client.t()) :: ArkElixirClient.response()
  def sync(client) do
    get(client, "api/loader/status/sync")
  end
end
