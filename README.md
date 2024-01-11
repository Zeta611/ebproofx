# The ebproofx package

A LaTeX package to typeset formal proofs and rules in the style of sequent calculus.
This is an extended work of [ebproof](https://ctan.org/pkg/ebproof).

## Motivation

The [ebproof](https://ctan.org/pkg/ebproof) package provides an ergonomic and scalable way to typeset proof trees.
However, it has been a long-standing issue to stack hypotheses using ebproof ([here](https://framagit.org/manu/ebproof/-/issues/7) and [here](https://tex.stackexchange.com/q/530939/97583)).

Moreover, I believe this will reduce, if not resolve, a need to make ebproof compatible with the [mathpartir](https://ctan.org/pkg/mathpartir) environment ([here](https://framagit.org/manu/ebproof/-/issues/6) and [here](https://github.com/jonsterling/latex-ebproof-rules)).

## Extensions from the ebproof package

The `ebproofx` package is a non-breaking extension upon the [`ebproof` package](https://ctan.org/pkg/ebproof) with the following extras:
- The `InfRule` environment, which enables typesetting the rule name above the inference rule.
- Extends the `infer` macro to accept comma-separated lists of numbers, instead of a single number, to gather hypotheses in multiple lines.
  For instance, `\infer{1,2,3}{X}` will stack six hypotheses, and break them into groups containing one, two, and three hypotheses.

## License

ebproofx is available under The LaTeX Project Public License 1.3.
See the [LICENSE](./LICENSE) file for more info.
