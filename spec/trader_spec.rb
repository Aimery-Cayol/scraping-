require_relative '../lib/trader.rb'


describe "the array's global shape" do
  it "should return crypto, and crypto is not nil" do
    expect(arr[0]).to eq({"BTC"=>10897.69})
    expect(arr[1]).to eq({"ETH"=>351.04})
    #expect(array(0)).to eq({"BTC"=>10897.69})
  end
end

