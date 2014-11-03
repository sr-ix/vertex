require "vertex/version"
require "csv"

module Vertex
  class CSVMerge
    def read_file(filename)
      file = File.open(filename)
      content = file.read
      file.close
      return content
    end

    def csv_to_a_of_h(content)
      csv = CSV.new(content, :headers=>true, :header_converters=>:symbol)
      a_of_h = csv.to_a.map {|row|row.to_hash}
      return a_of_h
    end

    def squash(key, arr)
      new_hash = Hash.new
      arr.each do |a_of_h|
        a_of_h.each do |h|
          if h.has_key? key
            if new_hash[h[key]]
              new_hash[h[key]].merge! h
            else
              new_hash[h[key]] = h
            end
          end
        end
      end
      return new_hash
    end

    def get_unique_keys(hash)
      keys_list = Array.new
      hash.each do |k,v|
        v.each_key do |key|
          keys_list.push key
        end
      end
      return keys_list.uniq
    end

    def h_of_h_to_rows(hash, keys_list)
      rows = Array.new
      rows.push keys_list
      hash.each do |k,v|
        row = Array.new
        keys_list.each do |key|
          if v.has_key? key
            row.push v[key]
          else
            row.push ""
          end
        end
        rows.push row
      end
      return rows
    end

    def print_csv(rows)
      rows.each do |row|
        puts CSV.generate_line row
      end

      #csv_string = CSV.generate do |csv|
      #  csv << rows[0]
      #  csv << rows[1]
      #  csv << rows[2]
      #  csv << rows[3]
      #  csv << rows[4]
      #  csv << rows[5]
      #end
    end
  end
end
