require_relative "timer"

RSpec.describe "My timer method" do
  it "should time how long the block takes" do
    # "sleep" suspends the current thread
    # for a number of seconds so "sleep(1)"
    # waits 1 seconds when "yield" is called in
    # the "timer" method
    total_time = timer { sleep(1) }
    expect(total_time > 0.509).to eq(true)
    expect(total_time > 0.5).to eq(true)
  end
end