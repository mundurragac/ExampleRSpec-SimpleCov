require_relative 'test_helper'
require_relative "../pdf_pricer"


describe PDF do
  let(:pdf1) {PDF.new(300, 2, 5, true, true)}
  let(:pdf2) {PDF.new(650, 8, 8, true, true)}
  let(:pdf3) {PDF.new(200, 1, 2, false, false)}

  it "Should return the price depending on the client status and the book properties" do
    expect(pdf1.bind_book_price(false)).to eq(16000)
  end

  it "Should return the price depending on the client status and the book properties" do
    expect(pdf2.bind_book_price(true)).to eq(10000)
  end  

  it "Should return the price depending on the client status and the book properties" do
    expect(pdf3.bind_book_price(false)).to eq(4000)
  end  
end
