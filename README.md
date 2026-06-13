# CTHesis
An unofficial, slightly opinionated [Typst](https://typst.app/home/) template for theses at Chalmers University of Technology (Gothenburg, Sweden), originally developed for my [bachelors thesis](https://github.com/lucazffz/sisyphus/blob/a0ab5fa1811f1870f3163ca63cc06d2607e1aebe/docs/bachelors-thesis.pdf).

The covers and front matter are based on Chalmers's [official LaTeX template](https://www.overleaf.com/project/6004160ea0757c2de4009236) for bachelors theses.

## Overview
### Layout
- Front and back covers
- Title page
- Imprint page
- English and Swedish abstract pages
- Preface page
- Acknowledgements page
- List of abbreviations
- Nomenclature
- Table of contents
- List of figures
- List of tables

### Miscellaneous features
- Supports both English and Swedish via native `set text(lang: "en")` and `set text(lang: "sv")`
- Supports both bachelor's and master's theses
- Supports University of Gothenburg collaborations
- Custom styled level 1 headers for chapters and appendices 
- Numeric numbering for chapters and alphabetical for appendices (via `#show: appendix`)
- A `caption` function for specifying separate figure captions in the list of figures and underneath figures.
- Optional, recto-aligned page formatting for physical printing
- Uses `Arial` font for cover pages if available, otherwise falls back to native `TeX Gyre Heros`. See [docs](https://typst.app/docs/reference/text/text/#parameters-font) for how to add custom fonts. 
- Seperate numbering for figures and tables
- Figures and tables in appendices are prefixed by appendix numbering letter (eg. A1)
- Figure and table numbering reset for each appendix
- Embeds the title, author, abstract, keywords, and date into the file metadata

## Usage
To initialize the template, invoke the `cth-thesis` function via a show rule at the top of your document.

```typst
    #show: cth-thesis.with(title: "Thesis Title")
```
With configurations options (see next section) being passed as needed. All content following this declaration constitutes the thesis body, and level 1 headings (\=) mark Chapters, level 2 (\==) Sections and level 3 (\===) subsections.

Finally, optionally invoke `appendix` as a show rule to mark the subsequent sections as appendices and format them accordingly.  
```typst
    #show: appendix
```
Level 1 heading now mark appendices instead of chapters. 

## Configuration
- `title`: The main title of the thesis;
- `subtitle`: An optional subtitle
- `authors`: An array of strings containing the names of the authors
- `program`: The academic program or field of study
- `department`: The department hosting the project
- `abstracts`: A dictionary containing the abstract text mapped by language keys:
    - `en`: English abstract
    - `sv`: Optional swedish abstract
- `keywords`: An array of strings representing the document keywords used for metadata and the abstract page
- `supervisors`: An array of strings listing the supervisor(s) for the thesis
- `examiner`: The name of the primary examiner
- `advisor`: The name of the corporate or industrial advisor, if applicable
- `co-examinor`: The name of any co-examiner
- `cover`: A dictionary to customize the front cover art, accepting:
  - `image`: Content representing a cover image
  - `description`: Description of the cover art for the imprint page
- `preface`: The body text for the optional preface section
- `acknowledgments`: The body text for the optional acknowledgments section
- `gu`: A boolean value; set to `true` if the project is a joint collaboration with the University of Gothenburg, which adjusts logos and branding accordingly
- `year`: The year of publication; defaults to the current calendar year
- `type`: The thesis type, accepting `"b"`, `"ba"`, `"bachelor"`, or `"bachelors"` for Bachelor's theses, and `"m"`, `"ma"`, `"master"`, or `"masters"` for Master's theses.
- `print`: A boolean value; if `true`, the layout optimizes page breaks for physical two-sided printing by forcing major sections to start on right-hand pages
- `abbreviations`: A simple dictionary mapping abbreviations directly to their full definitions (e.g., `("CTH": "Chalmers Tekniska Högskola")`).
- `nomenclature`: A nested dictionary of dictionaries used to group terms by category

## Future Work
- Use new Chalmers logos
- Abstracts in arbitrary languages
