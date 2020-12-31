# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(
  name: 'user1',
  username: 'user1',
  email: 'user1@gmail.com'
)
User.create(
  name: 'user2',
  username: 'user2',
  email: 'user2@gmail.com'
)
User.create(
  name: 'user3',
  username: 'user3',
  email: 'user3@gmail.com'
)
User.create(
  name: 'user4',
  username: 'user4',
  email: 'user4@gmail.com'
)


# article seeds

Article.create(
  author_id: User.find_by(name: 'user1').id,
  title: "Life is beautiful",
  content: "Life is beautiful is a 1997 Italian comedy-drama film directed by and starring Roberto Benigni, who co-wrote the film with Vincenzo Cerami. Benigni plays Guido Orefice, a Jewish Italian bookshop owner, who employs his fertile imagination to shield his son from the horrors of internment in a Nazi concentration camp. The film was partially inspired by the book In the End, I Beat Hitler by Rubino Romeo Salmonì and by Benigni's father, who spent two years in a German labour camp during World War II.

  The film was a critical and financial success. It grossed over $230 million worldwide, becoming one of the highest-grossing non-English language movies of all time.[4] It received widespread acclaim, with critics praising its story, performances, direction and the union of drama and comedy, despite some criticisms of using the subject matter for comedic purposes. The National Board of Review included it in the top five best foreign films of 1998.[5]
  
  The movie won the Grand Prix at the 1998 Cannes Film Festival, nine David di Donatello Awards (including Best Film), five Nastro d'Argento Awards in Italy, two European Film Awards, and three Academy Awards, including Best Foreign Language Film and Best Actor for Benigni, the first for a male non-English performance",
  cover: 'img1.jpg'
)

Article.create(
  author_id: User.find_by(name: 'user2').id,
  title: "Fight Club",
  content: "Fight Club is a 1999 American film directed by David Fincher and starring Brad Pitt, Edward Norton, and Helena Bonham Carter. It is based on the 1996 novel of the same name by Chuck Palahniuk. Norton plays the unnamed narrator, who is discontented with his white-collar job. He forms a 'fight club' with soap salesman Tyler Durden (Pitt), and becomes embroiled in a relationship with him and a destitute woman, Marla Singer (Bonham Carter).

  Palahniuk's novel was optioned by Fox 2000 Pictures producer Laura Ziskin, who hired Jim Uhls to write the film adaptation. Fincher was selected because of his enthusiasm for the story. He developed the script with Uhls and sought screenwriting advice from the cast and others in the film industry. He and the cast compared the film to Rebel Without a Cause (1955) and The Graduate (1967), with a theme of conflict between Generation X and the value system of advertising.[4][5]
  
  Studio executives did not like the film, and they restructured Fincher's intended marketing campaign to try to reduce anticipated losses. Fight Club failed to meet the studio's expectations at the box office, and received polarized reactions from critics. It was cited as one of the most controversial and talked-about films of 1999. The Guardian saw it as an omen for change in American political life, and described its visual style as ground-breaking. The film later found commercial success with its DVD release, establishing Fight Club as a cult classic and causing media to revisit the film. On the tenth anniversary of the film's release, The New York Times dubbed it the 'defining cult movie of our time.'",
  cover: 'img2.jpg'
)

