require 'spec_helper'

describe "defines::simple" do
  let(:title) { 'test' }
  it { contain_defines__simple("test") }
  it { contain_notify("test") }
end
