defmodule ArkElixirClient.DelegateTest do
  use ExUnit.Case
  import ArkElixirClient.Delegate

  @client ArkElixirClient.Client.new(%{
            protocol: "https",
            ip: "dexplorer.ark.io",
            port: 8443,
            nethash: "578e820911f24e039733b45e4882b73e301f813a0d2c31330dafda84534ffa23",
            version: "1.1.1",
            network_address: ArkElixirClient.Client.devnet_network_address
          })

  test "call ArkElixirClient.Delegate.count" do
    response = count(@client)

    assert({:ok, _} = response)
  end

  test "call ArkElixirClient.Delegate.search" do
    response = search(@client, "bold", limit: 2)

    assert({:ok, _} = response)
  end

  test "call ArkElixirClient.Delegate.voters" do
    response =
      voters(@client, "022cca9529ec97a772156c152a00aad155ee6708243e65c9d211a589cb5d43234d")

    assert({:ok, _} = response)
  end

  test "call ArkElixirClient.Delegate.delegate" do
    response =
      delegate(
        @client,
        publicKey: "022cca9529ec97a772156c152a00aad155ee6708243e65c9d211a589cb5d43234d"
      )

    assert({:ok, _} = response)
  end

  test "call ArkElixirClient.Delegate.delegates" do
    response = delegates(@client)

    assert({:ok, _} = response)
  end

  test "call ArkElixirClient.Delegate.fee" do
    response = fee(@client)

    assert({:ok, _} = response)
  end

  test "call ArkElixirClient.Delegate.forged_by_account" do
    response =
      forged_by_account(
        @client,
        "022cca9529ec97a772156c152a00aad155ee6708243e65c9d211a589cb5d43234d"
      )

    assert({:ok, _} = response)
  end

  test "call ArkElixirClient.Delegate.next_forgers" do
    response = next_forgers(@client)

    assert({:ok, _} = response)
  end

  test "call ArkElixirClient.Delegate.forging_status" do
    response =
      forging_status(
        @client,
        "022cca9529ec97a772156c152a00aad155ee6708243e65c9d211a589cb5d43234d"
      )

    assert({:ok, _} = response)
  end
end