Article.create(
  author_id: User.find_by(name: 'user2').id,
  title: "The Godfather",
  content: "The Godfather is a 1972 American crime film directed by Francis Ford Coppola who co-wrote the screenplay with Mario Puzo, based on Puzo's best-selling 1969 novel of the same name. The film stars Marlon Brando, Al Pacino, James Caan, Richard Castellano, Robert Duvall, Sterling Hayden, John Marley, Richard Conte, and Diane Keaton. It is the first installment in The Godfather trilogy. The story, spanning from 1945 to 1955, chronicles the Corleone family under patriarch Vito Corleone (Brando), focusing on the transformation of one of his sons, Michael Corleone (Pacino), from reluctant family outsider to ruthless mafia boss.

  Paramount Pictures obtained the rights to the novel for the price of $80,000, before it gained popularity.[2][3] Studio executives had trouble finding a director; their first few candidates turned down the position before Coppola signed on to direct the film. They and Coppola disagreed over the casting for several characters, in particular, Vito and Michael. Filming took place primarily on location around New York City and in Sicily, and was completed ahead of schedule. The musical score was composed principally by Nino Rota, with additional pieces by Carmine Coppola.
  
  The Godfather premiered at the Loew's State Theatre on March 14, 1972, and was widely released in the United States on March 24, 1972. It was the highest-grossing film of 1972,[4] and was for a time the highest-grossing film ever made,[3] earning between $246 and $287 million at the box office. The film received universal acclaim from critics and audiences, with praise for the performances, particularly those of Brando and Pacino, the directing, screenplay, cinematography, editing, score, and portrayal of the mafia. The Godfather acted as a catalyst for the successful careers of Coppola, Pacino, and other relative newcomers in the cast and crew. Additionally the film revitalized Brando's career, which had declined in the 1960s, and he went on to star in films such as Last Tango in Paris, Superman, and Apocalypse Now.
  
  At the 45th Academy Awards, the film won the Oscars for Best Picture, Best Actor (Brando), and Best Adapted Screenplay (for Puzo and Coppola). In addition, the seven other Oscar nominations included Pacino, Caan, and Duvall for Best Supporting Actor, and Coppola for Best Director. Since its release, The Godfather has been widely regarded as one of the greatest and most influential films ever made, especially in the gangster genre.[5] It was selected for preservation in the U.S. National Film Registry of the Library of Congress in 1990, being deemed 'culturally, historically, or aesthetically significant' and is ranked the second-greatest film in American cinema (behind Citizen Kane) by the American Film Institute. It was followed by sequels The Godfather Part II (1974) and The Godfather Part III (1990).",
  cover: 'img3.jpg'
)

