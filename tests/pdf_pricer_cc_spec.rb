require_relative 'test_helper'
require_relative "../pdf_pricer"

describe PDF do
  let(:case1) {PDF.new(590, 0, 10, true, true)}
  let(:case2) {PDF.new(10, 0, 0, false, false)}

  it "TC1" do
    expect(case1.bind_book_price(false)).to eq(24000)
  end

  it "TC2" do
    expect(case2.bind_book_price(true)).to eq(4000)
  end
end
