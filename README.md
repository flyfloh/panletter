# panletter

Simple letters with markdown and pandoc.

## Usage

If you simply want to write a letter, you'll need pandoc, and texlive. Create a
markdown document with the following options as YAML frontmatter.

```yaml
---
fromname: #The sender's name
fromstreet: #The sender's street address
fromcity: #The sender's city
recname: #The recipient's name
recstreet: #The recipient's street address
reccity: #The recipient's city (and zip code)
title: #The letter's subject
opening: #The opening statement, ex. to whom it may concern
closing: #The closing statement, ex. kind regards
---
```

You can then compile a PDF by running
`pandoc myfile.md -o myletter.pdf --template letter.tex`.

The resulting PDF will have the address field at a standard location so you can
simply put the letter in an envelope with a window.

## Usage with Nix

If you have Nix or are on NixOS, you can enter a Nix shell by running
`nix develop`. This will install all the dependencies for you. You can then
run the convenience script `mkLetter myfile.md myletter.pdf`.