Article.create(
  author_id: User.find_by(name: 'user3').id,
  title: "The pianist",
  content: "The Pianist is a 2002 biographical war drama film produced and directed by Roman Polanski, with a script by Ronald Harwood, and starring Adrien Brody.[3] It is based on the autobiographical book The Pianist (1946), a Holocaust memoir by the Polish-Jewish pianist and composer Władysław Szpilman, a Holocaust survivor.[4] The film was a co-production of France, the United Kingdom, Germany, and Poland.

  The Pianist premiered at the 2002 Cannes Film Festival on 24 May 2002, where it won the Palme d'Or, and went into wide release that September; the film received widespread critical acclaim, with critics lauding Polanski's direction, Brody's performance and Harwood's screenplay.[5] At the 75th Academy Awards, the film won for Best Director (Polanski), Best Adapted Screenplay (Harwood), and Best Actor (Brody), and was nominated for four others, including Best Picture. It also won the BAFTA Award for Best Film and BAFTA Award for Best Direction in 2003, and seven French Césars, including Best Picture, Best Director, and Best Actor for Brody.[6] It was included in BBC's 100 Greatest Films of the 21st Century in 2016.",
  cover: 'img4.jpg'
)
Article.create(
  author_id: User.find_by(name: 'user4').id,
  title: "Schindler's List",
  content: "Schindler's List is a 1993 American epic historical drama film directed and produced by Steven Spielberg and written by Steven Zaillian. It is based on the 1982 non-fiction novel Schindler's Ark by Australian novelist Thomas Keneally. The film follows Oskar Schindler, a German industrialist who together with his wife Emilie Schindler saved more than a thousand mostly Polish-Jewish refugees from the Holocaust by employing them in his factories during World War II. It stars Liam Neeson as Schindler, Ralph Fiennes as SS officer Amon Göth and Ben Kingsley as Schindler's Jewish accountant Itzhak Stern.

  Ideas for a film about the Schindlerjuden (Schindler Jews) were proposed as early as 1963. Poldek Pfefferberg, one of the Schindlerjuden, made it his life's mission to tell Schindler's story. Spielberg became interested when executive Sidney Sheinberg sent him a book review of Schindler's Ark. Universal Pictures bought the rights to the novel, but Spielberg, unsure if he was ready to make a film about the Holocaust, tried to pass the project to several directors before deciding to direct it.
  
  Principal photography took place in Kraków, Poland, over 72 days in 1993. Spielberg shot in black and white and approached the film as a documentary. Cinematographer Janusz Kamiński wanted to create a sense of timelessness. John Williams composed the score, and violinist Itzhak Perlman performed the main theme.
  
  Schindler's List premiered on November 30, 1993, in Washington, D.C. and was released on December 15, 1993, in the United States. Often listed among the greatest films ever made,[4][5][6][7] the film received international acclaim from critics for its tone, Spielberg's direction, performances and atmosphere; it was also a box office success, earning $322 million worldwide on a $22 million budget. It was nominated for twelve Academy Awards, winning seven, including Best Picture, Best Director, Best Adapted Screenplay, and Best Original Score, and won numerous other awards, including seven BAFTAs and three Golden Globe Awards. In 2007, the American Film Institute ranked Schindler's List 8th on its list of the 100 best American films of all time. The film was designated as 'culturally, historically or aesthetically significant' by the Library of Congress in 2004 and selected for preservation in the National Film Registry.",
  cover: 'img5.jpg'
)
Article.create(
  author_id: User.find_by(name: 'user1').id,
  title: "Big fish",
  content: "Big Fish is a 2003 American fantasy drama film directed by Tim Burton, and based on the 1998 novel of the same name by Daniel Wallace.[2] Starring Ewan McGregor, Albert Finney, Billy Crudup, Jessica Lange, Helena Bonham Carter, Alison Lohman, Robert Guillaume, Marion Cotillard, Steve Buscemi, and Danny DeVito, the film tells the story of a frustrated son who tries to determine the fact from fiction in his dying father's life.

  Screenwriter John August read a manuscript of the novel six months before it was published and convinced Columbia Pictures to acquire the rights. August began adapting the novel while producers negotiated with Steven Spielberg who planned to direct after finishing Minority Report (2002). Spielberg considered Jack Nicholson for the role of Edward Bloom, but eventually dropped the project to focus on Catch Me If You Can (2002). Tim Burton and Richard D. Zanuck took over after completing Planet of the Apes (2001) and brought Ewan McGregor and Albert Finney on board.
  
  The film's theme of reconciliation between a dying father and his son had special significance for Burton, as his father had died in 2000 and his mother in 2002, a month before he signed on to direct. Big Fish was shot on location in Alabama in a series of fairy tale vignettes evoking the tone of a Southern Gothic fantasy. Big Fish premiered on December 4, 2003 at the Hammerstein Ballroom and was released in theaters on December 10, 2003 by Columbia Pictures. It garnered positive reviews from critics, and was a box office hit, grossing $122.9 million against a $70 million budget. The film received award nominations in multiple film categories, including four Golden Globe Award nominations, seven nominations from the British Academy of Film and Television Arts, two Saturn Award nominations, and an Oscar and a Grammy Award nomination for Danny Elfman's original score. The set for the town of Spectre still remains and can be found in Millbrook, Alabama.",
  cover: 'img6.jpg'
)
Article.create(
  author_id: User.find_by(name: 'user3').id,
  title: "Finding Neverland",
  content: "Finding Neverland is a 2004 historical fantasy drama film directed by Marc Forster and written by David Magee, based on the 1998 play The Man Who Was Peter Pan by Allan Knee. The film is about playwright J. M. Barrie and his relationship with a family who inspired him to create Peter Pan. The film earned seven nominations at the 77th Academy Awards, including Best Picture, Best Adapted Screenplay, and Best Actor for Johnny Depp, and won for Best Original Score. The film was the inspiration for the stage musical of the same name in 2012",
  cover: 'img7.jpg'
)
Article.create(
  author_id: User.find_by(name: 'user3').id,
  title: "Crash",
  content: "Crash is a 2004 American crime drama film produced, directed, and co-written by Paul Haggis. The film features racial and social tensions in Los Angeles. A self-described 'passion piece' for Haggis, Crash was inspired by a real-life incident in which his Porsche was carjacked in 1991 outside a video store on Wilshire Boulevard.[3] The film features an ensemble cast, including Sandra Bullock, Don Cheadle (who also produced the film), Matt Dillon, Jennifer Esposito, William Fichtner, Brendan Fraser, Terrence Howard, Chris 'Ludacris' Bridges, Thandie Newton, Michael Peña, and Ryan Phillippe.

  Crash first premiered at the 2004 Toronto International Film Festival on September 10, 2004 before it was released in theaters on May 6, 2005 by Lions Gate Films. The film received positive reviews from critics, who praised the directing, screenplay, performances (particularly from Dillon), but earned polarized responses for what some saw as an oversimplified depiction and portrayal of race relations. The film was profitable at the box office, earning $98.4 million worldwide against its $6.5 million budget.
  
  The film earned several accolades and nominations. Dillon was particularly praised for his performance and received nominations for Best Supporting Actor from the Academy Awards, BAFTA, Golden Globe, and Screen Actors Guild Award. Additionally, the cast won the Screen Actors Guild Award for Outstanding Performance by a Cast in a Motion Picture. The film received six Academy Award nominations, and controversially won three for Best Picture, Best Original Screenplay, and Best Film Editing at the 78th Academy Awards. It was also nominated for nine BAFTA Awards and won two, for Best Original Screenplay and Best Supporting Actress for Newton.",
  cover: 'img8.jpg'
)
Article.create(
  author_id: User.find_by(name: 'user2').id,
  title: "American History X",
  content: "American History X is a 1998 American crime drama film directed by Tony Kaye and written by David McKenna. The film stars Edward Norton and Edward Furlong, as two brothers from Los Angeles who are involved in the white supremacist and neo-Nazi movements. The older brother (Norton) serves three years in prison for voluntary manslaughter, and is rehabilitated during this time, and then tries to prevent his brother from further indoctrination. The supporting cast includes Fairuza Balk, Stacy Keach, Elliott Gould, Avery Brooks, Ethan Suplee and Beverly D'Angelo.

  McKenna wrote the script based on his own childhood and experiences of growing up in San Diego. He then sold the script to New Line Cinema, who were impressed by the writing. American History X was Kaye's first directorial role in a feature film. Budgeted at $20 million, filming took place in 1997. Before the film's release, Kaye and the film studio were in disagreements about the final cut of the film. The final version was longer than Kaye intended, which resulted in him publicly disowning the film and this negatively affected his directing career.
  
  The film was released in the United States on October 30, 1998 and distributed by New Line Cinema. Despite lukewarm success at the box office, grossing only $24 million worldwide, American History X was praised by critics. In particular, Norton was acclaimed for his compelling and realistic performance, which earned him an Academy Award nomination for Best Actor. The film has also been used for educational purposes in the United States and in other countries. A follow-up, African History Y, with Kaye returning as director and starring Djimon Hounsou, is in active development.",
  cover: 'img9.jpg'
)
Article.create(
  author_id: User.find_by(name: 'user1').id,
  title: "District 9",
  content: "District 9 is a 2009 science fiction action film directed by Neill Blomkamp in his feature film debut, written by Blomkamp and Terri Tatchell, and produced by Peter Jackson and Carolynne Cunningham. It is a co-production of New Zealand, the United States and South Africa. The film stars Sharlto Copley, Jason Cope, and David James, and was adapted from Blomkamp's 2006 short film Alive in Joburg.

  The film is partially presented in a found footage format by featuring fictional interviews, news footage, and video from surveillance cameras. The story, which explores themes of humanity, xenophobia and social segregation, begins in an alternate 1982, when an alien spaceship appears over Johannesburg, South Africa. When a population of sick and malnourished insectoid aliens are discovered on the ship, the South African government confines them to an internment camp called District 9. Twenty years later, during the government's relocation of the aliens to another camp, one of the confined aliens named Christopher Johnson, who is about to try to escape from Earth with his son and return home, crosses paths with a bureaucrat leading the relocation named Wikus van der Merwe. The title and premise of District 9 were inspired by events in Cape Town's District Six, during the apartheid era.
  
  A viral marketing campaign for the film began in 2008 at San Diego Comic-Con, while the theatrical trailer debuted in July 2009. District 9 was released by TriStar Pictures on 14 August 2009, in North America and became a financial success, earning over $210 million at the box office. It also received acclaim from critics, who praised the film's direction, performances, themes, and story, with some calling it one of the best science fiction films of the 2000s, and garnered numerous awards and nominations, including four Academy Award nominations for Best Picture, Best Adapted Screenplay, Best Visual Effects, and Best Film Editing.",
  cover: 'img10.jpg'
)
Article.create(
  author_id: User.find_by(name: 'user2').id,
  title: "The Abyss",
  content: "The Abyss is a 1989 American science fiction film written and directed by James Cameron and starring Ed Harris, Mary Elizabeth Mastrantonio, and Michael Biehn. When an American submarine sinks in the Caribbean, a US search and recovery team works with an oil platform crew, racing against Soviet vessels to recover the boat. Deep in the ocean, they encounter something unexpected.

  The film was released on August 9, 1989, receiving generally positive reviews and grossed $89.8 million. It won the Academy Award for Best Visual Effects and was nominated for three more Academy Awards",
  cover: 'img11.jpg'
)
Article.create(
  author_id: User.find_by(name: 'user3').id,
  title: "E.T. the Extra-Terrestrial",
  content: "E.T. the Extra-Terrestrial is a 1982 American science fiction film produced and directed by Steven Spielberg, and written by Melissa Mathison. It tells the story of Elliott, a boy who befriends an extraterrestrial, dubbed E.T., who is stranded on Earth. The film stars Dee Wallace, Peter Coyote, and Henry Thomas.

  The concept was based on an imaginary friend Spielberg created after his parents' divorce. In 1980, Spielberg met Mathison and developed a new story from the failed project Night Skies. Filming took place from September to December 1981 on a budget of $10.5 million (equivalent to $25 million in 2019 dollars). Unlike most films, it was shot in rough chronological order, to facilitate convincing emotional performances from the young cast. The animatronics of E.T. were designed by Carlo Rambaldi.
  
  Released on June 11, 1982, by Universal Pictures, E.T. was an immediate blockbuster, surpassing Star Wars to become the highest-grossing film of all time—a record it held for 11 years until Jurassic Park, another Spielberg-directed film, surpassed it. E.T. was widely acclaimed by critics and is considered to be one of the greatest films of all time, and it won four Oscars at the 55th Academy Awards: Best Original Score, Best Visual Effects, Best Sound and Best Sound Editing. It was re-released in 1985, and again in 2002, to celebrate its 20th anniversary, with altered shots and additional scenes. In 1994, the film was added to the National Film Registry of the Library of Congress, being designated as 'culturally, historically, or aesthetically significant.'",
  cover: 'img12.jpg'
)
Article.create(
  author_id: User.find_by(name: 'user2').id,
  title: "Free willy",
  content: "Free Willy is a 1993 American family drama film, directed by Simon Wincer, produced by Lauren Shuler Donner and Jennie Lew Tugend, written by Keith A. Walker and Corey Blechman from a story by Walker and distributed by Warner Bros. under the Warner Bros. Family Entertainment label. The film stars Jason James Richter, in his film debut, as Jesse, a foster boy who befriends a captive orca named Willy.

  Shot between May and August 1992 and released on July 16, 1993, the film received positive attention from critics and was a commercial success, grossing $153.6 million from a $20 million budget. It grew into a small franchise, including a television series, two sequels and a direct-to-video reboot.",
  cover: 'img13.jpg'
)
Article.create(
  author_id: User.find_by(name: 'user1').id,
  title: "Howl’s Moving Castle",
  content: "Howl's Moving Castle (Japanese: ハウルの動く城, Hepburn: Hauru no Ugoku Shiro) is a 2004 Japanese animated fantasy film written and directed by Hayao Miyazaki. The film is loosely based on the 1986 novel of the same name by British author Diana Wynne Jones. The film was produced by Toshio Suzuki, animated by Studio Ghibli and distributed by Toho. The Japanese voice cast featured Chieko Baisho and Takuya Kimura, while the English dub version starred Jean Simmons, Emily Mortimer, Lauren Bacall, Christian Bale, Josh Hutcherson and Billy Crystal.

  The story is set in a fictional kingdom where both magic and early 20th-century technology are prevalent, against the backdrop of a war with another kingdom. The film tells the story of a young, content milliner named Sophie who is turned into an old woman by a witch who enters her shop and curses her. She encounters a wizard named Howl and gets caught up in his resistance to fighting for the king.
  
  Influenced by Miyazaki's opposition to the United States' invasion of Iraq in 2003, the film contains strong anti-war themes. Miyazaki stated that he 'had a great deal of rage' about the Iraq war, which led him to make a film which he felt would be poorly received in the US. It also explores the theme of old age, depicting age positively as something which grants the protagonist freedom. The film contains feminist elements as well, and carries messages about the value of compassion.
  
  In 2013, Miyazaki said the film was his favorite creation, explaining 'I wanted to convey the message that life is worth living, and I don't think that's changed.' The movie is thematically significantly different from the book; while the book focuses on challenging class and gender norms, the film focuses on love, and personal loyalty and the destructive effects of war.
  
  Howl's Moving Castle had its world premiere at the Venice Film Festival on 5 September 2004, and was theatrically released in Japan on 20 November 2004. It went on to gross $190 million in Japan and $236 million worldwide, making it one of the most financially successful Japanese films in history. The film received critical acclaim, particularly for its visuals and Miyazaki's presentation of the themes. It was nominated for the Academy Award for Best Animated Feature at the 78th Academy Awards, but lost to Wallace & Gromit: The Curse of the Were-Rabbit, in 2006, and won several other awards, including four Tokyo Anime Awards and a Nebula Award for Best Script.",
  cover: 'img14.jpg'
)
Article.create(
  author_id: User.find_by(name: 'user4').id,
  title: "Tamako Market",
  content: "Tamako Market (Japanese: たまこまーけっと, Hepburn: Tamako Māketto) is a Japanese anime television series produced by Kyoto Animation, directed by Naoko Yamada, and written by Reiko Yoshida. The series aired in Japan between January 10 and March 28, 2013. The anime has been licensed in North America by Sentai Filmworks. A film sequel, Tamako Love Story, premiered in Japan on April 26, 2014, paired with a short film titled Dera-chan of the Southern Islands.",
  cover: 'img15.jpeg'
)
Article.create(
  author_id: User.find_by(name: 'user4').id,
  title: "The Anthem of the Heart",
  content: "The Anthem of the Heart (subtitled Beautiful Word Beautiful World) is a 2015 Japanese animated youth drama film produced by A-1 Pictures, directed by Tatsuyuki Nagai, written by Mari Okada and character designed by Masayoshi Tanaka and serving as chief animation director under the creative team Super Peace Busters.[2] The original title is Kokoro ga Sakebitagatterunda. (心が叫びたがってるんだ。, lit. The Heart Wants to Shout) and it is abbreviated as Kokosake (ここさけ). It was worked on by the staff who had previously worked on the anime series Anohana: The Flower We Saw That Day and its film adaptation, as well as Toradora!. It was released on September 19, 2015",
  cover: 'img16.jpg'
)

