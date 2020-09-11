require "digest"  # encry/decryp

module Encryption
  def encrypt(str) 
    Digest::SHA2.hexdigest(str)
  end

  def decrypt(estr) 
  
  end
end

module HackyEncryption
  def encrypt(str) 
    "you are hacked"
  end

  def decrypt(estr) 
  
  end

  def salt 
    Time.new
  end
end