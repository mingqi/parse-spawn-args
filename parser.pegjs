args
	= _? first:arg rest:(_ a:arg {return a})* _?
	{
		var result = []
		result.push(first)
		for (i = 0; i< rest.length; i++){
			result.push(rest[i])
		}
		return result;
	}

_ "whitespace"
  = ( "\t" / " " ) *

doubleQuotaChar
	= [^"\\]
	/ "\\" '"' { return '"'}
	/ "\\" "\\" { return '\\'}

singleQuotaChar
  	= [^'\\]
  	/ "\\" "'" { return "'"}
	/ "\\" "\\" { return '\\'}

noQuotationChar
  	= [^'"\t ]

doubleQuotation = '"'
singleQuotation = "'"

arg
	= doubleQuotation chars:doubleQuotaChar* doubleQuotation { return chars.join(""); }
	/ singleQuotation chars:singleQuotaChar* singleQuotation { return chars.join(""); }
	/ chars:noQuotationChar+ {return chars.join("")}