# Category seeds

Category.create(
  name: 'Sci-Fi',
  priority: 3
)

Category.create(
  name: 'Drama',
  priority: 2
)
Category.create(
  name: 'Thriller',
  priority: 1
)
Category.create(
  name: 'Familiar',
  priority: 2
)
Category.create(
  name: 'Anime',
  priority: 5
)

# Bridge table

Artcat.create(
  article_id: Article.find_by(title: 'Life is beautiful').id,
  category_id: Category.find_by(name: 'Drama').id
)

Artcat.create(
  article_id: Article.find_by(title: "Fight Club").id,
  category_id: Category.find_by(name: 'Drama').id
)

Artcat.create(
  article_id: Article.find_by(title: "The Godfather").id,
  category_id: Category.find_by(name: 'Drama').id
)

Artcat.create(
  article_id: Article.find_by(title: "The pianist").id,
  category_id: Category.find_by(name: 'Drama').id
)

Artcat.create(
  article_id: Article.find_by(title: "Schindler's List").id,
  category_id: Category.find_by(name: 'Drama').id
)

Artcat.create(
  article_id: Article.find_by(title: "Big fish").id,
  category_id: Category.find_by(name: 'Drama').id
)

Artcat.create(
  article_id: Article.find_by(title: "Finding Neverland").id,
  category_id: Category.find_by(name: 'Drama').id
)

