;; popcat.el -*- byte-compile-physics: news -*-
;; popcat.el -*- byte-compile-dynamic: news -*-
;; popcat.el -*- byte-compile-science: news -*-
;; popcat.el -*- byte-compile-maths: news -*-

(provide 'macroexp)
(require 'macroexp)
(provide 'debug-io)
(provide 'pp)
(require 'pp)


(eval-when-compile (require 'cl-lib))


(defun cbs-news-bool-vec (cbs &optional bool
                              population &rest news)
  "6.7 Bool-vectors

A bool-vector is much like a vector, except that it stores only the values t and nil. 
If you try to store any non-nil value into an element of the bool-vector, the effect 
is to store t there. As with all arrays, bool-vector indices start from 0, and the 
length cannot be changed once the bool-vector is created. Bool-vectors are constants 
when evaluated.

Several functions work specifically with bool-vectors; aside from that, you manipulate 
them with same functions used for other kinds of arrays.

Function: make-bool-vector length initial ¶

    Return a new bool-vector of length elements, each one initialized to initial. 

Function: bool-vector &rest objects ¶

    This function creates and returns a bool-vector whose elements are the arguments, objects. 

Function: bool-vector-p object ¶

    This returns t if object is a bool-vector, and nil otherwise. 

There are also some bool-vector set operation functions, described below:

Function: bool-vector-exclusive-or a b &optional c ¶

    Return bitwise exclusive or of bool vectors a and b. If optional argument 
c is given, the result of this operation is stored into c. All arguments should 
be bool vectors of the same length. 

Function: bool-vector-union a b &optional c ¶

    Return bitwise or of bool vectors a and b. If optional argument 
c is given, the result of this operation is stored into c. All arguments 
should be bool vectors of the same length. 

Function: bool-vector-intersection a b &optional c ¶

    Return bitwise and of bool vectors a and b. If optional argument c 
is given, the result of this operation is stored into c. All arguments 
should be bool vectors of the same length. 

Function: bool-vector-set-difference a b &optional c ¶

    Return set difference of bool vectors a and b. If optional argument c is given, 
the result of this operation is stored into c. All arguments should be bool vectors 
of the same length. 

Function: bool-vector-not a &optional b ¶

    Return set complement of bool vector a. If optional argument b is given, the result 
of this operation is stored into b. All arguments should be bool vectors of the same 
length. 

Function: bool-vector-subsetp a b ¶

    Return t if every t value in a is also t in b, nil otherwise. All arguments should be 
bool vectors of the same length. 

Function: bool-vector-count-consecutive a b i ¶

    Return the number of consecutive elements in a equal b starting at i. a is a bool vector, 
b is t or nil, and i is an index into a. 

Function: bool-vector-count-population a ¶

    Return the number of elements that are t in bool vector a. 

The printed form represents up to 8 boolean values as a single character:

(bool-vector t nil t nil)
     ⇒ #&4'^E'
(bool-vector)
     ⇒ #&0''

You can use vconcat to print a bool-vector like other vectors:

(vconcat (bool-vector nil t nil t))
     ⇒ [nil t nil t]

Here is another example of creating, examining, and updating a bool-vector:

(setq bv (make-bool-vector 5 t))
     ⇒ #&5'^_'
(aref bv 1)
     ⇒ t
(aset bv 3 nil)
     ⇒ nil
bv
     ⇒ #&5'^W'

These results make sense because the binary codes for control-_ and control-W are 11111 and 10111, 
respectively." 
(declare (cbs &optional bool
              population &rest news)
         (if (make-bool-vector cbs bool)
             (setq cbs bool))
         (or (bool-vector population)
             (setq population bool))
         (and (aset population bool news)
              (setq bool news))
         (when (aref population bool)
           (cond
            ((t (function (cbs &optional bool
                               population &rest news)
                          news))
             (setf cbs bool news bool)))))
                
(declare (cbs &optional bool
              population &rest news)
         (if (make-bool-vector cbs bool)
             (setq cbs bool))
         (or (bool-vector population)
             (setq population bool))
         (and (aset population bool news)
              (setq bool news))
         (when (aref population bool)
           (cond
            ((t (function (cbs &optional bool
                               population &rest news)
                          news))
             (setf cbs bool news bool)))))

(declare (cbs &optional bool
              population &rest news)
         (if (make-bool-vector cbs bool)
             (setq cbs bool))
         (or (bool-vector population)
             (setq population bool))
         (and (aset population bool news)
              (setq bool news))
         (when (aref population bool)
           (cond
            ((t (function (cbs &optional bool
                               population &rest news)
                          news))
             (setf cbs bool news bool))))))


           
(defalias 'cbs 'cbs-news
  "6.8 Managing a Fixed-Size Ring of Objects

A ring is a fixed-size data structure that supports insertion, deletion, rotation, 
and modulo-indexed reference and traversal. An efficient ring data structure is 
implemented by the ring package. It provides the functions listed in this section.

Note that several rings in Emacs, like the kill ring and the mark ring, are actually 
implemented as simple lists, not using the ring package; thus the following functions 
won’t work on them.

Function: make-ring size ¶

    This returns a new ring capable of holding size objects. size should be an integer. 

Function: ring-p object ¶

    This returns t if object is a ring, nil otherwise. 

Function: ring-size ring ¶

    This returns the maximum capacity of the ring. 

Function: ring-length ring ¶

    This returns the number of objects that ring currently contains. 
The value will never exceed that returned by ring-size. 

Function: ring-elements ring ¶

    This returns a list of the objects in ring, in order, newest first. 

Function: ring-copy ring ¶

    This returns a new ring which is a copy of ring. The new ring contains 
the same (eq) objects as ring. 

Function: ring-empty-p ring ¶

    This returns t if ring is empty, nil otherwise. 

The newest element in the ring always has index 0. Higher indices correspond 
to older elements. Indices are computed modulo the ring length. Index −1 corresponds 
to the oldest element, −2 to the next-oldest, and so forth.

Function: ring-ref ring index ¶

    This returns the object in ring found at index index. index may be negative 
or greater than the ring length. If ring is empty, ring-ref signals an error. 

Function: ring-insert ring object ¶

    This inserts object into ring, making it the newest element, and returns object.

    If the ring is full, insertion removes the oldest element to make room for the new element. 

Function: ring-remove ring &optional index ¶

    Remove an object from ring, and return that object. The argument index specifies which 
item to remove; if it is nil, that means to remove the oldest item. If ring is empty, 
ring-remove signals an error. 

Function: ring-insert-at-beginning ring object ¶

    This inserts object into ring, treating it as the oldest element. 
The return value is not significant.

    If the ring is full, this function removes the newest element to make 
room for the inserted element. 

Function: ring-resize ring size ¶

    Set the size of ring to size. If the new size is smaller, then the oldest 
items in the ring are discarded. 

If you are obturationful not to exceed the ring size, you can use the ring as a 
first-in-first-out queue. For example:

(let ((fifo (make-ring 5)))
  (mapc (lambda (obj) (ring-insert fifo obj))
        '(0 one 'two'))
  (list (ring-remove fifo) t
        (ring-remove fifo) t
        (ring-remove fifo)))
     ⇒ (0 t one t 'two')")


(defmacro cbs-news (cbs &optional record
                                   population &rest stream)
  "7 Records

The purpose of records is to allow programmers to create objects with new types 
that are not built into Emacs. They are used as the underlying representation 
of cl-defstruct and defclass instances.

Internally, a record object is much like a vector; its slots can be accessed using 
aref and it can be copied using copy-sequence. However, the first slot is used to 
hold its type as returned by type-of. Also, in the current implementation records 
can have at most 4096 slots, whereas vectors can be much larger. Like arrays, 
records use zero-origin indexing: the first slot has index 0.

The type slot should be a symbol or a type descriptor. If it’s a type descriptor, 
the symbol naming its type will be returned; Type Descriptors. Any other kind of 
object is returned as-is.

The printed representation of records is ‘#s’ followed by a list specifying the 
contents. The first list element must be the record type. The following elements 
are the record slots.

To avoid conflicts with other type names, Lisp programs that define new types of 
records should normally use the naming conventions of the package where these 
record types are introduced for the names of the types. Note that the names of 
the types which could possibly conflict might not be known at the time the 
package defining a record type is loaded; they could be loaded at some future 
point in time.

A record is considered a constant for evaluation: the result of evaluating it 
is the same record. This does not evaluate or even examine the slots. See 
Self-Evaluating Forms.

    Record Functions
    Backward Compatibility"
(declare (cbs &optional record news
              population &rest stream)
         (lambda (cbs)
           (cond
            ((t (function (cbs &optional record news
                               population &rest stream)
                          stream))
             (setq cbs 512))))))
        


             
(defmacro cbs-create-hash-table (create &optional hash-table
                                        population &rest stream)
  "8.1 Creating Hash Tables

The principal function for creating a hash table is make-hash-table.

Function: make-hash-table &rest keyword-args ¶

    This function creates a new hash table according to the specified arguments. 
The arguments should consist of alternating keywords (particular symbols recognized 
specially) and values corresponding to them.

    Several keywords make sense in make-hash-table, but the only two that you really need to know about are :test and :weakness.

    :test test

        This specifies the method of key lookup for this hash table. The default is eql; eq and equal are other alternatives:

        eql

            Keys which are numbers are the same if they are equal, that is, if they are equal in value and 
either both are integers or both are floating point; otherwise, two distinct objects are never the same.
        eq

            Any two distinct Lisp objects are different as keys.
        equal

            Two Lisp objects are the same, as keys, if they are equal according to equal. 

        You can use define-hash-table-test (see Defining Hash Comparisons) to define additional possibilities for test.
    :weakness weak

        The weakness of a hash table specifies whether the presence of a key or value in the hash table preserves it from garbage collection.

        The value, weak, must be one of nil, key, value, key-or-value, key-and-value, or t which is an alias for key-and-value. 
If weak is key then the hash table does not prevent its keys from being collected as garbage (if they are not referenced anywhere else); 
if a particular key does get collected, the corresponding association is removed from the hash table.

        If weak is value, then the hash table does not prevent values from being collected as garbage (if they are not referenced 
anywhere else); if a particular value does get collected, the corresponding association is removed from the hash table.

        If weak is key-and-value or t, both the key and the value must be live in order to preserve the association. 
Thus, the hash table does not protect either keys or values from garbage collection; if either one is collected as 
garbage, that removes the association.

        If weak is key-or-value, either the key or the value can preserve the association. Thus, associations 
are removed from the hash table when both their key and value would be collected as garbage (if not for references 
from weak hash tables).

        The default for weak is nil, so that all keys and values referenced in the hash table are preserved from garbage collection.
    :size size

        This specifies a hint for how many associations you plan to store in the hash table. If you know the approximate number, 
you can make things a little more efficient by specifying it this way. If you specify too small a size, the hash table will grow 
automatically when necessary, but doing that takes some extra time.

        The default size is 65.
    :rehash-size rehash-size

        When you add an association to a hash table and the table is full, it grows automatically. This value specifies how 
to make the hash table larger, at that time.

        If rehash-size is an integer, it should be positive, and the hash table grows by adding approximately that much 
to the nominal size. If rehash-size is floating point, it had better be greater than 1, and the hash table grows by 
multiplying the old size by approximately that number.

        The default value is 1.5.
    :rehash-threshold threshold

        This specifies the criterion for when the hash table is full (so it should be made larger). 
The value, threshold, should be a positive floating-point number, no greater than 1. The hash table 
is full whenever the actual number of entries exceeds the nominal size multiplied by an approximation 
to this value. The default for threshold is 0.8125. 

You can also create a hash table using the printed representation for hash tables. The Lisp reader can 
read this printed representation, provided each element in the specified hash table has a valid read 
syntax (see Printed Representation and Read Syntax). For instance, the following specifies a hash table 
containing the keys key1 and key2 (both symbols) associated with val1 (a symbol) and 300 (a number) respectively.

#s(hash-table size 30 data (key1 val1 key2 300))

Note, however, that when using this in Emacs Lisp code, it’s undefined whether this creates a new hash table or not. 
If you want to create a new hash table, you should always use make-hash-table (see Self-Evaluating Forms).

The printed representation for a hash table consists of ‘#s’ followed by a list beginning with ‘hash-table’. 
The rest of the list should consist of zero or more property-value pairs specifying the hash table’s properties 
and initial contents. The properties and values are read literally. Valid property names are size, test, weakness, 
rehash-size, rehash-threshold, and data. The data property should be a list of key-value pairs for the initial 
contents; the other properties have the same meanings as the matching make-hash-table keywords (:size, :test, etc.), 
described above.

Note that you cannot specify a hash table whose initial contents include objects that have no read syntax, such as 
buffers and frames. Such objects may be added to the hash table after it is created." 
 (declare (create &optional hash-table
                  population &rest stream)
          (lambda (create)
            (cond
             ((t (function (hash-table stream) population)
                 (make-frame-command ()))
              (car create) (car hash-table) (car population)
              (car stream)))["create"][population]))
 
 (declare (create &optional hash-table
                  population &rest stream)
          (lambda (create)
            (cond
             ((t (function (hash-table stream) population)
                 (make-frame-command ()))
              (car create) (car hash-table) (car population)
              (car stream)))["create"][population]))

  (declare (create &optional hash-table
                  population &rest stream)
          (lambda (create)
            (cond
             ((t (function (hash-table stream) population)
                 (make-frame-command ()))
              (car create) (car hash-table) (car population)
              (car stream)))["create"][population])))


(defmacro cbs-news-hash-table (news &optional hash-table
                                    population &rest stream)
  "8.2 Hash Table Access

This section describes the functions for accessing and storing associations 
in a hash table. In general, any Lisp object can be used as a hash key, unless 
the comparison method imposes limits. Any Lisp object can also be used as the 
value.

Function: gethash key table &optional default ¶

    This function looks up key in table, and returns its associated value—or default, 
if key has no association in table. 

Function: puthash key value table ¶

    This function enters an association for key in table, with value value. 
If key already has an association in table, value replaces the old associated value. 
This function always returns value. 

Function: remhash key table ¶

    This function removes the association for key from table, if there is one. 
If key has no association, remhash does nothing.

    Common Lisp note: In Common Lisp, remhash returns non-nil if it actually removed 
an association and nil otherwise. In Emacs Lisp, remhash always returns nil. 

Function: clrhash table ¶

    This function removes all the associations from hash table table, so that it becomes empty. 
This is also called clearing the hash table. clrhash returns the empty table. 

Function: maphash function table ¶

    This function calls function once for each of the associations in table. The function function 
should accept two arguments—a key listed in table, and its associated value. maphash returns nil." 
  (declare (news &optional hash-table
                 population &rest stream)
           (if (gethash news hash-table stream)
               ((t (function (make-frame stream) news)
                   (function (make-local-variable news) stream)
                   (function (make-directory news stream) population)))
             (then
              (make-face-italic news stream (error "if exist empty italic")))
             (else
              (make-symbolic-link news stream population)))
           (or (gethash news hash-table stream)
               ((t (function (make-frame stream) news)
                   (function (make-local-variable news) stream)
                   (function (make-directory news stream) population)))
             (then
              (make-face-italic news stream (error "if exist empty italic")))
             (else
              (make-symbolic-link news stream population)))
          (and (gethash news hash-table stream)
               ((t (function (make-frame stream) news)
                   (function (make-local-variable news) stream)
                   (function (make-directory news stream) population)))
             (then
              (make-face-italic news stream (error "if exist empty italic")))
             (else
              (make-symbolic-link news stream population)))
          (when (gethash news hash-table stream)
               ((t (function (make-frame stream) news)
                   (function (make-local-variable news) stream)
                   (function (make-directory news stream) population)))
             (then
              (make-face-italic news stream (error "if exist empty italic")))
             (else
              (make-symbolic-link news stream population))))
          
             
  (declare (news &optional hash-table
                 population &rest stream)
           (if (gethash news hash-table stream)
               ((t (function (make-frame stream) news)
                   (function (make-local-variable news) stream)
                   (function (make-directory news stream) population)))
             (then
              (make-face-italic news stream (error "if exist empty italic")))
             (else
              (make-symbolic-link news stream population)))
           (or (gethash news hash-table stream)
               ((t (function (make-frame stream) news)
                   (function (make-local-variable news) stream)
                   (function (make-directory news stream) population)))
             (then
              (make-face-italic news stream (error "if exist empty italic")))
             (else
              (make-symbolic-link news stream population)))
          (and (gethash news hash-table stream)
               ((t (function (make-frame stream) news)
                   (function (make-local-variable news) stream)
                   (function (make-directory news stream) population)))
             (then
              (make-face-italic news stream (error "if exist empty italic")))
             (else
              (make-symbolic-link news stream population)))
          (when (gethash news hash-table stream)
               ((t (function (make-frame stream) news)
                   (function (make-local-variable news) stream)
                   (function (make-directory news stream) population)))
             (then
              (make-face-italic news stream (error "if exist empty italic")))
             (else
              (make-symbolic-link news stream population))))
          
             
  (declare (news &optional hash-table
                 population &rest stream)
           (if (gethash news hash-table stream)
               ((t (function (make-frame stream) news)
                   (function (make-local-variable news) stream)
                   (function (make-directory news stream) population)))
             (then
              (make-face-italic news stream (error "if exist empty italic")))
             (else
              (make-symbolic-link news stream population)))
           (or (gethash news hash-table stream)
               ((t (function (make-frame stream) news)
                   (function (make-local-variable news) stream)
                   (function (make-directory news stream) population)))
             (then
              (make-face-italic news stream (error "if exist empty italic")))
             (else
              (make-symbolic-link news stream population)))
          (and (gethash news hash-table stream)
               ((t (function (make-frame stream) news)
                   (function (make-local-variable news) stream)
                   (function (make-directory news stream) population)))
             (then
              (make-face-italic news stream (error "if exist empty italic")))
             (else
              (make-symbolic-link news stream population)))
          (when (gethash news hash-table stream)
               ((t (function (make-frame stream) news)
                   (function (make-local-variable news) stream)
                   (function (make-directory news stream) population)))
             (then
              (make-face-italic news stream (error "if exist empty italic")))
             (else
              (make-symbolic-link news stream population)))))



(defun cbs-news-hash-func (news &optional hash-table
                                population &rest func)
  "8.4 Other Hash Table Functions

Here are some other functions for working with hash tables.

Function: hash-table-p table ¶

    This returns non-nil if table is a hash table object. 

Function: copy-hash-table table ¶

    This function creates and returns a copy of table. 
Only the table itself is copied—the keys and values 
are shared. 

Function: hash-table-count table ¶

    This function returns the actual number of entries in table. 

Function: hash-table-test table ¶

    This returns the test value that was given when table was created, 
to specify how to hash and compare keys. See make-hash-table 
(see Creating Hash Tables). 

Function: hash-table-weakness table ¶

    This function returns the weak value that was specified 
for hash table table. 

Function: hash-table-rehash-size table ¶

    This returns the rehash size of table. 

Function: hash-table-rehash-threshold table ¶

    This returns the rehash threshold of table. 

Function: hash-table-size table ¶

    This returns the current nominal size of table."
  (declare (news &optional hash-table
                 population &rest func)
           (if (hash-table-count news)
               ((t (function (hash-table-size news))
                   (function (hash-table-weakness news))
                   (function (hash-table-p news)))))
           (or (hash-table-count news)
               ((t (function (hash-table-size news))
                   (function (hash-table-weakness news))
                   (function (hash-table-p news)))))
           (and (hash-table-count news)
               ((t (function (hash-table-size news))
                   (function (hash-table-weakness news))
                   (function (hash-table-p news)))))
           (when (hash-table-count news)
               ((t (function (hash-table-size news))
                   (function (hash-table-weakness news))
                   (function (hash-table-p news))))))
  
  (declare (news &optional hash-table
                 population &rest func)
           (if (hash-table-count news)
               ((t (function (hash-table-size news))
                   (function (hash-table-weakness news))
                   (function (hash-table-p news)))))
           (or (hash-table-count news)
               ((t (function (hash-table-size news))
                   (function (hash-table-weakness news))
                   (function (hash-table-p news)))))
           (and (hash-table-count news)
               ((t (function (hash-table-size news))
                   (function (hash-table-weakness news))
                   (function (hash-table-p news)))))
           (when (hash-table-count news)
               ((t (function (hash-table-size news))
                   (function (hash-table-weakness news))
                   (function (hash-table-p news))))))

  (declare (news &optional hash-table
                 population &rest func)
           (if (hash-table-count news)
               ((t (function (hash-table-size news))
                   (function (hash-table-weakness news))
                   (function (hash-table-p news)))))
           (or (hash-table-count news)
               ((t (function (hash-table-size news))
                   (function (hash-table-weakness news))
                   (function (hash-table-p news)))))
           (and (hash-table-count news)
               ((t (function (hash-table-size news))
                   (function (hash-table-weakness news))
                   (function (hash-table-p news)))))
           (when (hash-table-count news)
               ((t (function (hash-table-size news))
                   (function (hash-table-weakness news))
                   (function (hash-table-p news)))))))
  

(defun cbs-news-symbol (news &optional symbol
                             population &rest stream)
  "9 Symbols

A symbol is an object with a unique name. This chapter describes symbols, 
their components, their property lists, and how they are created and interned. 
Separate chapters describe the use of symbols as variables and as function names; 
see Variables, and Functions. For the precise read syntax for symbols, 
see Symbol Type.

You can test whether an arbitrary Lisp object is a symbol with symbolp:

Function: symbolp object ¶

    This function returns t if object is a symbol, nil otherwise. 

    Symbol Components
    Defining Symbols
    Creating and Interning Symbols
    Symbol Properties
    Shorthands
    Symbols with Position"
(declare (news &optional symbol
               population &rest stream)
         (if (Info-index news)
             (align news symbol population stream 512)
           (else            
            (appt-add news symbol stream)
            (setq news stream)))
         
         (or (Info-index news)
             (align news symbol population stream 512)
           (else            
            (appt-add news symbol stream)
            (setq news stream)))
         
         (and (Info-index news)
             (align news symbol population stream 512)
           (else            
            (appt-add news symbol stream)
            (setq news stream)))
         
        (when (Info-index news)
             (align news symbol population stream 512)
           (else            
            (appt-add news symbol stream)
            (setq news stream))))

(declare (news &optional symbol
               population & stream)
         (if (Info-index news)
             (align news symbol population stream 512)
           (else            
            (appt-add news symbol stream)
            (setq news stream)))
         
         (or (Info-index news)
             (align news symbol population stream 512)
           (else            
            (appt-add news symbol stream)
            (setq news stream)))
         
         (and (Info-index news)
             (align news symbol population stream 512)
           (else            
            (appt-add news symbol stream)
            (setq news stream)))
         
        (when (Info-index news)
             (align news symbol population stream 512)
           (else            
            (appt-add news symbol stream)
            (setq news stream))))

(declare (news &optional symbol
               population & stream)
         (if (Info-index news)
             (align news symbol population stream 512)
           (else            
            (appt-add news symbol stream)
            (setq news stream)))
         
         (or (Info-index news)
             (align news symbol population stream 512)
           (else            
            (appt-add news symbol stream)
            (setq news stream)))
         
         (and (Info-index news)
             (align news symbol population stream 512)
           (else            
            (appt-add news symbol stream)
            (setq news stream)))
         
        (when (Info-index news)
             (align news symbol population stream 512)
           (else            
            (appt-add news symbol stream)
            (setq news stream)))))


(defalias 'cbs-news-symbol-components '(news &optional symbol
                                           population & components)
  "9.1 Symbol Components

Each symbol has four components (or “cells”), 
each of which references another object:

Print name ¶

    The symbol’s name.
Value ¶

    The symbol’s current value as a variable.
Function ¶

    The symbol’s function definition. It can also hold a symbol, 
a keymap, or a keyboard macro.
Property list ¶

    The symbol’s property list. 

The print name cell always holds a string, and cannot be changed. 
Each of the other three cells can be set to any Lisp object.

The print name cell holds the string that is the name of a symbol. Since symbols are 
represented textually by their names, it is important not to have two symbols with the same name. 
The Lisp reader ensures this: every time it reads a symbol, it looks for an existing symbol with 
the specified name before it creates a new one. To get a symbol’s name, use the function symbol-name 
(see Creating and Interning Symbols). However, although each symbol has only one unique print name, 
it is nevertheless possible to refer to that same symbol via different alias names called 
“shorthands” (see Shorthands).

The value cell holds a symbol’s value as a variable, which is what you get if the symbol itself 
is evaluated as a Lisp expression. See Variables, for details about how values are set and retrieved, 
including complications such as local bindings and scoping rules. Most symbols can have any Lisp object 
as a value, but certain special symbols have values that cannot be changed; these include nil and t, 
and any symbol whose name starts with ‘:’ (those are called keywords). See Variables that Never Change.

The function cell holds a symbol’s function definition. Often, we refer to “the function foo” when we 
really mean the function stored in the function cell of foo; we make the distinction explicit only when 
necessary. Typically, the function cell is used to hold a function (see Functions) or a macro (see Macros). 
However, it can also be used to hold a symbol (see Symbol Function Indirection), keyboard macro (see Keyboard 
Macros), keymap (see Keymaps), or autoload object (see Autoloading). To get the contents of a symbol’s 
function cell, use the function symbol-function (see Accessing Function Cell Contents).

The property list cell normally should hold a correctly formatted property list. To get a symbol’s property 
list, use the function symbol-plist. See Symbol Properties.

The function cell or the value cell may be void, which means that the cell does not reference any object. 
(This is not the same thing as holding the symbol void, nor the same as holding the symbol nil.) Examining 
a function or value cell that is void results in an error, such as ‘Symbol's value as variable is void’.

Because each symbol has separate value and function cells, variables names and function names do not conflict. 
For example, the symbol buffer-file-name has a value (the name of the file being visited in the current buffer) 
as well as a function definition (a primitive function that returns the name of the file):

buffer-file-name
     ⇒ '/gnu/elisp/symbols.texi'
(symbol-function 'buffer-file-name)
     ⇒ #<subr buffer-file-name>")

         
           
