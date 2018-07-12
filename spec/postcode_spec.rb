require 'spec_helper'

describe Postcodesio do

  context 'requesting information on a single postcode works correctly' do

    before(:all) do
      @postcodesio = Postcodesio.new
      @response = @postcodesio.get_single_postcode('TW106TF') #input a postcode
    end

    it "should respond with a status message of 200" do
      expect(@response["status"]).to eql 200

    end

    it "should have a results hash" do
      expect(@response).to be_a Hash
    end

    it "should return a postcode between 5-7 in length"  do
      # The postcode always has a space in it, so the test won't work esp if you use TW106TF
      expect(@response["result"]["postcode"].length).to be_between(5,8)

    end

    it "should return an quality key integer between 1-9" do
      expect(@response["result"]["quality"]).to be_between(1,9)

    end

    it "should return an ordnance survey eastings value as integer" do
      expect(@response["result"]["eastings"]).to be_a Integer
    end

    it "should return an ordnance survey eastings value as integer" do
      # I'm assuming this test was meant to test the northings
      expect(@response["result"]["northings"]).to be_a Integer
    end

    it "should return a country which is one of the four constituent countries of the UK" do
      expect(@response["result"]["country"]).to eql("England").or eql("Wales").or eql("Scotland").or eql("Northern Ireland")
    end

    it "should return a string value for NHS authority " do
      expect(@response["result"]["nhs_ha"]).to be_a String
    end

    it "should return a longitude float value" do
      expect(@response["result"]["longitude"]).to be_a Float
    end

    it "should return a latitude float value" do
      expect(@response["result"]["latitude"]).to be_a Float
    end

    it "should return a parliamentary constituency string" do
      expect(@response["result"]["parliamentary_constituency"]).to be_a String
    end

    it "should return a european_electoral_region string" do
      expect(@response["result"]["european_electoral_region"]).to be_a String
    end

    it "should return a primary_care_trust string" do
      expect(@response["result"]["primary_care_trust"]).to be_a String
    end

    it "should return a region string" do
      expect(@response["result"]["region"]).to be_a String
    end

    it "should return a parish string" do
      expect(@response["result"]["parish"]).to be_a String
    end

    it "should return a lsoa string" do
      expect(@response["result"]["lsoa"]).to be_a String
    end

    it "should return a msoa string" do
      expect(@response["result"]["msoa"]).to be_a String
    end
    # admin ward and county are not documented however tested below

    it "should return a admin_district string" do
      expect(@response["result"]["admin_district"]).to be_a String
    end

    it "should return a incode string of three characters" do
      expect(@response["result"]["incode"].length).to eq (3)
    end

    it "should return a msoa string" do
      expect(@response["result"]["msoa"]).to be_a String
    end

    it "should return a incode string of 3-4 characters" do
      expect(@response["result"]["incode"].length).to be_between(3,4)
    end
  end

  context "multiple postcodes validation" do

    before(:all) do
      @postcodesio = Postcodesio.new
      @response = @postcodesio.get_multiple_postcodes(["TW106TF","SE146DS","EC1V2SD"]) #Add in array of postcodes
    end

    xit "should respond with a status message of 200" do
    end

    xit "should return the first query as the first postcode in the response" do
    end

    xit "should return the second query as the first postcode in the response" do
    end

    xit "should have a results hash" do
    end

    xit "should return a postcode between 5-7 in length"  do
    end

    xit "should return an quality key integer between 1-9" do
    end

    xit "should return an ordnance survey eastings value as integer" do
    end

    xit "should return an ordnance survey eastings value as integer" do
    end

    xit "should return a country which is one of the four constituent countries of the UK" do
    end

    xit "should return a string value for NHS authority " do
    end

    xit "should return a longitude float value" do
    end

    xit "should return a latitude float value" do
    end

    xit "should return a parliamentary constituency string" do
    end

    xit "should return a european_electoral_region string" do
    end

    xit "should return a primary_care_trust string" do
    end

    xit "should return a region string" do
    end

    xit "should return a parish string" do
    end

    xit "should return a lsoa string" do
    end

    xit "should return a msoa string" do
    end
    # admin ward and county are not documented however tested below

    xit "should return a admin_district string" do
    end

    xit "should return a incode string of three characters" do
    end

    xit "should return a msoa string" do
    end

    xit "should return a incode string of 3-4 characters" do
    end

    xit "should have a results hash" do
    end

    xit "should return a postcode between 5-7 in length"  do
    end

    xit "should return an quality key integer between 1-9" do
    end

    xit "should return an ordnance survey eastings value as integer" do
    end

    xit "should return an ordnance survey eastings value as integer" do
    end

    xit "should return a country which is one of the four constituent countries of the UK" do
    end

    xit "should return a string value for NHS authority " do
    end

    xit "should return a longitude float value" do
    end

    xit "should return a latitude float value" do
    end

    xit "should return a parliamentary constituency string" do
    end

    xit "should return a european_electoral_region string" do
    end

    xit "should return a primary_care_trust string" do
    end

    xit "should return a region string" do
    end

    xit "should return a parish string" do
    end

    xit "should return a lsoa string" do
    end

    xit "should return a msoa string" do
    end
    # admin ward and county are not documented however tested below

    xit "should return a admin_district string" do
    end

    xit "should return a incode string of three characters" do
    end

    xit "should return a msoa string" do
    end

    xit "should return a incode string of 3-4 characters" do
    end

  end


end
