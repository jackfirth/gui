#lang scribble/doc
@(require "common.ss")

@definterface/title[readable-snip<%> ()]{

A @scheme[readable-snip<%>] object is treated specially by the port
 generated by @scheme[open-input-text-editor]: When a
 @scheme[readable-snip<%>] object is encountered for the input stream,
 its @method[readable-snip<%> read-special] method is called to
 generate the read result for the snip, which is returned from the
 port as a ``special'' value in the sense of
 @scheme[read-char-or-special].

Since @scheme[read] and @scheme[read-syntax] build on
 @scheme[read-char-or-special], a snip can implement
 @scheme[readable-snip<%>] so that it produces a whole S-expression or
 some other kind of value when @scheme[read] is used on a stream
 containing the snip.

@defmethod[(read-special [source any/c]
                         [line (or/c exact-nonnegative-integer? false/c)]
                         [column (or/c exact-nonnegative-integer? false/c)]
                         [position (or/c exact-nonnegative-integer? false/c)])
           any/c]{

The arguments are the same as the arguments to a procedure returned by
 a custom input port's @scheme[_read-in]; see @secref[#:doc '(lib
 "scribblings/reference/reference.scrbl") "customport"] for
 details. The result is also the same as the result from a
 @scheme[_read-in]-produced procedure.


}}

