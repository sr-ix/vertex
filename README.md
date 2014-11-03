# Vertex

Takes as input the name of a CSV key and a list of CSV files sharing this key.
Outputs to stdout a CSV file merging all values in files along the provided key.

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
