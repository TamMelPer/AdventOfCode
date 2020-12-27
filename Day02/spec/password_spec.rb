require 'password.rb'

describe '#check_password' do
  it 'returns true if the password is valid' do
    expect(check_password(1, 3, "a", "abcde")).to eq true
  end

  it 'returns false if the password is not valid' do
    expect(check_password(1, 3, "b", "cdefg")).to eq false
  end

  it 'returns false if the min is higher than count of letter in password' do
    expect(check_password(2, 3, "a", "abcde")).to eq false
  end


    it 'returns true if the count of the letter in the password is greater than or equal to the min' do
      expect(check_password(2, 3, "a", "aabcde")).to eq true
    end

  it 'returns false if the count of letter in password is greater than max' do
    expect(check_password(2, 3, "a", "aaaabcde")).to eq false
  end
end



# For example, suppose you have the following list:
#
# 1-3 a: abcde
# 1-3 b: cdefg
# 2-9 c: ccccccccc
# Each line gives the password policy and then the password. The password policy indicates
# the lowest and highest number of times a given letter must appear for the password to be valid.
# For example, 1-3 a means that the password must contain a at least 1 time and at most 3 times.
#
# In the above example, 2 passwords are valid. The middle password, cdefg, is not; it contains
# no instances of b, but needs at least 1. The first and third passwords are valid: they contain
# one a or nine c, both within the limits of their respective policies.
# How many passwords are valid according to their policies?
#
# input           | Output
# 1-3 a: abcde    | True
# 1-3 b: cdefg    | False
# 2-9 c: ccccccccc| True
# 4 paramaters? min, max, letter, password
# method: check_password(min, max, letter, password)
#
# input                   | Output
# [true, true, false]     | 2
# method: valid_passwords
