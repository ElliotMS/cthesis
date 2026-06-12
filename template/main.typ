#import "template/src/lib.typ": cth-thesis, appendix

#show: cth-thesis.with(
  title: "Title of Thesis",
  type: "bachelor", // or "master"
  gu: false,
  subtitle: "Optional subtitle",
  authors: ("Author's name", ),
  program: "[program]",
  department: "[department]",
  abstracts: (
    en: lorem(75),
    sv: lorem(75),
  ),
  keywords: ("chalmers", "typst", "thesis", "template"),
  supervisors: ("[supervisor's name]", ),
  examiner: "[examiners's name]",
  advisor: "[optional advisor's name]",
  co-examinor: "[optional co-examiner's name]",
  cover: (
    image: [],
    description: "[optional cover image]",
  ),
  preface: lorem(75),
  acknowledgments: lorem(75),
  year: datetime.today().year(),
  abbreviations: (
    "CTH" : "Chalmers Tekniska Högskola (Chalmers University of Technology)",
    "GU": "Göteborgs Universitet (University of Gothenburg)",
  ),
  nomenclature: (
    "Category A": (
      "A1": lorem(5),
      "A2": lorem(5),
    ),
    "Category B": (
      "B1": lorem(5),
      "B2": lorem(5),
    ),
  ),
  print: false, 
)

= Introduction

= Background

= Method

= Results

= Discussion

= Conclusion

// #bibliography("references.bib")

#show: appendix
= Appendix Title