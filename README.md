# nanoc-tilt

## Description

The nanoc-tilt gem allows [tilt](https://github.com/rtomayko/tilt) to manage the rendering of your files. That way, you can avoid having to manually set up compile rules in the nanoc Rules file.

## Requirements

* nanoc3
* tilt

## Installation

To use the nanoc-tilt, you have to start by installing the gem.

    gem install nanoc-tilt

Then require the project main file in your default.rb file in the lib directory of your nanoc project.

    require "nanoc/tilt"

## Usage

Here is a sample Rules file:

    compile '*' do
      unless item.binary?
        filter :tilt if Tilt.registered?(item[:extension])
        layout 'common' if item[:extension] == 'erb'
      end
    end

## Author

* Jake Benilov <benilov@gmail.com>

## License

Copyright (c) 2011 Jake Benilov, nanoc-tilt is released under the MIT license.
See the LICENSE.md file for details.