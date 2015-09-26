
# This is automatically generated by author/import-moose-test.pl.
# DO NOT EDIT THIS FILE. ANY CHANGES WILL BE LOST!!!
use t::lib::MooseCompat;

package MyExporter;
use Mouse::Exporter;
use Test::More;

Mouse::Exporter->setup_import_methods(
    with_meta => [qw(with_prototype)],
    as_is     => [qw(as_is_prototype)],
);

sub with_prototype (&) {
    my ($class, $code) = @_;
    isa_ok($code, 'CODE', 'with_prototype received a coderef');
    $code->();
}

sub as_is_prototype (&) {
    my ($code) = @_;
    isa_ok($code, 'CODE', 'as_is_prototype received a coderef');
    $code->();
}

1;
