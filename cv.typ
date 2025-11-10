#import "/template/cv.typ": *

// Load CV data from YAML
#let cvdata = yaml("cv.yml")

#let uservars = (
    headingfont: "Crimson Pro", // Set font for headings
    bodyfont: "Tinos",   // Set font for body
    fontsize: 10pt, // 10pt, 11pt, 12pt
    linespacing: 5pt,
    showAddress: true, // true/false Show address in contact info
    showNumber: true,  // true/false Show phone number in contact info
    headingsmallcaps: false,
    sectionspacing: 7pt, // Space between sections
)

// setrules and showrules can be overridden by re-declaring it here
// #let setrules(doc) = {
//      // Add custom document style rules here
//
//      doc
// }

#import "@preview/rose-pine:0.2.0": apply, rose-pine-dawn
#show: apply(variant: "rose-pine-dawn")

#let customrules(doc) = {
    // Add custom document style rules here

    doc
}

#let cvinit(doc) = {
    doc = setrules(uservars, doc)
    doc = showrules(uservars, doc)
    doc = customrules(doc)

    doc
}

// Each section function can be overridden by re-declaring it here
// #let cveducation = []

// Content
#show: doc => cvinit(doc)

#cvheading(cvdata, uservars)

#cvwork(cvdata)
#cvprojects(cvdata)
#cvskills(cvdata)
#cveducation(cvdata)
#cvaffiliations(cvdata)
#cvawards(cvdata)
#cvcertificates(cvdata)
#cvpublications(cvdata)
#cvreferences(cvdata)

// #endnote
