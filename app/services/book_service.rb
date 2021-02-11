class BookService

  attr_reader :author

  def def initialize(attr)
    @attr = attr
  end

  def first_capital_letter(string)
    prepositions = ['da', 'de', 'do', 'das', 'dos']

    new_prepositon = ''
    parts = string.split(' ')

    for part in parts
      if prepositions.count(part.downcase) == 1
        new_prepositon =  new_prepositon  + ' ' + part.downcase
      else
        new_prepositon = new_prepositon +  ' ' + part[0].upcase + part[1, part.length].downcase
      end
    end

    new_prepositon
  end

  def book_authors
    inherited_names = ['filho', 'filha', 'neto', 'neta', 'sobrinho', 'sobrinha']

    return '' if length(@attr) == 0

    parts = @attr.split(' ')

    return part[0].upcase if parts.length == 1

    if inherited_names.count(parts[parts.length-1, parts.length][0].downcase) and parts.length >= 3
      first_names = parts[0, parts.length - 2]
      last_two_names = parts[parts.length - 2,parts.length]
      names = first_names
      names.append(' '.join(last_two_names))
      parts = names
    end

    parts[parts.length - 1].upcase + ',' + first_capital_letter(''.join(parts[0,parts.length - 1]))
  end
end