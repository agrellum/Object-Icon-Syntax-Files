% Object Icon syntax file.
%require ("cmode");

$1 = "icn";

create_syntax_table ($1);
define_syntax ("#","",'%', $1);                 % comments
define_syntax ("!%&*+-./:<=>?@\\^|~", '+', $1); % operators
define_syntax ("([{", ")]}", '(', $1);          % grouping
define_syntax (",;", ',', $1);                  % delimiters
define_syntax ('"', '"', $1);                   % double quoted string
%define_syntax ('\\', '\\', $1);                % escape
define_syntax ('\'', '"', $1);                  % single quoted cset
define_syntax ("0-9a-zA-Z_\x24\x26", 'w', $1);  % identifier - normal
define_syntax ("-+0-9a-zA-Z\x5c.", '0', $1);    % Numbers
set_syntax_flags ($1, 0);


() = define_keywords_n ($1, "bydoifofto", 2, 0);
() = define_keywords_n ($1, "\x24if\x26noendnot", 3, 0);
() = define_keywords_n ($1, "\x26pos\x26why\x26yescaseelsefaillinknextthen", 4, 0);
() = define_keywords_n ($1, "\x24else\x24line\x24load\x26cset\x26date\x26dump\x26fail\x26file\x26host\x26line\x26main\x26null\x26time\x26usetbreakclassconsteveryfinallocaluntilwhile", 5, 0);
() = define_keywords_n ($1, "\x24elsif\x24endif\x24error\x24uload\x24undef\x26ascii\x26break\x26clock\x26lcase\x26level\x26trace\x26ucasecreateglobalimportnativepublicrecordrepeatreturnstaticunless", 6, 0);
() = define_keywords_n ($1, "\x24define\x26digits\x26random\x26sourcedefaultinitialpackageprivatesucceedsuspend", 7, 0);
() = define_keywords_n ($1, "\x24include\x26current\x26handler\x26letters\x26subject\x26versionabstractoptionaloverridereadable", 8, 0);
() = define_keywords_n ($1, "\x24encoding\x26dateline\x26features\x26maxlevel\x26prognameinvocableprocedureprotected", 9, 0);
() = define_keywords_n ($1, "\x26errortext", 10, 0);
() = define_keywords_n ($1, "\x26errorvalue", 11, 0);
() = define_keywords_n ($1, "\x26errorcoexpr\x26errornumber", 12, 0);

() = define_keywords_n ($1, "is", 2, 1);
() = define_keywords_n ($1, "absanybalgetiorkeymapmaxminordpopposputseqsettabucs", 3, 1);
() = define_keywords_n ($1, "backcharcopycsetexitfindiandicomixorleftlistmanymoveprocpullpushrealreplsorttexttrimtypeupto", 4, 1);
() = define_keywords_n ($1, "clearcoactdelaydetabentabimagekeyofmatchrightsortftableuchar", 5, 1);
() = define_keywords_n ($1, "centercocopycofaildeleteinsertishiftkeyvalmemberrunerrserialstringsyserrsystem", 6, 1);
() = define_keywords_n ($1, "classofcollectdisplayintegernumericreverseweakref", 7, 1);
() = define_keywords_n ($1, "fatalerr", 8, 1);
() = define_keywords_n ($1, "errorclearweakrefval", 10, 1);

define icn_mode ()
{
   variable icn = "icn";
   %c_mode ();
   set_mode (icn, 2);
   use_syntax_table (icn);
   run_mode_hooks("icn_mode_hook");
}
