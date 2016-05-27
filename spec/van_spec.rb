require 'van'

describe Van  do
    it { is_expected.to respond_to(:load).with(1).argument}
    it { is_expected.to respond_to(:unload)}

    context "when the van is not empty" do
        let(:van) do 
            v= Van.new
            v.load(double :item) 
            v
        end

        it "#unload returns an array of items" do
            p van
        end
    end 
end