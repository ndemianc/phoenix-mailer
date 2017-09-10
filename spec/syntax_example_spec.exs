defmodule SyntaxExampleSpec do
  use ESpec

  before value: 1

  let :a, do: shared.value + 1
  let :b, do: shared.value * 2

  it do: expect true |> to(be_true())
  it do: expect(2+2).to eq(4)

  describe "SyntaxExample" do
    context "a" do
      it "returns" do
        expect(a).to eq(2)
      end
    end

    context "b" do
      it "returns" do
        expect(b).to eq(2)
      end
    end

  end
end
