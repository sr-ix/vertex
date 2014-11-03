# Vertex

Takes as input the name of a CSV key and a list of CSV files sharing this key.
Outputs to stdout a CSV file merging all values in files along the provided key.

NOTE: This utility makes many assumptions about input and output.

* No validation is done on input files (i.e. - they are not checked for existence or well-formed-ness)
* When no value is found for a particular CSV key, the empty string "" is used
* CSV keys and values are not validated in any way
* CSV keys are assumed to single words, underscore-delimited, and/or all lowercase

## Installation

Since this gem is not published, you can install locally:

    $ git clone http://github.com/sr-ix/vertex vertex
    $ cd vertex
    $ #rvm gemset create vertex #optional
    $ #rvm gemset use vertex #optional
    $ bundle install
    $ rake install

To verify installation:

    $ which vertex

## Usage

Check out the help text:

    $ vertex --help

Sample usage:

    $ #assuming you are in the vertex repo directory
    $ vertex --key product_id --files ./examples/products.csv ./examples/ratings.csv ./examples/colors.csv ./examples/flavors.csv > ./examples/all.csv
