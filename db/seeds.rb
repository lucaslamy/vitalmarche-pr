User.create!([
  {name: "Admin", email: "contactvitalmarche@gmail.com", encrypted_password: "$2a$11$8DDdICYHtsFGe9sKKBZiLuZ.Ab.g/ZspfdQZ71d/aVE9IEBlcdNeq", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 41, current_sign_in_at: "2020-02-05 15:42:59", last_sign_in_at: "2020-02-05 13:29:38", current_sign_in_ip: "172.25.0.1", last_sign_in_ip: "172.25.0.1", invitation_token: nil, invitation_created_at: nil, invitation_sent_at: nil, invitation_accepted_at: nil, invitation_limit: nil, invited_by_type: nil, invited_by_id: nil, invitations_count: 0}
])
Album.create!([
  {title: "2EME EDITION DE LA VITAL'OISE - 19 MAI 2019 À PIERREFONDS", picture: ["image-10.jpg", "image-9.jpg", "image-8.jpg", "image-7.jpg", "image-6.jpg", "image-5.jpg", "image-4.jpg", "image-3.jpg", "image-2.jpg", "image.jpg"], private: false},
  {title: "LES PASSAGES PARISIENS - TREK URBAIN- 27 AVRIL 2019", picture: ["image-11.jpg", "image-12.jpg", "image-13.jpg"], private: true},
  {title: "TEST - ALBUM PRIVÉ", picture: ["winter-landscape-636634_1920.jpg", "header2.jpg"], private: true},
  {title: "TEST - ALBUM PUBLIC", picture: ["header2.jpg", "winter-landscape-636634_1920.jpg"], private: false}
])
Article.create!([
  {title: "2 ème édition de la Vital'oise à Pierrefonds !", content: "<p>Une centaine de participants , 2 parcours (14 et 8 km) dans le massif forestier autour de Pierrefonds.</p>\r\n\r\n<p><em><strong>Retrouvez toutes les&nbsp;images&nbsp;dans la Galerie Photos</strong></em></p>\r\n", date: "2019-05-19 19:12:15", picture: "image-14.jpg"},
  {title: "Rencontre Sport & Culture à l'Abbaye de Chaalis avec le Club Marly Nordic", content: "<p>Nous les avions re&ccedil;us &agrave; Pierrefonds en f&eacute;vrier dernier, ils nous ont accueillis ce dimanche 25 mai. Ils nous avaient r&eacute;serv&eacute;s un super programme : 10 km de marche nordique en for&ecirc;t d&#39;Ermenonville, un&nbsp;d&eacute;licieux d&eacute;jeuner,&nbsp; suivi d&#39;une visite de l&#39;Abbaye de Chaalis, de la roseraie et du mus&eacute;e Jaquemart- Andr&eacute;. Une tr&egrave;s belle journ&eacute;e !</p>\r\n", date: "2019-05-25 19:13:41", picture: "image-15.jpg"}
])
Event.create!([
  {title: "Trekking", content: "<p>Trekking</p>\r\n", picture: "winter-landscape-636634_1920.jpg", start_date: "2020-02-03 11:37:58", end_date: "2020-02-26 11:38:04"},
  {title: "Marche", content: "<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.&nbsp;</p>\r\n", picture: "winter-landscape-636634_1920.jpg", start_date: "2020-02-02 11:39:42", end_date: "2020-02-18 11:39:46"},
  {title: "Marche n°2", content: "<p><span style=\"color:#2ecc71\">Marche</span> &agrave; <span style=\"font-family:Comic Sans MS,cursive\">Pierrefonds</span>, venez<strong> nombreux</strong> !&nbsp;<img alt=\"smiley\" height=\"12\" src=\"http://127.0.0.1:3000/assets/ckeditor/plugins/smiley/images/regular_smile.png\" title=\"smiley\" width=\"12\" />&nbsp;</p>\r\n", picture: "image-6.jpg", start_date: "2020-02-02 11:40:29", end_date: "2020-02-03 11:40:32"},
  {title: "Marche n°3", content: "<p>Marche du 29</p>\r\n", picture: "winter-landscape-636634_1920.jpg", start_date: "2020-02-06 11:41:22", end_date: "2020-02-21 11:41:40"},
  {title: "Marche n°4", content: "<p>Marche n&deg;4</p>\r\n", picture: "winter-landscape-636634_1920.jpg", start_date: "2020-02-28 11:42:15", end_date: "2020-02-29 11:42:17"}
])
Link.create!([
  {title: "Questionnaire", url: "https://forms.gle/Q6vTHZzXqVEhwkZ98"}
])
Pdf.create!([
  {title: "Gazette n°1", file: "CDC_site_internet_VITALMARCHE.pdf", latest: nil},
  {title: "Gazette n°2", file: "CDC_site_internet_VITALMARCHE.pdf", latest: nil},
  {title: "Gazette n°3", file: "PRPoster.pdf", latest: true}
])
Picture.create!([
  {title: "rejoignez-nous", picture: "logo.png"},
  {title: "questionnaire", picture: "header2.jpg"}
])
Slideshow.create!([
  {title: "image1", picture: "header.jpg"},
  {title: "image2", picture: "header2.jpg"},
  {title: "image3", picture: "header4.jpg"}
])
Text.create!([
  {title: "rejoignez-nous", content: "<p>Vous avez d&eacute;cid&eacute; de vous mettre (ou vous remettre) au sport et vous cherchez une activit&eacute; compl&egrave;te, accessible, &eacute;conomique, tonique, dynamique, de plein air et conviviale.<br />\r\nVous voulez essayer, 2 s&eacute;ances d&rsquo;essais vous sont propos&eacute;es avec pr&ecirc;t de b&acirc;tons.<br />\r\nPour votre &eacute;quipement, ne pas avoir trop chaud ni trop froid, c&rsquo;est utiliser la m&eacute;thode des multicouches.<br />\r\nPour bien marcher il faut prendre soins de ses pieds.</p>\r\n\r\n<p><br />\r\n<br />\r\n&Agrave; pr&eacute;voir :</p>\r\n\r\n<p>&bull; De bonne chaussures adapt&eacute;e &agrave; la marche nordique</p>\r\n\r\n<p>&bull; Un sac &agrave; dos avec boissons et encas</p>\r\n\r\n<p>&bull; Une paire de b&acirc;tons</p>\r\n\r\n<p>&bull; Une lampe frontale pour les entra&icirc;nements nocturne</p>\r\n"},
  {title: "contactez-nous", content: "<p><u>Adresse postale :</u> Place de la Mairie 60350 PIERREFONDS</p>\r\n\r\n<p><u>Adresse mail :</u> vitalmarche@gmail.com</p>\r\n\r\n<p><u>Bureau :</u></p>\r\n\r\n<p>&bull; Pr&eacute;sidente : Christine, 0642720516</p>\r\n\r\n<p>&bull; Secr&eacute;taire&nbsp;: Fabienne, 0624215423</p>\r\n\r\n<p>&bull; Tr&eacute;sori&egrave;re&nbsp;: Chantale, 0661714854</p>\r\n\r\n<p>&bull; Animateur : Christophe, 06.33.35.54.25</p>\r\n"},
  {title: "questionnaire", content: "<p><span style=\"background-color:#ffffff; color:#333333; font-family:Raleway,sans-serif; font-size:14px\">Veuillez cliquer sur le lien ci-dessous afin de r&eacute;pondre &agrave; un questionnaire s&#39;il vous pla&icirc;t.</span></p>\r\n"},
  {title: "qui sommes nous", content: "<p>VITAL&#39;MARCHE est une association, cr&eacute;&eacute;e au cours de l&rsquo;&eacute;t&eacute; 2018, domicili&eacute;e &agrave; Pierrefonds et affili&eacute;e &agrave; la F&eacute;d&eacute;ration Fran&ccedil;aise de Randonn&eacute;e. Elle est n&eacute;e de la volont&eacute; d&rsquo;un groupe de marcheurs qui avait envie de partager un sport de plein air dans la bonne humeur. &nbsp; Chaque semaine, nous nous retrouvons pour marcher et plus d&egrave;s que l&rsquo;occasion se pr&eacute;sente.</p>\r\n"},
  {title: "entraînements", content: "<p>Nous proposons 3 entra&icirc;nements hebdomadaires (mardi matin, jeudi soir, samedi ou dimanche matin par alternance) encadr&eacute;s par des animateurs dipl&ocirc;m&eacute;s.</p>\r\n"},
  {title: "cadre", content: "<p>Les marches se d&eacute;roulent principalement au c&oelig;ur des massifs forestiers du Compi&eacute;gnois (For&ecirc;ts&nbsp;domaniales de Laigue et de Compi&egrave;gne). &nbsp; Ce p&eacute;rim&egrave;tre offre une multitude de parcours vari&eacute;s (plats ou avec d&eacute;nivel&eacute;s, en plaine ou en sous-bois, sur de grandes all&eacute;es ou sur des chemins moins fr&eacute;quent&eacute;s) qui &eacute;voluent au fil des saisons.</p>\r\n"},
  {title: "sorties", content: "<p>Des sorties sont &eacute;galement organis&eacute;es sur une journ&eacute;e, ou un weekend.</p>\r\n"},
  {title: "qu'est-ce que la marche nordique", content: "<p>Plus dynamique que la randonn&eacute;e, la marche nordique a pour principe d&rsquo;accentuer le mouvement de balancier naturel des bras &agrave; l&rsquo;aide de deux b&acirc;tons.<br />\r\nLe corps est ainsi propuls&eacute; vers l&rsquo;avant. On va plus vite, plus loin avec moins de fatigue.<br />\r\nLa d&eacute;pense d&rsquo;&eacute;nergie est accrue et le plaisir de la pratique arrive d&egrave;s les premi&egrave;res foul&eacute;es car la technique est simple.<br />\r\nAccessible &agrave; tous, cette pratique ravira les jeunes, les moins jeunes, quelle que soit leur condition physique.<br />\r\nC&rsquo;est aussi un sport familial et convivial qui regroupe un large public.</p>\r\n"}
])
