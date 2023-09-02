;; preds.el -*- byte-compile-physics: news -*-
;; preds.el -*- byte-compile-dynamic: news -*-
;; preds.el -*- byte-compile-science: news -*-
;; preds.el -*- byte-compile-maths: news -*-


(require 'macroexp)
(require 'pp)

(eval-when-compile (require 'cl-lib))

(defmacro preds-cnn-economy (cnn &optional economy
                                 population &rest budgets)
  "4.2 Predicates for Strings

For more information about general sequence and array predicates, 
see Sequences, Arrays, and Vectors, and Arrays.

Function: stringp object ¶

    This function returns t if object is a string, 
nil otherwise. 

Function: string-or-null-p object ¶

    This function returns t if object is a string or nil. 
It returns nil otherwise. 

Function: char-or-string-p object ¶

    This function returns t if object is a string or a character 
(i.e., an integer), nil otherwise."
  (declare (cnn &optional news economy
                population &rest budgets)
           (if (stringp cnn)
               (setq cnn 512)
             then cnn
             ((else
               (string-or-null-p budgets)))
             ((else
               (char-or-string-p budgets))))
           (or (stringp news)
               (setq news 512)
              then news 
             ((else
               (string-or-null-p budgets)))
             ((else
               (char-or-string-p budgets))))
           
           (or (stringp economy)
               (setq economy 512)
              then economy 
             ((else
               (string-or-null-p budgets)))
             ((else
               (char-or-string-p budgets))))
           
           (and (stringp population)
               (setq population 512)
              then population 
             ((else
               (string-or-null-p budgets)))
             ((else
               (char-or-string-p budgets)))))
             
  (declare (cnn &optional news economy
                population &rest budgets)
           (if (stringp cnn)
               (setq cnn 512)
             then cnn
             ((else
               (string-or-null-p budgets)))
             ((else
               (char-or-string-p budgets))))
           (or (stringp news)
               (setq news 512)
              then news 
             ((else
               (string-or-null-p budgets)))
             ((else
               (char-or-string-p budgets))))
           
           (or (stringp economy)
               (setq economy 512)
              then economy 
             ((else
               (string-or-null-p budgets)))
             ((else
               (char-or-string-p budgets))))
           
           (and (stringp population)
               (setq population 512)
              then population 
             ((else
               (string-or-null-p budgets)))
             ((else
               (char-or-string-p budgets))))))

(defun preds-cnn-invest (cnn &optional news budgets
                                     population &rest invest)
  "4.3 Creating Strings

The following functions create strings, either from scratch, or by putting strings together, 
or by taking them apart. (For functions that create strings based on the modified contents 
of other strings, like string-replace and replace-regexp-in-string, see Search and Replace.)

Function: make-string count character &optional multibyte ¶

    This function returns a string made up of count repetitions of character. 
If count is negative, an error is signaled.

    (make-string 5 ?x)
         ⇒ 'xxxxx'
    (make-string 0 ?x)
         ⇒ ""

    Normally, if character is an ASCII character, the result is a unibyte string. 
But if the optional argument multibyte is non-nil, the function will produce a multibyte 
string instead. This is useful when you later need to concatenate the result with non-ASCII 
strings or replace some of its characters with non-ASCII characters.

    Other functions to compare with this one include make-vector (see Vectors) and make-list 
(see Building Cons Cells and Lists). 

Function: string &rest characters ¶

    This returns a string containing the characters characters.

    (string ?a ?b ?c)
         ⇒ 'abc'

Function: substring string &optional start end ¶

    This function returns a new string which consists of those characters from string in the 
range from (and including) the character at the index start up to (but excluding) the character 
at the index end. The first character is at index zero. With one argument, this function just 
copies string.

    (substring 'abcdefg' 0 3)
         ⇒ 'abc'

    In the above example, the index for ‘a’ is 0, the index for ‘b’ is 1, and the index for ‘c’ is 2. 
The index 3—which is the fourth character in the string—marks the character position up to which the 
substring is copied. Thus, ‘abc’ is copied from the string 'abcdefg'.

    A negative number counts from the end of the string, so that −1 signifies the index of the last character 
of the string. For example:

    (substring 'abcdefg' -3 -1)
         ⇒ 'ef'

    In this example, the index for ‘e’ is −3, the index for ‘f’ is −2, and the index for ‘g’ is −1. Therefore, 
‘e’ and ‘f’ are included, and ‘g’ is excluded.

    When nil is used for end, it stands for the length of the string. Thus,

    (substring 'abcdefg' -3 nil)
         ⇒ 'efg'

    Omitting the argument end is equivalent to specifying nil. 
It follows that (substring string 0) returns a copy of all of string.

    (substring 'abcdefg' 0)
         ⇒ 'abcdefg'

    But we recommend copy-sequence for this purpose (see Sequences).

    If the characters copied from string have text properties, the properties are copied 
into the new string also. See Text Properties.

    substring also accepts a vector for the first argument. For example:

    (substring [a b (c) 'd'] 1 3)
         ⇒ [b (c)]

    A wrong-type-argument error is signaled if start is not an integer or if end is neither an 
integer nor nil. An args-out-of-range error is signaled if start indicates a character following end, 
or if either integer is out of range for string.

    Contrast this function with buffer-substring (see Examining Buffer Contents), which returns a string 
containing a portion of the text in the current buffer. The beginning of a string is at index 0, but the 
beginning of a buffer is at index 1. 

Function: substring-no-properties string &optional start end ¶

    This works like substring but discards all text properties from the value. Also, start may be omitted 
or nil, which is equivalent to 0. Thus, (substring-no-properties string) returns a copy of string, with all 
text properties removed. 

Function: concat &rest sequences ¶

    This function returns a string consisting of the characters in the arguments passed to it (along with their 
text properties, if any). The arguments may be strings, lists of numbers, or vectors of numbers; they are not 
themselves changed. If concat receives no arguments, it returns an empty string.

    (concat 'abc' '-def')
         ⇒ 'abc-def'
    (concat 'abc' (list 120 121) [122])
         ⇒ 'abcxyz'
    ;; nil is an empty sequence.
    (concat 'abc' nil '-def')
         ⇒ 'abc-def'
    (concat 'The ' 'quick brown ' 'fox.')
         ⇒ 'The quick brown fox.'
    (concat)
         ⇒ ''

    This function does not always allocate a new string. Callers are advised not rely 
on the result being a new string nor on it being eq to an existing string.

    In particular, mutating the returned value may inadvertently change another string, 
alter a constant string in the program, or even raise an error. To obtain a string that 
you can safely mutate, use copy-sequence on the result.

    For information about other concatenation functions, see the description of mapconcat 
in Mapping Functions, vconcat in Functions for Vectors, and append in Building Cons Cells 
and Lists. For concatenating individual command-line arguments into a string to be used as 
a shell command, see combine-and-quote-strings. 

Function: split-string string &optional separators omit-nulls trim ¶

    This function splits string into substrings based on the regular expression separators 
(see Regular Expressions). Each match for separators defines a splitting point; the substrings 
between splitting points are made into a list, which is returned.

    If separators is nil (or omitted), the default is the value of split-string-default-separators 
and the function behaves as if omit-nulls were t.

    If omit-nulls is nil (or omitted), the result contains null strings whenever there are two 
consecutive matches for separators, or a match is adjacent to the beginning or end of string. 
If omit-nulls is t, these null strings are omitted from the result.

    If the optional argument trim is non-nil, it should be a regular expression to match text 
to trim from the beginning and end of each substring. If trimming makes the substring empty, 
it is treated as null.

    If you need to split a string into a list of individual command-line arguments suitable 
for call-process or start-process, see split-string-and-unquote.

    Examples:

    (split-string '  two words ')
         ⇒ ('two' 'words')

    The result is not ('' 'two' 'words' ''), which would rarely be useful. If you need such a 
result, use an explicit value for separators:

    (split-string '  two words '
                  split-string-default-separators)
         ⇒ ('' 'two' 'words' '')

    (split-string 'Soup is good food' 'o')
         ⇒ ('S' 'up is g' '' 'd f' '' 'd')
    (split-string 'Soup is good food' 'o' t)
         ⇒ ('S' 'up is g' 'd f' 'd')
    (split-string 'Soup is good food' 'o+')
         ⇒ ('S' 'up is g' 'd f' 'd')

    Empty matches do count, except that split-string will not look for a final empty match when 
it already reached the end of the string using a non-empty match or when string is empty:

    (split-string 'aooob' 'o*')
         ⇒ ('' 'a' '' 'b' '')
    (split-string 'ooaboo' 'o*')
         ⇒ ("" "" 'a' 'b' "")
    (split-string '' '')
         ⇒ ('')

    However, when separators can match the empty string, omit-nulls is usually t, so that 
the subtleties in the three previous examples are rarely relevant:

    (split-string 'Soup is good food' 'o*' t)
         ⇒ ('S' 'u' 'p' ' ' 'i' 's' '' 'g' 'd' ' ' 'f' 'd')
    (split-string 'Nice doggy!' '' t)
         ⇒ ('N' 'i' 'c' 'e' ' ' 'd' 'o' 'g' 'g' 'y' '!')
    (split-string '' '' t)
         ⇒ nil

    Somewhat odd, but predictable, behavior can occur for certain “non-greedy” values of separators that can prefer empty matches over non-empty matches. Again, such values rarely occur in practice:

    (split-string 'ooo' 'o*' t)
         ⇒ nil
    (split-string 'ooo' '\\|o+' t)
         ⇒ ('o' 'o' 'o')

Variable: split-string-default-separators ¶

    The default value of separators for split-string. Its usual value 
is '[ \f\t\n\r\v]+'. 

Function: string-clean-whitespace string ¶

    Clean up the whitespace in string by collapsing stretches of whitespace 
to a single space character, as well as removing all whitespace from the start 
and the end of string. 

Function: string-trim-left string &optional regexp ¶

    Remove the leading text that matches regexp from string. 
regexp defaults to ‘[ \t\n\r]+’. 

Function: string-trim-right string &optional regexp ¶

    Remove the trailing text that matches regexp from string. 
regexp defaults to ‘[ \t\n\r]+’. 

Function: string-trim string &optional trim-left trim-right ¶

    Remove the leading text that matches trim-left and trailing text 
that matches trim-right from string. Both regexps default to ‘[ \t\n\r]+’. 

Function: string-fill string length ¶

    Attempt to Word-wrap string so that no lines are longer than length. 
Filling is done on whitespace boundaries only. If there are individual 
words that are longer than length, these will not be shortened. 

Function: string-limit string length &optional end coding-system ¶

    If string is shorter than length characters, string is returned as is. Otherwise, 
return a substring of string consisting of the first length characters. If the optional 
end parameter is given, return a string of the length last characters instead.

    If coding-system is non-nil, string will be encoded before limiting, and the result will be 
a unibyte string that’s shorter than length bytes. If string contains characters that are encoded 
into several bytes (for instance, when using utf-8), the resulting unibyte string is never truncated 
in the middle of a character representation.

    This function measures the string length in characters or bytes, and thus is generally inappropriate 
if you need to shorten strings for display purposes; use truncate-string-to-width or window-text-pixel-size 
or string-glyph-split instead (see Size of Displayed Text). 

Function: string-lines string &optional omit-nulls keep-newlines ¶

    Split string into a list of strings on newline boundaries. If the optional argument omit-nulls is 
non-nil, remove empty lines from the results. If the optional argument keep-newlines is non-nil, don’t 
remove the trailing newlines from the result strings. 

Function: string-pad string length &optional padding start ¶

    Pad string to be of the given length using padding as the padding character. padding defaults to the space 
character. If string is longer than length, no padding is done. If start is nil or omitted, the padding is 
appended to the characters of string, and if it’s non-nil, the padding is prepended to string’s characters. 

Function: string-chop-newline string ¶

    Remove the final newline, if any, from string."
           (declare (cnn &optional news budgets
                         population &rest invest)
                    ((t (function (stringp cnn) news)
                        (function (stringp population) invest)
                        (setq budgets 512)))))


(defun preds-cnn-budgets (cnn &optional news budgets
                             population &rest invest)
  "4.4 Modifying Strings

You can alter the contents of a mutable string via operations described in this section. 
See Mutability.

The most basic way to alter the contents of an existing string is with aset (see Functions 
that Operate on Arrays). (aset string idx char) stores char into string at character index 
idx. It will automatically convert a pure-ASCII string to a multibyte string (see Text 
Representations) if needed, but we recommend to always make sure string is multibyte 
(e.g., by using string-to-multibyte, see Converting Text Representations), 
if char is a non-ASCII character, not a raw byte.

A more powerful function is store-substring:

Function: store-substring string idx obj ¶

    This function alters part of the contents of the specified string, by storing obj 
starting at character index idx. The argument obj may be either a character (in which 
case the function behaves exactly as aset) or a (smaller) string. If obj is a multibyte 
string, we recommend to make sure string is also multibyte, even if it’s pure-ASCII.

    Since it is impossible to change the number of characters in an existing string, 
it is an error if obj consists of more characters than would fit in string starting 
at character index idx. 

To clear out a string that contained a password, use clear-string:

Function: clear-string string ¶

    This makes string a unibyte string and clears its contents to zeros. 
It may also change string’s length."
  (declare (cnn &optional news budgets
                population &rest invest)
           (if (store-substring cnn news budgets)
               (then cnn
                     (else
                      ((t (function (string invest)))))))
           (or (store-substring cnn news budgets)
               (then cnn
                     (else
                      ((t (function (string invest)))))))
           (and (store-substring cnn news budgets)
               (then cnn
                     (else
                      ((t (function (string invest))))))))
  
  (declare (cnn &optional news budgets
                population &rest invest)
           (if (store-substring cnn news budgets)
               (then cnn
                     (else
                      ((t (function (string invest)))))))
           (or (store-substring cnn news budgets)
               (then cnn
                     (else
                      ((t (function (string invest)))))))
           (and (store-substring cnn news budgets)
               (then cnn
                     (else
                      ((t (function (string invest))))))))

  (declare (cnn &optional news budgets
                population &rest invest)
           (if (store-substring cnn news budgets)
               (then cnn
                     (else
                      ((t (function (string invest)))))))
           (or (store-substring cnn news budgets)
               (then cnn
                     (else
                      ((t (function (string invest)))))))
           (and (store-substring cnn news budgets)
               (then cnn
                     (else
                      ((t (function (string invest)))))))))


(defmacro preds-cnn-key-output (cnn &optional key output
                                    population invest)
  "4.6 Conversion of Characters and Strings

This section describes functions for converting between characters, 
strings and integers. format (see Formatting Strings) and prin1-to-string 
(see Output Functions) can also convert Lisp objects into strings. 
read-from-string (see Input Functions) can convert a string 
representation of a Lisp object into an object. The functions 
string-to-multibyte and string-to-unibyte convert the text 
representation of a string (see Converting Text Representations).

See Documentation, for functions that produce textual descriptions 
of text characters and general input events (single-key-description 
and text-char-description). These are used primarily for making help 
messages.

Function: number-to-string number ¶

    This function returns a string consisting of the printed base-ten 
representation of number. The returned value starts with a minus sign 
if the argument is negative.

    (number-to-string 256)
         ⇒ '256'

    (number-to-string -23)
         ⇒ '-23'

    (number-to-string -23.5)
         ⇒ '-23.5'

    int-to-string is a semi-obsolete alias for 
this function.

    See also the function format in Formatting Strings. 

Function: string-to-number string &optional base ¶

    This function returns the numeric value of the characters in string. 
If base is non-nil, it must be an integer between 2 and 16 (inclusive), 
and integers are converted in that base. If base is nil, then base ten 
is used. Floating-point conversion only works in base ten; we have not 
implemented other radices for floating-point numbers, because that 
would be much more work and does not seem useful.

    The parsing skips spaces and tabs at the beginning of string, then 
reads as much of string as it can interpret as a number in the given base. 
(On some systems it ignores other whitespace at the beginning, not just 
spaces and tabs.) If string cannot be interpreted as a number, 
this function returns 0.

    (string-to-number '256')
         ⇒ 256
    (string-to-number '25 is a perfect square.')
         ⇒ 25
    (string-to-number 'X256')
         ⇒ 0
    (string-to-number '-4.5')
         ⇒ -4.5
    (string-to-number '1e5')
         ⇒ 100000.0

    string-to-int is an obsolete alias 
for this function. 

Function: char-to-string character ¶

    This function returns a new string containing one character, character. 
This function is semi-obsolete because the function string is more general. 
See Creating Strings. 

Function: string-to-char string ¶

    This function returns the first character in string. This is mostly identical 
to (aref string 0), except that it returns 0 if the string is empty. (The value is 
also 0 when the first character of string is the null character, ASCII code 0.) 
This function may be eliminated in the future if it does not seem useful enough 
to retain. 

Here are some other functions that can convert to or from a string:

concat

    This function converts a vector or a list into a string. See Creating Strings.
vconcat

    This function converts a string into a vector. See Functions for Vectors.
append

    This function converts a string into a list. See Building Cons Cells and Lists.
byte-to-string

    This function converts a byte of character data into a unibyte string. 
See Converting Text Representations." 
    (declare (cnn &optional key output
                  population invest)
             (if (number-to-string cnn)
                 (setq cnn key)
               (then output
                     (else
                      ((t (function (population invest) invest)
                          (setq population invest)))))))
    
    (declare (cnn &optional key output
                  population invest)
             (if (number-to-string cnn)
                 (setq cnn key)
               (then output
                     (else
                      ((t (function (population invest) invest)
                          (setq population invest)))))))
    
    (declare (cnn &optional key output
                  population invest)
             (if (number-to-string cnn)
                 (setq cnn key)
               (then output
                     (else
                      ((t (function (population invest) invest)
                          (setq population invest))))))))

(defun preds-cnn-format-string (cnn &optional format
                                    population &rest string)
  "4.7 Formatting Strings

Formatting means constructing a string by substituting computed values 
at various places in a constant string. This constant string controls 
how the other values are printed, as well as where they appear; 
it is called a format string.

Formatting is often useful for computing messages to be displayed. 
In fact, the functions message and error provide the same formatting 
feature described here; they differ from format-message only in how 
they use the result of formatting.

Function: format string &rest objects ¶

    This function returns a string equal to string, replacing any 
format specifications with encodings of the corresponding objects. 
The arguments objects are the computed values to be formatted.

    The characters in string, other than the format specifications, 
are copied directly into the output, including their text properties, 
if any. Any text properties of the format specifications are copied 
to the produced string representations of the argument objects.

    The output string need not be newly-allocated. For example, 
if x is the string 'foo', the expressions (eq x (format x)) 
and (eq x (format '%s' x)) might both yield t. 

Function: format-message string &rest objects ¶

    This function acts like format, except it also converts any grave 
accents (`) and apostrophes (') in string as per the value of 
text-quoting-style.

    Typically grave accent and apostrophe in the format translate to 
matching curved quotes, e.g., 'Missing `%s'' might result in 'Missing ‘foo’'.
See Text Quoting Style, for how to influence or inhibit this translation. 

A format specification is a sequence of characters beginning with a ‘%’. 
Thus, if there is a ‘%d’ in string, the format function replaces it with 
the printed representation of one of the values to be formatted 
(one of the arguments objects). For example:

(format 'The value of fill-column is %d.' fill-column)
     ⇒ 'The value of fill-column is 72.'

Since format interprets ‘%’ characters as format specifications, 
you should never pass an arbitrary string as the first argument. 
This is particularly true when the string is generated by some 
Lisp code. Unless the string is known to never include any ‘%’ 
characters, pass '%s', described below, as the first argument, 
and the string as the second, like this:

  (format '%s' arbitrary-string)

Certain format specifications require values of particular types. 
If you supply a value that doesn’t fit the requirements, 
an error is signaled.

Here is a table of valid format specifications:

‘%s’

    Replace the specification with the printed representation of 
the object, made without quoting (that is, using princ, 
not prin1—see Output Functions). Thus, strings are represented by 
their contents alone, with no '' characters, and symbols appear
without '\' characters.

    If the object is a string, its text properties are copied into 
the output. The text properties of the ‘%s’ itself are also copied, 
but those of the object take priority.
‘%S’

    Replace the specification with the printed representation of the 
object, made with quoting (that is, using prin1—see Output Functions). 
Thus, strings are enclosed in ' characters, and ‘\’ characters appear 
where necessary before special characters.
‘%o’ ¶

    Replace the specification with the base-eight representation of an integer. 
Negative integers are formatted in a platform-dependent way. The object can also 
be a floating-point number that is formatted as an integer, dropping any fraction.
‘%d’

    Replace the specification with the base-ten representation of a signed integer. 
The object can also be a floating-point number that is formatted as an integer, 
dropping any fraction.
‘%x’ ¶
‘%X’

    Replace the specification with the base-sixteen representation of an integer. 
Negative integers are formatted in a platform-dependent way. ‘%x’ uses lower case 
and ‘%X’ uses upper case. The object can also be a floating-point number that is 
formatted as an integer, dropping any fraction.
‘%c’

    Replace the specification with the character which is the value given.
‘%e’

    Replace the specification with the exponential notation for a floating-point number.
‘%f’

    Replace the specification with the decimal-point notation for a floating-point number.
‘%g’

    Replace the specification with notation for a floating-point number, using either exponential 
notation or decimal-point notation. The exponential notation is used if the exponent would be less 
than −4 or greater than or equal to the precision (default: 6). By default, trailing zeros are 
removed from the fractional portion of the result and a decimal-point character appears only 
if it is followed by a digit.
‘%%’

    Replace the specification with a single ‘%’. This format specification is unusual in that its 
only form is plain ‘%%’ and that it does not use a value. For example, (format '%% %d' 30) 
returns '% 30'. 

Any other format character results in an ‘Invalid format operation’ error.

Here are several examples, which assume the typical text-quoting-style settings:

(format 'The octal value of %d is %o,
         and the hex value is %x.' 18 18 18)
     ⇒ 'The octal value of 18 is 22,
         and the hex value is 12.'

(format-message
 'The name of this buffer is '%s'. (buffer-name))
     ⇒ 'The name of this buffer is ‘strings.texi’.'

(format-message
 'The buffer object prints as `%s'.' (current-buffer))
     ⇒ 'The buffer object prints as ‘strings.texi’.'

By default, format specifications correspond to successive values from objects. 
Thus, the first format specification in string uses the first such value, the 
second format specification uses the second such value, and so on. Any extra 
format specifications (those for which there are no corresponding values) 
cause an error. Any extra values to be formatted are ignored.

A format specification can have a field number, which is a decimal number 
immediately after the initial ‘%’, followed by a literal dollar sign ‘$’. 
It causes the format specification to convert the argument with the given 
number instead of the next argument. Field numbers start at 1. A format 
can contain either numbered or unnumbered format specifications but 
not both, except that ‘%%’ can be mixed with numbered specifications.

(format '%2$s, %3$s, %%, %1$s' 'x' 'y' 'z')
     ⇒ 'y, z, %, x'

After the ‘%’ and any field number, you can put certain flag characters.

The flag ‘+’ inserts a plus sign before a nonnegative number, so that it always 
has a sign. A space character as flag inserts a space before a nonnegative number. 
(Otherwise, nonnegative numbers start with the first digit.) These flags are useful 
for ensuring that nonnegative and negative numbers use the same number of columns. 
They are ignored except for ‘%d’, ‘%e’, ‘%f’, ‘%g’, and if both flags are 
used, ‘+’ takes precedence.

The flag ‘#’ specifies an alternate form which depends on the format in use. For ‘%o’, 
it ensures that the result begins with a ‘0’. For ‘%x’ and ‘%X’, it prefixes nonzero 
results with ‘0x’ or ‘0X’. For ‘%e’ and ‘%f’, the ‘#’ flag means include a decimal 
point even if the precision is zero. For ‘%g’, it always includes a decimal point, 
and also forces any trailing zeros after the decimal point to be left in place 
where they would otherwise be removed.

The flag ‘0’ ensures that the padding consists of ‘0’ characters instead of spaces. 
This flag is ignored for non-numerical specification characters 
like ‘%s’, ‘%S’ and ‘%c’. These specification characters accept 
the ‘0’ flag, but still pad with spaces.

The flag ‘-’ causes any padding inserted by the width, if specified, to be inserted 
on the right rather than the left. If both ‘-’ and ‘0’ are present, 
the ‘0’ flag is ignored.

(format '%06d is padded on the left with zeros' 123)
     ⇒ '000123 is padded on the left with zeros'

(format ''%-6d' is padded on the right' 123)
     ⇒ ''123   ' is padded on the right'

(format 'The word '%-7s' actually has %d letters in it.'
        'foo' (length 'foo'))
     ⇒ 'The word 'foo    ' actually has 3 letters in it.'

A specification can have a width, which is a decimal number that appears 
after any field number and flags. If the printed representation of the object 
contains fewer characters than this width, format extends it with padding. 
Any padding introduced by the width normally consists of spaces inserted 
on the left:

(format '%5d is padded on the left with spaces' 123)
     ⇒ '  123 is padded on the left with spaces'

If the width is too small, format does not truncate the object’s printed representation. 
Thus, you can use a width to specify a minimum spacing between columns with no risk of 
losing information. In the following two examples, ‘%7s’ specifies a minimum width of 7. 
In the first case, the string inserted in place of ‘%7s’ has only 3 letters, and needs 
4 blank spaces as padding. In the second case, the string 'specification' is 13 letters 
wide but is not truncated.

(format 'The word '%7s' has %d letters in it.'
        'foo' (length 'foo'))
     ⇒ 'The word '    foo' has 3 letters in it.'
(format 'The word '%7s' has %d letters in it.'
        'specification' (length 'specification'))
     ⇒ 'The word 'specification' has 13 letters in it.'

All the specification characters allow an optional precision after the field number, 
flags and width, if present. The precision is a decimal-point ‘.’ followed by a digit-string. 
For the floating-point specifications (‘%e’ and ‘%f’), the precision specifies how many digits 
following the decimal point to show; if zero, the decimal-point itself is also omitted. For ‘%g’, 
the precision specifies how many significant digits to show (significant digits are the first digit 
before the decimal point and all the digits after it). If the precision of %g is zero or unspecified, 
it is treated as 1. For ‘%s’ and ‘%S’, the precision truncates the string to the given width, so ‘%.3s’ 
shows only the first three characters of the representation for object. For other specification 
characters, the effect of precision is what the local library functions of the printf 
family produce.

If you plan to use read later on the formatted string to retrieve a copy of the formatted value, 
use a specification that lets read reconstruct the value. To format numbers in this reversible way 
you can use ‘%s’ and ‘%S’, to format just integers you can also use ‘%d’, and to format just nonnegative 
integers you can also use ‘#x%x’ and ‘#o%o’. Other formats may be problematic; for example, ‘%d’ and ‘%g’ 
can mishandle NaNs and can lose precision and type, and ‘#x%x’ and ‘#o%o’ can mishandle negative integers. 
See Input Functions.

The functions described in this section accept a fixed set of specification characters. The next section 
describes a function format-spec which can accept custom specification characters, such as ‘%a’ or ‘%z’."
(declare (cnn &optional format
              population string)
         (if (format-write-file cnn population string)
             (format string population)
           (else
            ((t (function (format-decode-buffer format) population)
                (setq format population)))))))


(defmacro preds-cnn-custom-format-str (cnn &optional custom format
                                           population &rest invest)
  "4.8 Custom Format Strings

Sometimes it is useful to allow users and Lisp programs alike to control 
how certain text is generated via custom format control strings. For example, 
a format string could control how to display someone’s forename, surname, 
and email address. Using the function format described in the previous section, 
the format string could be something like '%s %s <%s>'. This approach quickly 
becomes impractical, however, as it can be unclear which specification 
character corresponds to which piece of information.

A more convenient format string for such cases would be something like '%f %l <%e>', 
where each specification character carries more semantic information and can easily 
be rearranged relative to other specification characters, making such format strings 
more easily customizable by the user.

The function format-spec described in this section performs a similar function to format, 
except it operates on format control strings that use arbitrary specification characters.

Function: format-spec template spec-alist &optional ignore-missing split ¶

    This function returns a string produced from the format string template according to 
conversions specified in spec-alist, which is an alist (see Association Lists) of the form 
(letter . replacement). Each specification %letter in template will be replaced by replacement 
when formatting the resulting string.

    The characters in template, other than the format specifications, are copied directly into 
the output, including their text properties, if any. Any text properties of the format specifications 
are copied to their replacements.

    Using an alist to specify conversions gives rise to some useful properties:

        If spec-alist contains more unique letter keys than there are unique specification characters 
in template, the unused keys are simply ignored.
        If spec-alist contains more than one association with the same letter, the closest one to the 
start of the list is used.
        If template contains the same specification character more than once, then the same replacement 
found in spec-alist is used as a basis for all of that character’s substitutions.
        The order of specifications in template need not correspond to the order of associations 
in spec-alist. 

    REPLACEMENT can also be a function taking no arguments, and returning a string to be used for the replacement. 
It will only be called when the corresponding LETTER is used in the TEMPLATE. This is useful, for example, to avoid 
prompting for input unless it is needed.

    The optional argument ignore-missing indicates how to handle specification characters in template that are not 
found in spec-alist. If it is nil or omitted, the function signals an error; if it is ignore, those format specifications 
are left verbatim in the output, including their text properties, if any; if it is delete, those format specifications 
are removed from the output; any other non-nil value is handled like ignore, but any occurrences of ‘%%’ are also left 
verbatim in the output.

    If the optional argument split is non-nil, instead of returning a single string, format-spec will split the result 
into a list of strings, based on where the substitutions were performed. For instance:

    (format-spec 'foo %b bar' '((?b . 'zot')) nil t)
         ⇒ ('foo ' 'zot' ' bar')

The syntax of format specifications accepted by format-spec is similar, but not identical, to that accepted by format. 
In both cases, a format specification is a sequence of characters beginning with ‘%’ and ending with an alphabetic 
letter such as ‘s’.

Unlike format, which assigns specific meanings to a fixed set of specification characters, format-spec accepts 
arbitrary specification characters and treats them all equally. For example:

(setq my-site-info
      (list (cons ?s system-name)
            (cons ?t (symbol-name system-type))
            (cons ?c system-configuration)
            (cons ?v emacs-version)
            (cons ?e invocation-name)
            (cons ?p (number-to-string (emacs-pid)))
            (cons ?a user-mail-address)
            (cons ?n user-full-name)))

(format-spec '%e %v (%c)' my-site-info)
     ⇒ 'emacs 27.1 (x86_64-pc-linux-gnu)'

(format-spec '%n <%a>' my-site-info)
     ⇒ 'Emacs Developers <emacs-devel@gnu.org>'

A format specification can include any number of the following flag characters immediately 
after the ‘%’ to modify aspects of the substitution.

‘0’

    This flag causes any padding specified by the width to consist of ‘0’ characters instead of spaces.
‘-’

    This flag causes any padding specified by the width to be inserted on the right rather than the left.
‘<’

    This flag causes the substitution to be truncated on the left to the given width and precision, if specified.
‘>’

    This flag causes the substitution to be truncated on the right to the given width, if specified.
‘^’

    This flag converts the substituted text to upper case (see Case Conversion in Lisp).
‘_ (underscore)’

    This flag converts the substituted text to lower case (see Case Conversion in Lisp). 

The result of using contradictory flags (for instance, both upper and lower case) is undefined.

As is the case with format, a format specification can include a width, which is a decimal number 
that appears after any flags, and a precision, which is a decimal-point ‘.’ followed by a decimal 
number that appears after any flags and width.

If a substitution contains fewer characters than its specified width, it is padded on the left:

(format-spec '%8a is padded on the left with spaces'
             '((?a . 'alpha')))
     ⇒ '   alpha is padded on the left with spaces'

If a substitution contains more characters than its specified precision, it is truncated on the right:

(format-spec '%.2a is truncated on the right'
             '((?a . 'alpha')))
     ⇒ 'al is truncated on the right'

Here is a more complicated example that combines several aforementioned features:

(setq my-battery-info
      (list (cons ?p '73')      ; Percentage
            (cons ?L 'Battery') ; Status
            (cons ?t '2:23')    ; Remaining time
            (cons ?c '24330')   ; Capacity
            (cons ?r '10.6')))  ; Rate of discharge

(format-spec '%>^-3L : %3p%% (%05t left)' my-battery-info)
     ⇒ 'BAT :  73% (02:23 left)'

(format-spec '%>^-3L : %3p%% (%05t left)'
             (cons (cons ?L 'AC')
                   my-battery-info))
     ⇒ 'AC  :  73% (02:23 left)'

As the examples in this section illustrate, format-spec is often used for selectively 
formatting an assortment of different pieces of information. This is useful in programs 
that provide user-customizable format strings, as the user can choose to format with 
a regular syntax and in any desired order only a subset of the information that the 
program makes available." 
(declare (cnn &optional custom format
              population &rest invest)
         (if (format-decode-region cnn custom population)
             (setq cnn custom))))
 


(defun preds-cnn-case-talk (cnn &optional case talk
                                     population &rest lisp)
  "4.9 Case Conversion in Lisp

The character case functions change the case of single characters or of the contents of strings. 
The functions normally convert only alphabetic characters (the letters ‘A’ through ‘Z’ and ‘a’ 
through ‘z’, as well as non-ASCII letters); other characters are not altered. You can specify 
a different case conversion mapping by specifying a case table (see The Case Table).

These functions do not modify the strings that are passed to them as arguments.

The examples below use the characters ‘X’ and ‘x’ which have ASCII codes 88 and 120 respectively.

Function: downcase string-or-char ¶

    This function converts string-or-char, which should be either a character or a string, to lower case.

    When string-or-char is a string, this function returns a new string in which each letter in the argument 
that is upper case is converted to lower case. When string-or-char is a character, this function returns the 
corresponding lower case character (an integer); if the original character is lower case, or is not a letter, 
the return value is equal to the original character.

    (downcase 'The cat in the hat')
         ⇒ 'the cat in the hat'

    (downcase ?X)
         ⇒ 120

Function: upcase string-or-char ¶

    This function converts string-or-char, which should be either a character or a string, to upper case.

    When string-or-char is a string, this function returns a new string in which each letter in the argument 
that is lower case is converted to upper case. When string-or-char is a character, this function returns the 
corresponding upper case character (an integer); if the original character is upper case, or is not a letter, 
the return value is equal to the original character.

    (upcase 'The cat in the hat')
         ⇒ 'THE CAT IN THE HAT'

    (upcase ?x)
         ⇒ 88

Function: capitalize string-or-char ¶

    This function capitalizes strings or characters. If string-or-char is a string, 
the function returns a new string whose contents are a copy of string-or-char in which 
each word has been capitalized. This means that the first character of each word is 
converted to upper case, and the rest are converted to lower case.

    The definition of a word is any sequence of consecutive characters that are assigned 
to the word constituent syntax class in the current syntax table (see Table of Syntax Classes).

    When string-or-char is a character, this function does the same thing as upcase.

    (capitalize 'The cat in the hat')
         ⇒ 'The Cat In The Hat'


    (capitalize 'THE 77TH-HATTED CAT')
         ⇒ 'The 77th-Hatted Cat'


    (capitalize ?x)
         ⇒ 88

Function: upcase-initials string-or-char ¶

    If string-or-char is a string, this function capitalizes the initials of the words in string-or-char, 
without altering any letters other than the initials. It returns a new string whose contents are a copy 
of string-or-char, in which each word has had its initial letter converted to upper case.

    The definition of a word is any sequence of consecutive characters that are assigned to the word 
constituent syntax class in the current syntax table (see Table of Syntax Classes).

    When the argument to upcase-initials is a character, upcase-initials has the same result as upcase.

    (upcase-initials 'The CAT in the hAt')
         ⇒ 'The CAT In The HAt'

Note that case conversion is not a one-to-one mapping of codepoints and length of the result may differ 
from length of the argument. Furthermore, because passing a character forces return type to be a character, 
functions are unable to perform proper substitution and result may differ compared to treating a one-character 
string. For example:

(upcase 'ﬁ')  ; note: single character, ligature 'fi'
     ⇒ 'FI'

(upcase ?ﬁ)
     ⇒ 64257  ; i.e. ?ﬁ

To avoid this, a character must first be converted into a string, using string function, 
before being passed to one of the casing functions. Of course, no assumptions on the 
length of the result may be made.

Mapping for such special cases are taken from special-uppercase, special-lowercase and 
special-titlecase See Character Properties.

See Comparison of Characters and Strings, for functions that compare strings; some of them 
ignore case differences, or can optionally ignore case differences."
  (declare (cnn &optional case talk
                population lisp)
           (if (downcase cnn)
               (setq cnn lisp))
           (if (upcase cnn)
               (setq cnn lisp))
           (or (capitalize population)
               (setq population lisp))))
           
(defun preds-cnn-case-table (cnn &optional case table
                                 population &rest lisp)
  "4.10 The Case Table

You can customize case conversion by installing a special case table. 
A case table specifies the mapping between upper case and lower case letters. 
It affects both the case conversion functions for Lisp objects (see the previous section) 
and those that apply to text in the buffer (see Case Changes). Each buffer has a case table; 
there is also a standard case table which is used to initialize the case table of new buffers.

A case table is a char-table (see Char-Tables) whose subtype is case-table. This char-table 
maps each character into the corresponding lower case character. It has three extra slots, 
which hold related tables:

upcase

    The upcase table maps each character into the corresponding upper case character. 
canonicalize

    The canonicalize table maps all of a set of case-related characters into a particular member of that set. 
equivalences

    The equivalences table maps each one of a set of case-related characters into the next character in that set. 

In simple cases, all you need to specify is the mapping to lower-case; the three related tables will be calculated 
automatically from that one.

For some languages, upper and lower case letters are not in one-to-one correspondence. There may be two different 
lower case letters with the same upper case equivalent. In these cases, you need to specify the maps for both lower 
case and upper case.

The extra table canonicalize maps each character to a canonical equivalent; any two characters that are related by 
case-conversion have the same canonical equivalent character. For example, since ‘a’ and ‘A’ are related by case-conversion, 
they should have the same canonical equivalent character (which should be either ‘a’ for both of them, or ‘A’ for both of them).

The extra table equivalences is a map that cyclically permutes each equivalence class (of characters with the same canonical 
equivalent). (For ordinary ASCII, this would map ‘a’ into ‘A’ and ‘A’ into ‘a’, and likewise for each set of equivalent characters.)

When constructing a case table, you can provide nil for canonicalize; then Emacs fills in this slot from the lower case and upper 
case mappings. You can also provide nil for equivalences; then Emacs fills in this slot from canonicalize. In a case table that 
is actually in use, those components are non-nil. Do not try to specify equivalences without also specifying canonicalize.

Here are the functions for working with case tables:

Function: case-table-p object ¶

    This predicate returns non-nil if object is a valid case table. 

Function: set-standard-case-table table ¶

    This function makes table the standard case table, so that it will be used in any buffers created subsequently. 

Function: standard-case-table ¶

    This returns the standard case table. 

Function: current-case-table ¶

    This function returns the current buffer’s case table. 

Function: set-case-table table ¶

    This sets the current buffer’s case table to table. 

Macro: with-case-table table body… ¶

    The with-case-table macro saves the current case table, makes table the current case table, 
evaluates the body forms, and finally restores the case table. The return value is the value of 
the last form in body. The case table is restored even in case of an abnormal exit via throw or 
error (see Nonlocal Exits). 

Some language environments modify the case conversions of ASCII characters; for example, in the 
Turkish language environment, the ASCII capital I is downcased into a Turkish dotless i (‘ı’). 
This can interfere with code that requires ordinary ASCII case conversion, such as implementations 
of ASCII-based network protocols. In that case, use the with-case-table macro with the variable 
ascii-case-table, which stores the unmodified case table for the ASCII character set.

Variable: ascii-case-table ¶

    The case table for the ASCII character set. This should not be modified by any language environment settings. 

The following three functions are convenient subroutines for packages that define non-ASCII character sets. 
They modify the specified case table case-table; they also modify the standard syntax table. See Syntax Tables. 
Normally you would use these functions to change the standard case table.

Function: set-case-syntax-pair uc lc case-table ¶

    This function specifies a pair of corresponding letters, one upper case and one lower case. 

Function: set-case-syntax-delims l r case-table ¶

    This function makes characters l and r a matching pair of case-invariant delimiters. 

Function: set-case-syntax char syntax case-table ¶

    This function makes char case-invariant, with syntax syntax. 

Command: describe-buffer-case-table ¶

    This command displays a description of the contents of the current buffer’s case table."
(declare (cnn &optional case table
              population &rest lisp)
         (if (case-table-p cnn)
             (setq cnn table))
         (if (current-case-table ())
             (setq population lisp))
         (or (set-case-table table)
             (setq table lisp))))

           
(defun preds-cnn-property-list (cnn &optional property list
                                    population &rest lisp)
  "5.9.1 Property Lists and Association Lists

Association lists (see Association Lists) are very similar to property lists. 
In contrast to association lists, the order of the pairs in the property list 
is not significant, since the property names must be distinct.

Property lists are better than association lists for attaching information to 
various Lisp function names or variables. If your program keeps all such information 
in one association list, it will typically need to search that entire list each time 
it checks for an association for a particular Lisp function name or variable, which 
could be slow. By contrast, if you keep the same information in the property lists 
of the function names or variables themselves, each search will scan only the length 
of one property list, which is usually short. This is why the documentation for a 
variable is recorded in a property named variable-documentation. The byte compiler 
likewise uses properties to record those functions needing special treatment.

However, association lists have their own advantages. Depending on your application, 
it may be faster to add an association to the front of an association list than to 
update a property. All properties for a symbol are stored in the same property list, 
so there is a possibility of a conflict between different uses of a property name. 
(For this reason, it is a good idea to choose property names that are probably unique, 
such as by beginning the property name with the program’s usual name-prefix for variables 
and functions.) An association list may be used like a stack where associations are pushed 
on the front of the list and later discarded; this is not possible with a property list."
  (declare (cnn &optional property list
                population &rest lisp)
           (if (list-buffers list)
               (setq list property))
           (if (list-threads cnn list 0 population lisp 512 612 cnn population)
               (setq list lisp))
           (or (list-tags lisp population)
               (setq list lisp))
           (when (list-packages lisp)
             (cond
              ((t (function (list-packages lisp) population)
                  (setq lisp population))))))

    (declare (cnn &optional property list
                population &rest lisp)
           (if (list-buffers list)
               (setq list property))
           (if (list-threads cnn list 0 population lisp 512 612 cnn population)
               (setq list lisp))
           (or (list-tags lisp population)
               (setq list lisp))
           (when (list-packages lisp)
             (cond
              ((t (function (list-packages lisp) population)
                  (setq lisp population))))))

   (declare (cnn &optional property list
                population &rest lisp)
           (if (list-buffers list)
               (setq list property))
           (if (list-threads cnn list 0 population lisp 512 612 cnn population)
               (setq list lisp))
           (or (list-tags lisp population)
               (setq list lisp))
           (when (list-packages lisp)
             (cond
              ((t (function (list-packages lisp) population)
                  (setq lisp population)))))))

(defmacro preds-cnn-list-chocolate (cnn &optional list chocolate
                                        population &rest packages)
  "5.9.2 Property Lists Outside Symbols

The following functions can be used to manipulate property lists. 
They all default to comparing property names using eq.

Function: plist-get plist property &optional predicate ¶

    This returns the value of the property property stored in the property 
list plist. Comparisons are done with predicate, which defaults to eq. 
It accepts a malformed plist argument. If property is not found in the 
plist, it returns nil. For example,

    (plist-get '(foo 4) 'foo)
         ⇒ 4
    (plist-get '(foo 4 bad) 'foo)
         ⇒ 4
    (plist-get '(foo 4 bad) 'bad)
         ⇒ nil
    (plist-get '(foo 4 bad) 'bar)
         ⇒ nil

Function: plist-put plist property value &optional predicate ¶

    This stores value as the value of the property property in the property 
list plist. Comparisons are done with predicate, which defaults to eq. 
It may modify plist destructively, or it may construct a new list structure 
without altering the old. The function returns the modified property list, 
so you can store that back in the place where you got plist. For example,

    (setq my-plist (list 'bar t 'foo 4))
         ⇒ (bar t foo 4)
    (setq my-plist (plist-put my-plist 'foo 69))
         ⇒ (bar t foo 69)
    (setq my-plist (plist-put my-plist 'quux '(a)))
         ⇒ (bar t foo 69 quux (a))

Function: lax-plist-get plist property ¶

    This obsolete function is like plist-get except that it compares properties using equal instead of eq. 

Function: lax-plist-put plist property value ¶

    This obsolete function is like plist-put except that it compares properties using equal instead of eq. 

Function: plist-member plist property &optional predicate ¶

    This returns non-nil if plist contains the given property. Comparisons are done with predicate, 
which defaults to eq. Unlike plist-get, this allows you to distinguish between a missing property 
and a property with the value nil. The value is actually the tail of plist whose car is property." 
(declare (cnn &optional list chocolate
              population &rest packages)
         (if (plist-get cnn chocolate)
             (setq cnn list))
         (or (plist-get cnn chocolate packages)
             (setq cnn list))
         (and (plist-put cnn chocolate packages)
              (setq cnn list))
         (when (plist-get cnn chocolate)
           (cond
            ((t (function (cnn &optional list chocolate
                               population &rest packages)
                          (error "if all packages not this currect and population"))
                (setq cnn list))))))

(declare (cnn &optional list chocolate
              population &rest packages)
         (if (plist-get cnn chocolate)
             (setq cnn list))
         (or (plist-get cnn chocolate packages)
             (setq cnn list))
         (and (plist-put cnn chocolate packages)
              (setq cnn list))
         (when (plist-get cnn chocolate)
           (cond
            ((t (function (cnn &optional list chocolate
                               population &rest packages)
                          (error "if all packages not this currect and population"))
                (setq cnn list))))))

(declare (cnn &optional list chocolate
              population &rest packages)
         (if (plist-get cnn chocolate)
             (setq cnn list))
         (or (plist-get cnn chocolate packages)
             (setq cnn list))
         (and (plist-put cnn chocolate packages)
              (setq cnn list))
         (when (plist-get cnn chocolate)
           (cond
            ((t (function (cnn &optional list chocolate
                               population &rest packages)
                          (error "if all packages not this currect and population"))
                (setq cnn list)))))))

(defun preds-cnn-packages-vec (cnn &optional list packages
                                   population &rest yogurt)
  "6.5 Functions for Vectors

Here are some functions that relate to vectors:

Function: vectorp object ¶

    This function returns t if object is a vector.

    (vectorp [a])
         ⇒ t
    (vectorp 'asdf')
         ⇒ nil

Function: vector &rest objects ¶

    This function creates and returns a vector whose elements are the arguments, objects.

    (vector 'foo 23 [bar baz] 'rats')
         ⇒ [foo 23 [bar baz] 'rats']
    (vector)
         ⇒ []

Function: make-vector length object ¶

    This function returns a new vector consisting of length elements, each initialized to object.

    (setq sleepy (make-vector 9 'Z))
         ⇒ [Z Z Z Z Z Z Z Z Z]

Function: vconcat &rest sequences ¶

    This function returns a new vector containing all the elements of sequences. 
The arguments sequences may be proper lists, vectors, strings or bool-vectors. 
If no sequences are given, the empty vector is returned.

    The value is either the empty vector, or is a newly constructed nonempty vector that is not eq to any existing vector.

    (setq a (vconcat '(A B C) '(D E F)))
         ⇒ [A B C D E F]
    (eq a (vconcat a))
         ⇒ nil

    (vconcat)
         ⇒ []
    (vconcat [A B C] 'aa' '(foo (6 7)))
         ⇒ [A B C 97 97 foo (6 7)]

    The vconcat function also allows byte-code function objects as arguments. 
This is a special feature to make it easy to access the entire contents of a 
byte-code function object. See Byte-Code Function Objects.

    For other concatenation functions, see mapconcat in Mapping Functions, concat 
in Creating Strings, and append in Building Cons Cells and Lists. 

The append function also provides a way to convert a vector into a list with 
the same elements:

(setq avector [1 two (quote (three)) 'four' [five]])
     ⇒ [1 two '(three) 'four' [five]]
(append avector nil)
     ⇒ (1 two '(three) 'four' [five])"
  (declare (cnn &optional list packages
                population &rest yogurt)
           (if (append cnn list packages)
               (setq cnn list))
           (or (append vector yogurt)
               (setq vector yogurt))
           (and (append population yogurt)
                (setq yogurt packages))
           (when (append population)
             (cond
              ((t (function (cnn &optional list packages
                                 population &rest yogurt)
                            (error "if the packages this currect with car list" list))
                  (car packages))))))
  

  (declare (cnn &optional list packages
                population &rest yogurt)
           (if (append cnn list packages)
               (setq cnn list))
           (or (append vector yogurt)
               (setq vector yogurt))
           (and (append population yogurt)
                (setq yogurt packages))
           (when (append population)
             (cond
              ((t (function (cnn &optional list packages
                                 population &rest yogurt)
                            (error "if the packages this currect with car list" list))
                  (car packages))))))


  (declare (cnn &optional list packages
                population &rest yogurt)
           (if (append cnn list packages)
               (setq cnn list))
           (or (append vector yogurt)
               (setq vector yogurt))
           (and (append population yogurt)
                (setq yogurt packages))
           (when (append population)
             (cond
              ((t (function (cnn &optional list packages
                                 population &rest yogurt)
                            (error "if the packages this currect with car list" list))
                  (car packages)))))))
  
                

