<!DOCTYPE html>
<html><!-- Created by GNU Texinfo 7.0.3, https://www.gnu.org/software/texinfo/ --><head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<title>List-related Predicates (GNU Emacs Lisp Reference Manual)</title>

<meta name="description" content="List-related Predicates (GNU Emacs Lisp Reference Manual)">
<meta name="keywords" content="List-related Predicates (GNU Emacs Lisp Reference Manual)">
<meta name="resource-type" content="document">
<meta name="distribution" content="global">
<meta name="Generator" content="makeinfo">
<meta name="viewport" content="width=device-width,initial-scale=1">

<link rev="made" href="mailto:bug-gnu-emacs@gnu.org">
<link rel="icon" type="image/png" href="https://www.gnu.org/graphics/gnu-head-mini.png">
<meta name="ICBM" content="42.256233,-71.006581">
<meta name="DC.title" content="gnu.org">
<style type="text/css">
@import url('/software/emacs/manual.css');
</style>
</head>

<body lang="en">
<div class="section-level-extent" id="List_002drelated-Predicates">
<div class="nav-panel">
<p>
Next: <a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/List-Elements.html" accesskey="n" rel="next">Accessing Elements of Lists</a>, Previous: <a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Cons-Cells.html" accesskey="p" rel="prev">Lists and Cons Cells</a>, Up: <a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Lists.html" accesskey="u" rel="up">Lists</a> &nbsp; [<a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/index.html#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Index.html" title="Index" rel="index">Index</a>]</p>
</div>
<hr>
<h3 class="section" id="Predicates-on-Lists">5.2 Predicates on Lists</h3>
<a class="index-entry-id" id="index-predicates-for-lists"></a>
<a class="index-entry-id" id="index-list-predicates"></a>

<p>The following predicates test whether a Lisp object is an atom,
whether it is a cons cell or is a list, or whether it is the
distinguished object <code class="code">nil</code>.  (Many of these predicates can be
defined in terms of the others, but they are used so often that it is
worth having them.)
</p>
<dl class="first-deffn first-defun-alias-first-deffn">
<dt class="deffn defun-alias-deffn" id="index-consp"><span class="category-def">Function: </span><span><strong class="def-name">consp</strong> <var class="def-var-arguments">object</var><a class="copiable-link" href="#index-consp"> ¶</a></span></dt>
<dd><p>This function returns <code class="code">t</code> if <var class="var">object</var> is a cons cell, <code class="code">nil</code>
otherwise.  <code class="code">nil</code> is not a cons cell, although it <em class="emph">is</em> a list.
</p></dd></dl>

<dl class="first-deffn first-defun-alias-first-deffn">
<dt class="deffn defun-alias-deffn" id="index-atom"><span class="category-def">Function: </span><span><strong class="def-name">atom</strong> <var class="def-var-arguments">object</var><a class="copiable-link" href="#index-atom"> ¶</a></span></dt>
<dd><p>This function returns <code class="code">t</code> if <var class="var">object</var> is an atom, <code class="code">nil</code>
otherwise.  All objects except cons cells are atoms.  The symbol
<code class="code">nil</code> is an atom and is also a list; it is the only Lisp object
that is both.
</p>
<div class="example">
<pre class="example-preformatted">(atom <var class="var">object</var>) ≡ (not (consp <var class="var">object</var>))
</pre></div>
</dd></dl>

<dl class="first-deffn first-defun-alias-first-deffn">
<dt class="deffn defun-alias-deffn" id="index-listp"><span class="category-def">Function: </span><span><strong class="def-name">listp</strong> <var class="def-var-arguments">object</var><a class="copiable-link" href="#index-listp"> ¶</a></span></dt>
<dd><p>This function returns <code class="code">t</code> if <var class="var">object</var> is a cons cell or
<code class="code">nil</code>.  Otherwise, it returns <code class="code">nil</code>.
</p>
<div class="example">
<div class="group"><pre class="example-preformatted">(listp '(1))
     ⇒ t
</pre></div><div class="group"><pre class="example-preformatted">(listp '())
     ⇒ t
</pre></div></div>
</dd></dl>

<dl class="first-deffn first-defun-alias-first-deffn">
<dt class="deffn defun-alias-deffn" id="index-nlistp"><span class="category-def">Function: </span><span><strong class="def-name">nlistp</strong> <var class="def-var-arguments">object</var><a class="copiable-link" href="#index-nlistp"> ¶</a></span></dt>
<dd><p>This function is the opposite of <code class="code">listp</code>: it returns <code class="code">t</code> if
<var class="var">object</var> is not a list.  Otherwise, it returns <code class="code">nil</code>.
</p>
<div class="example">
<pre class="example-preformatted">(listp <var class="var">object</var>) ≡ (not (nlistp <var class="var">object</var>))
</pre></div>
</dd></dl>

<dl class="first-deffn first-defun-alias-first-deffn">
<dt class="deffn defun-alias-deffn" id="index-null"><span class="category-def">Function: </span><span><strong class="def-name">null</strong> <var class="def-var-arguments">object</var><a class="copiable-link" href="#index-null"> ¶</a></span></dt>
<dd><p>This function returns <code class="code">t</code> if <var class="var">object</var> is <code class="code">nil</code>, and
returns <code class="code">nil</code> otherwise.  This function is identical to <code class="code">not</code>,
but as a matter of clarity we use <code class="code">null</code> when <var class="var">object</var> is
considered a list and <code class="code">not</code> when it is considered a truth value
(see <code class="code">not</code> in <a class="ref" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Combining-Conditions.html">Constructs for Combining Conditions</a>).
</p>
<div class="example">
<div class="group"><pre class="example-preformatted">(null '(1))
     ⇒ nil
</pre></div><div class="group"><pre class="example-preformatted">(null '())
     ⇒ t
</pre></div></div>
</dd></dl>

<dl class="first-deffn first-defun-alias-first-deffn">
<dt class="deffn defun-alias-deffn" id="index-proper_002dlist_002dp"><span class="category-def">Function: </span><span><strong class="def-name">proper-list-p</strong> <var class="def-var-arguments">object</var><a class="copiable-link" href="#index-proper_002dlist_002dp"> ¶</a></span></dt>
<dd><p>This function returns the length of <var class="var">object</var> if it is a proper
list, <code class="code">nil</code> otherwise (see <a class="pxref" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Cons-Cells.html">Lists and Cons Cells</a>).  In addition to
satisfying <code class="code">listp</code>, a proper list is neither circular nor dotted.
</p>
<div class="example">
<div class="group"><pre class="example-preformatted">(proper-list-p '(a b c))
    ⇒ 3
</pre></div><div class="group"><pre class="example-preformatted">(proper-list-p '(a b . c))
    ⇒ nil
</pre></div></div>
</dd></dl>

</div>
<hr>
<div class="nav-panel">
<p>
Next: <a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/List-Elements.html">Accessing Elements of Lists</a>, Previous: <a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Cons-Cells.html">Lists and Cons Cells</a>, Up: <a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Lists.html">Lists</a> &nbsp; [<a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/index.html#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Index.html" title="Index" rel="index">Index</a>]</p>
</div>





</body></html>