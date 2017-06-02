require 'spec_helper'

describe "defines::simple" do
  let(:title) { 'test12345' }
  it { is_expected.to contain_defines__simple("test12345") }
  it { is_expected.to contain_notify("test12345") }
end
