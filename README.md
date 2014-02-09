Fate-XSLT
=========

Character
[DTD](http://www.w3.org/TR/xhtml1/dtds.html)s for
[Evil Hat Productions](http://evilhat.com/) and
[VSCA Publishing](http://vsca.ca/)'s
[Fate Core](http://www.evilhat.com/home/fate-core/),
[Fate Accelerated](http://www.evilhat.com/home/fae/) (FAE),
[Spirit of the Century](http://www.evilhat.com/home/spirit-of-the-century-2/) &amp;
[Diaspora](http://www.vsca.ca/Diaspora/) RPGs, along with
[XSLT](http://www.w3.org/TR/xslt) sheets for rendering to various output formats.

Store character files in the `characters` directory, and execute via

    ./publish.sh some_character_file.xml

which depends on a default XSL stylesheet being defined in the given XML document.
The sample characters demonstrate this.

Output (currently just HTML) is rendered into the `out` directory.
Validation is also available:

    ./validate.sh some_file.dtd some_character_file.xml other_character_file.xml

Various rule variants are supported, via boolean attributes of the <hacks> element.
Currently supported variants include
- [Conditions](http://fate-srd.com/fate-system-toolkit/conditions) (from [Fate System Toolkit](http://fate-srd.com/fate-system-toolkit/))
- Corruption (from [Fate Freeport Companion](http://www.evilhat.com/home/fate-freeport-companionprinted-by-the-elves/))
- [Skill Modes](http://fate-srd.com/fate-system-toolkit/skill-modes) (from [Fate System Toolkit](http://fate-srd.com/fate-system-toolkit/))

Other useful URLs:
- http://www.faterpg.com/
- http://fate-srd.com/

I develop on a Lubuntu 13.10 system with `xmllint` and `xsltproc` executables
available. Those assumptions are reflected in the stock versions of the publish
executables for now.
