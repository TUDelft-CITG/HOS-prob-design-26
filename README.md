# README

This is the course website for [Probabilistic Design](https://studiegids.tudelft.nl/a101_displayCourse.do?course_id=63756), part of 3 modules in the MSc Civil Engineering Program at Delft University of Technology, the Netherlands. Created by Robert Lanzafame.

The website built by this repo is [here](https://tudelft-citg.github.io/HOS-prob-design-23/).

The [website](https://ucsb-csw8.github.io/s22/) and [repo](https://github.com/ucsb-csw8/s22/)  for CSW8 at UCSB provided many useful examples for this site.

For more information see Just the Docs [documentation](https://just-the-docs.github.io/just-the-docs/) and Just the Class [documentation](https://kevinl.info/just-the-class/). Note that the websites use [Kramdown](https://kramdown.gettalong.org/index.html), which should be checked when trying to do something that requires more than just basic Markdown.

## Setup

_Notes from April, 2024 setup on GitHub, which takes the old website (`23`) and uses the Ruby setup from `MUDE/website-23` on GitLab.

Steps:
- Created `Gemfile-local` for the local build (keeps `Gemfile` untouched for GitHub Pages to continue as-is)
- Install with `bundle install --gemfile=Gemfile-local`
- Build and serve with `bundle exec --gemfile=Gemfile-local jekyll serve` (in `build-local.sh`)

**NOTE:** the dependencies from `MUDE/website-23` were removed because the local Ruby environment could not be resolved.


ruby --version
ruby 3.2.2 (2023-03-30 revision e51014f9c0) [x64-mingw-ucrt]