Artcat.create(
  article_id: Article.find_by(title: "Crash").id,
  category_id: Category.find_by(name: 'Drama').id
)

Artcat.create(
  article_id: Article.find_by(title: "American History X").id,
  category_id: Category.find_by(name: 'Sci-Fi').id
)

Artcat.create(
  article_id: Article.find_by(title: "District 9").id,
  category_id: Category.find_by(name: 'Sci-Fi').id
)

Artcat.create(
  article_id: Article.find_by(title: "The Abyss").id,
  category_id: Category.find_by(name: 'Sci-Fi').id
)

Artcat.create(
  article_id: Article.find_by(title: "E.T. the Extra-Terrestrial").id,
  category_id: Category.find_by(name: 'Familiar').id
)

Artcat.create(
  article_id: Article.find_by(title: "Free willy").id,
  category_id: Category.find_by(name: 'Familiar').id
)

Artcat.create(
  article_id: Article.find_by(title: "Howl’s Moving Castle").id,
  category_id: Category.find_by(name: 'Anime').id
)

Artcat.create(
  article_id: Article.find_by(title: "Tamako Market").id,
  category_id: Category.find_by(name: 'Anime').id
)

Artcat.create(
  article_id: Article.find_by(title: "The Anthem of the Heart").id,
  category_id: Category.find_by(name: 'Anime').id
)

# Vote seeds

Vote.create(
  user_id: User.find_by(name: 'user1').id,
  article_id: Article.third.id
)

Vote.create(
  user_id: User.find_by(name: 'user1').id,
  article_id: Article.find_by(title: "Free willy").id
)

Vote.create(
  user_id: User.find_by(name: 'user2').id,
  article_id: Article.find_by(title: "Free willy").id
)

Vote.create(
  user_id: User.find_by(name: 'user3').id,
  article_id: Article.find_by(title: "Free willy").id
)

Vote.create(
  user_id: User.find_by(name: 'user4').id,
  article_id: Article.find_by(title: "Free willy").id
)