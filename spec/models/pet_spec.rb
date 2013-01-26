require 'spec_helper'
describe Pet do
  before :each do
    @pet = FactoryGirl.create(:pet)
  end
  
  it 'validates the presence of the customer' do
    @pet.customer = nil
    lambda{
      @pet.save!   
    }.should raise_error ActiveRecord::RecordInvalid, "Validation failed: Customer can't be blank"
  end
  
  context 'name validation' do  
    it 'validates the presence of name' do
      @pet.name = nil
      lambda{
        @pet.save!   
      }.should raise_error ActiveRecord::RecordInvalid, "Validation failed: Name can't be blank"
    end
    
    it 'validates the length of name' do
      @pet.name = '0123456789012345678901234567890123456'
      lambda{
        @pet.save!   
      }.should raise_error ActiveRecord::RecordInvalid, "Validation failed: Name is too long (maximum is 35 characters)"
    end
  end
  
  context 'pet_type validation' do
    it 'allows :dog as pet_type' do
      @pet.pet_type = Pet::DOG
      @pet.save!
      @pet.reload
      @pet.pet_type.to_sym.should == Pet::DOG
    end
    
    it 'allows :cat as pet_type' do
      @pet.pet_type = Pet::CAT
      @pet.save!
      @pet.reload
      @pet.pet_type.to_sym.should == Pet::CAT
    end
    
    it 'allows :bird as pet_type' do
      @pet.pet_type = Pet::BIRD
      @pet.save!
      @pet.reload
      @pet.pet_type.to_sym.should == Pet::BIRD
    end
    
    it 'does not allow other value for pet_type' do
      @pet.pet_type = :other_value
      lambda{
        @pet.save!   
      }.should raise_error ActiveRecord::RecordInvalid, 'Validation failed: Pet type must be dog or cat or bird'
    end
  end
  
  it 'validates the presence of age' do
    @pet.age = nil
    lambda{
      @pet.save!   
    }.should raise_error ActiveRecord::RecordInvalid, "Validation failed: Age can't be blank"
  end
  
  it 'validates the presence of weight' do
    @pet.weight = nil
    lambda{
      @pet.save!   
    }.should raise_error ActiveRecord::RecordInvalid, "Validation failed: Weight can't be blank"
  end
  
  it 'validates the presence of last_visit' do
    @pet.last_visit = nil
    lambda{
      @pet.save!   
    }.should raise_error ActiveRecord::RecordInvalid, "Validation failed: Last visit can't be blank"
  end
  
end