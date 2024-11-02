function pigLatin(string) {
    const vowels = ["a", "e", "i", "o", "u"];
    const words = string.split(" ");
    let result = [];

    words.forEach(word => {
        let pigLatinWord = "";
        if (vowels.includes(word[0].toLowerCase())) {
            pigLatinWord = word + "ay";
        } else {
            let consonantCluster = "";
            let i = 0;
            while (i < word.length && !vowels.includes(word[i].toLowerCase())) {
                // Handle "qu" as a single phoneme
                if (word[i].toLowerCase() === "q" && word[i + 1] && word[i + 1].toLowerCase() === "u") {
                    consonantCluster += "qu";
                    i += 2;
                    break;
                }
                consonantCluster += word[i];
                i++;
            }
            pigLatinWord = word.slice(consonantCluster.length) + consonantCluster + "ay";
        }

        result.push(pigLatinWord);
    });

    return result.join(" ");
}

module.exports = pigLatin;
