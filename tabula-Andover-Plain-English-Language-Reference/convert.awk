BEGIN { FS="," }

{
    # Remove all quoting
    gsub("\"", "")

    # Print header from first field.
    printf("\" %s\n\n", $1)

    numwords = split($2, keywords, "|")
    split($3, type, "|")

    for (i = 1; i <= numwords; i++) {
        # Rename the System variable type.
        if (type[i] == "System variable") {
            type[i] = "Identifier"
        }

        numSplit = split(keywords[i], splitKeywords, /\.+/)

        for (j = 1; j <= numSplit; j++) {

            keyword = splitKeywords[j]

            # Some of the keywords just ended with ellipsis
            if (keyword == ""){
                continue
            }

            # If the keyword has non alphanumeric characters, we have to
            # use syntax match instead of syntax keyword.
            if (match(keyword, /[^a-zA-Z0-9]/)) {
                # Print all three normal versions of casing, UPPER, lower, Title.
                printf("syntax match %s \"%s\"\n", type[i], toupper(keyword))
                printf("syntax match %s \"%s\"\n", type[i], tolower(keyword))

                firstCharacter = substr(keyword, 1, 1)

                printf("syntax match %s \"%s\"\n", type[i], toupper(firstCharacter) tolower(substr(keyword, 2)))
            } else {
                # Print all three normal versions of casing, UPPER, lower, Title.
                printf("syntax keyword %s %s\n", type[i], toupper(keyword))
                printf("syntax keyword %s %s\n", type[i], tolower(keyword))

                firstCharacter = substr(keyword, 1, 1)

                printf("syntax keyword %s %s\n", type[i], toupper(firstCharacter) tolower(substr(keyword, 2)))
            }
        }
    }

    printf("\n\n")
}
