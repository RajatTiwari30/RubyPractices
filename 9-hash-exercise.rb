family = {
  sisters: ["s1","s2","s3"],
  brothers: ["b1","b2","b3"],
  uncles: ["u1","u2","u3"],
  aunts: ["a1","a2","a3"]
}

# p family[:sisters]

# Tasks
# Get immediate family members

imm_fam = family[:brothers] + family[:sisters]
# p imm_fam


#ifamily_members = family.select # try using select or some other method
# sisters and brothers should be available in this variable
# ["b1","b2","b3","s1","s2","s3"]

imm_fam = family.select do |key, val|
   key == :sisters || key == :brothers
end

p imm_fam.values.flatten
