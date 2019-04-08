# Deoxyribonucleic acid (DNA) is a chemical found in the nucleus of cells and carries the "instructions" for the development and functioning of living organisms.
#
# If you want to know more http://en.wikipedia.org/wiki/DNA
#
# In DNA strings, symbols "A" and "T" are complements of each other, as "C" and "G". You have function with one side of the DNA (string, except for Haskell); you need to get the other complementary side. DNA strand is never empty or there is no DNA at all (again, except for Haskell).
#
# DNA_strand ("ATTGC") # return "TAACG"

def DNA_strand(dna)
  dna.tr('ATCG', 'TAGC')
  new_strand = []
  dna.split('').each do |letter|
    if letter === 'A'
      new_strand.push('T')
    elsif letter === 'T'
      new_strand.push('A')
    elsif letter === 'C'
      new_strand.push('G')
    elsif letter === 'G'
      new_strand.push('C')
    end
  end
  return new_strand.join('')
end

#using .tr
def DNA_strand(dna)
  dna.tr('ATCG', 'TAGC')
end
