#nested data structure: biology textbook with units that have a name, chapter amounts, names, and starting page numbers

biology_textbook = {
  unit_1: {
    "name" => "Basics",
    "number_of_chapters" => 3,
    "chapter_names" => ["Introduction", "Fundamental Terms and Concepts", "The 6 Kingdoms" ],
    "starts_on_page" => 10
  },
  unit_2: {
    "name" => "Animals",
    "number_of_chapters" => 4,
    "chapter_names" => ["Parts of the Animal Kingdom", "Cell Type", "Reproduction and Growth", "Eating"],
    "starts_on_page" => 130
  },
  unit_3: {
    "name" => "Plants",
    "number_of_chapters" => 4,
    "chapter_names" => ["Parts of the Plant Kingdom", "Cell Type", "Photosynthesis", "Reproduction"],
    "starts_on_page" => 220
  },
  unit_4: {
    "name" => "Archaebacteria and Eubacteria",
    "number_of_chapters" => 5,
    "chapter_names" => ["Parts of the Two Bacteria Kingdoms", "Cell Type", "Making Food", "Cellular Characteristics", "Cellular Activity"],
    "starts_on_page" => 300
  },
  unit_5: {
    "name" => "Fungi",
    "number_of_chapters" => 4,
    "chapter_names" => ["Parts of the Fungi Kingdom", "Obtaining Nutrition", "Reproduction", "Cellular Characteristics"],
    "starts_on_page" => 500
  },
  unit_6: {
    "name" => "Protists",
    "number_of_chapters" => 3,
    "chapter_names" => ["Parts of the Protist Kingdom", "Obtaining Nutrition and Reproducing", "Cellular Characteristics"],
    "starts_on_page" => 620
  }
}

#reverse the chapter names in unit_6's chapter names array
biology_textbook[:unit_6]['chapter_names'].reverse

#change the starting page number in unit_3
biology_textbook[:unit_3]['starts_on_page'] = 225
p biology_textbook[:unit_3]

#add a unit to the end of the textbook for end matter
biology_textbook.store(:unit_7, {"contents" => "end matter"})
p biology_textbook