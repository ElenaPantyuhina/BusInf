# encoding: utf-8
require 'spec_helper'

describe User do

  before(:each) do
    #attr =
  end

  it "should create a new instance given valid attributes" do
    User.create!(@attr)
  end

  it "Убедитесь, что все обязательные поля заполнены" do
    no_name_user = User.new(@attr.merge(:user_name => ""))
    no_name_user.should_not be_valid
    no_surname_user = User.new(@attr.merge(:user_surname => ""))
    no_surname_user.should_not be_valid
    no_secondname_user = User.new(@attr.merge(:user_secondname => ""))
    no_secondname_user.should_not be_valid
    no_login_user = User.new(@attr.merge(:user_login => ""))
    no_login_user.should_not be_valid
    no_password_user = User.new(@attr.merge(:user_password => ""))
    no_password_user.should_not be_valid
    no_email_user = User.new(@attr.merge(:user_email => ""))
    no_email_user.should_not be_valid
  end

  it "should accept valid email addresses" do
    addresses = %w[user@foo.com THE_USER@foo.bar.org first.last@foo.jp]
    addresses.each do |address|
      valid_email_user = User.new(@attr.merge(:user_email => address))
      valid_email_user.should be_valid
    end
  end

  it "should reject invalid email addresses" do
    addresses = %w[user@foo,com user_at_foo.org example.user@foo.]
    addresses.each do |address|
      invalid_email_user = User.new(@attr.merge(:user_email => address))
      invalid_email_user.should_not be_valid
    end
  end

   it "should reject duplicate email addresses" do
    # Put a user with given email address into the database.
    User.create!(@attr)
    user_with_duplicate_email = User.new(@attr)
    user_with_duplicate_email.should_not be_valid
   end

   it "should reject duplicate login" do
    # Put a user with given email address into the database.
    User.create!(@attr)
    user_with_duplicate_login = User.new(@attr)
    user_with_duplicate_login.should_not be_valid
   end

  it "should reject email addresses identical up to case" do
    upcased_email = @attr[:email].upcase
    User.create!(@attr.merge(:email => upcased_email))
    user_with_duplicate_email = User.new(@attr)
    user_with_duplicate_email.should_not be_valid
  end


 #describe "password validations" do

  #  it "should require a password" do
   #   User.new(@attr.merge(:user_password => "", :password_confirmation => "")).
    #    should_not be_valid
    #end

    #it "should require a matching password confirmation" do
     # User.new(@attr.merge(:password_confirmation => "invalid")).
      #  should_not be_valid
    #end

    #it "should reject short passwords" do
     # short = "a" * 6
      #hash = @attr.merge(:user_password => short, :password_confirmation => short)
      #User.new(hash).should_not be_valid
    #end

    #it "should reject long passwords" do
     # long = "a" * 15
      #hash = @attr.merge(:user_password => long, :password_confirmation => long)
      #User.new(hash).should_not be_valid
    #end
    #end

  #describe "password encryption" do

  #  before(:each) do
   #   @user = User.create!(@attr)
    #end

    #it "should have an encrypted password attribute" do
     # @user.should respond_to(:encrypted_password)
    #end

   # it "should set the encrypted password" do
    #  @user.encrypted_password.should_not be_blank
    #end


    #describe "has_password? method" do

    #  it "should be true if the passwords match" do
     #   @user.has_password?(@attr[:user_password]).should be_true
     # end

      #it "should be false if the passwords don't match" do
       # @user.has_password?("invalid").should be_false
      #end
    #end


     #describe "authenticate method" do

      #it "should return nil on email/password mismatch" do
       # wrong_password_user = User.authenticate(@attr[:user_email], "wrongpass")
        #wrong_password_user.should be_nil
      #end

      #it "should return nil for an email address with no user" do
      #  nonexistent_user = User.authenticate("bar@foo.com", @attr[:user_password])
       # nonexistent_user.should be_nil
      #end

      #it "should return the user on email/password match" do
       # matching_user = User.authenticate(@attr[:email], @attr[:user_password])
        #matching_user.should == @user
      #end
     #end
 #end

end