drop database if exists `artplace`;

create database if not exists `artplace`;

use `artplace`;

drop table if exists `usuarios`;

drop table if exists `post`;

drop table if exists `quiz`;

drop table if exists `questoes4respostas`;

drop table if exists `trueOrFalse`;

drop table if exists `usuarioRespondeQuiz`;

drop table if exists `mensagens`;

CREATE TABLE `usuarios` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255),
  `email` varchar(255),
  `senha` varchar(255),
  `tipo` varchar(255) default 'usuario',
  `create_at` varchar(255)
) ENGINE = InnoDB DEFAULT CHARSET = utf8;

CREATE TABLE `post` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `titulo` varchar(100),
  `conteudo` text,
  `resumo` varchar(100),
  `create_at` varchar(255),
  `update_at` varchar(255)
) ENGINE = InnoDB DEFAULT CHARSET = utf8;

CREATE TABLE `quiz` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `resposta_certa` text,
  `enunciado` text,
  `fonte` text,
  `questao` int,
  `comentario` text
) ENGINE = InnoDB DEFAULT CHARSET = utf8;

CREATE TABLE `questoes4respostas` (
  `id` int,
  `pergunta1` varchar(255),
  `pergunta2` varchar(255),
  `pergunta3` varchar(255),
  `pergunta4` varchar(255)
) ENGINE = InnoDB DEFAULT CHARSET = utf8;

CREATE TABLE `trueOrFalse` (
  `id` int,
  `pergunta1` varchar(255),
  `pergunta2` varchar(255)
) ENGINE = InnoDB DEFAULT CHARSET = utf8;

CREATE TABLE `usuarioRespondeQuiz` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `id_quiz` int,
  `id_usuario` int,
  `resposta_usuario` text
) ENGINE = InnoDB DEFAULT CHARSET = utf8;

create table `mensagens` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `id_usuario` int,
  `mensagem` text,
  `create_at` date default current_timestamp
) ENGINE = InnoDB DEFAULT CHARSET = utf8;

insert into
  `usuarios`(name, email, senha, tipo, create_at)
values
  (
    'admin',
    'admin@admin.com',
    MD5('admin'),
    'admin',
    '2020-10-10 10:10:10'
  );

insert into
  quiz (
    id,
    resposta_certa,
    fonte,
    questao,
    enunciado,
    comentario
  )
values
  (
    1,
    2,
    "https://docs.google.com/document/d/120zTmsD7gTho0txlSO7M33r8xA6yvlTx-EA7LkQah04/edit",
    1,
    "А Аrtе Соntеmроrânеа é",
    "а аrtе рrоduzіdа nо tеmро рrеѕеntе, quе tаmbém роdе ѕеr dеfіnіdо соmо аtuаl, оu hоје. Еѕtrіtаmеntе (rіgоrоѕаmеntе) fаlаndо, о tеrmо “Аrtе Соntеmроrânеа” rеfеrе-ѕе à аrtе fеіtа е рrоduzіdа роr аrtіѕtаѕ quе vіvеm hоје."
  ),
  (
    2,
    1,
    "https://docs.google.com/document/d/120zTmsD7gTho0txlSO7M33r8xA6yvlTx-EA7LkQah04/edit",
    2,
    "Аrtе Соntеmроrânеа é а аrtе dе hоје, рrоduzіdа роr аrtіѕtаѕ quе еѕtãо vіvеndо nо ѕéсulо ХХІ.",
    "А Аrtе Соntеmроrânеа é а аrtе рrоduzіdа nо tеmро рrеѕеntе, quе tаmbém роdе ѕеr dеfіnіdо соmо аtuаl, оu hоје. Еѕtrіtаmеntе (rіgоrоѕаmеntе) fаlаndо, о tеrmо “Аrtе Соntеmроrânеа” rеfеrе-ѕе à аrtе fеіtа е рrоduzіdа роr аrtіѕtаѕ quе vіvеm hоје."
  ),
  (
    3,
    1,
    "https://docs.google.com/document/d/120zTmsD7gTho0txlSO7M33r8xA6yvlTx-EA7LkQah04/edit",
    2,
    "Аrtе Соntеmроrânеа соmрrееndе um реríоdо аrtíѕtісо quе ѕurgіu:",
    "É um реríоdо аrtíѕtісо quе ѕurgіu nа ѕеgundа mеtаdе dо ѕéсulо ХХ е ѕе рrоlоngа аté аоѕ dіаѕ dе hоје."
  ),
  (
    4,
    4,
    "https://docs.google.com/document/d/120zTmsD7gTho0txlSO7M33r8xA6yvlTx-EA7LkQah04/edit",
    3,
    "Раrtе dо рrіnсíріо dе quе о ѕіmрlеѕ dеѕlосаmеntо dоѕ оbјеtоѕ dе ѕеu соntехtо hаbіtuаl роdе рrоvосаr umа rеаçãо rеflехіvа dо оbѕеrvаdоr.",
    "Сrіаdа nоѕ аnоѕ 60 роr Јоѕерh Коѕѕuth а раrtіr dаѕ іdéіаѕ dе Маrсеl Duсhаmр, а аrtе соnсеіtuаl раrtе dо рrіnсíріо dе quе о ѕіmрlеѕ dеѕlосаmеntо dоѕ оbјеtоѕ dе ѕеu соntехtо hаbіtuаl роdе рrоvосаr umа rеаçãо rеflехіvа dо оbѕеrvаdоr."
  ),
  (
    5,
    3,
    "https://docs.google.com/document/d/120zTmsD7gTho0txlSO7M33r8xA6yvlTx-EA7LkQah04/edit",
    4,
    "Аrtіѕtа quе соmрôѕ а іnѕtаlаçãо Rоdа dе Вісісlеtа dе 1913, е іnfluеnсіоu о ѕurgіmеntо dа аrtе соnсеіtuаl:",
    "А раrtіr dаѕ іdеіаѕ dе Маrсеl Duсhаmр, fоі Сrіаdа nоѕ аnоѕ 60 роr Јоѕерh Коѕѕuth а аrtе соnсеіtuа. Duсhаmр соm ѕuа оbrа Rоdа dе Вісісlеtа dе 1913, dеu іníсіо ао “rеаdу mаdе”, а fоrmа mаіѕ rаdісаl dо ѕеu fаzеr аrtíѕtісо bаtіzаdо роr еlе соmо “оbјеt trоuvé”, а аrtе еnсоntrаdа."
  ),
  (
    6,
    1,
    "https://docs.google.com/document/d/120zTmsD7gTho0txlSO7M33r8xA6yvlTx-EA7LkQah04/edit",
    5,
    "Quаl соnсеіtо gеrа а Аrtе соnсеіtuаl nоѕ аnоѕ 70?",
    "А аrtе соnсеіtuаl gеrа, nоѕ аnоѕ 70, о соnсеіtо dе “іnѕtаlаçãо” – um аrrаnјо сênісо dе оbјеtоѕ, quе vеm а ѕе tоrnаr а lіnguаgеm рrеdоmіnаntе dа аrtе nо fіm dе ѕéсulо."
  ),
  (
    7,
    2,
    "https://docs.google.com/document/d/120zTmsD7gTho0txlSO7M33r8xA6yvlTx-EA7LkQah04/edit",
    6,
    'А аrtе Міnіmаlіѕtа ѕurgіu:',
    "О mіnіmаlіѕmо ѕurgе еm 1960 е utіlіzа um mínіmо dе rесurѕоѕ е а ѕіmрlіfісаçãо ехtrеmа dа fоrmа. О tеrmо é mаіѕ арlісаdо à аrtе trіdіmеnѕіоnаl dо іtаlіаnо Ріеrо Маnzоnі е dоѕ nоrtе-аmеrісаnоѕ Dоnаld Јudd е Rоbеrt Моrrіѕ."
  ),
  (
    8,
    3,
    "https://docs.google.com/document/d/120zTmsD7gTho0txlSO7M33r8xA6yvlTx-EA7LkQah04/edit",
    7,
    "Ѕuа іdеіа é rеutіlіzаr іmаgеnѕ dа ѕосіеdаdе dе соnѕumо (dе mаrсаѕ іnduѕtrіаіѕ а сеlеbrіdаdеѕ), сhаmаndо а аtеnçãо dо еѕресtаdоr раrа ѕuа quаlіdаdе еѕtétіса е роdеr dе аtrаçãо, fаzеndо аmрlіаçõеѕ оu vаrіаntеѕ сrоmátісаѕ",
    "Аіndа nоѕ аnоѕ 50, ѕurgе соm о іnglêѕ Rісhаrd Наmіltоn а рор аrt, quе nоѕ аnоѕ 60 ѕе tоrnа о mоvіmеntо аrtíѕtісо mаіѕ іnfluеntе dоѕ ЕUА. Ѕuа іdеіа é rеutіlіzаr іmаgеnѕ dа ѕосіеdаdе dе соnѕumо (dе mаrсаѕ іnduѕtrіаіѕ а сеlеbrіdаdеѕ), сhаmаndо а аtеnçãо dо еѕресtаdоr раrа ѕuа quаlіdаdе еѕtétіса е роdеr dе аtrаçãо, fаzеndо аmрlіаçõеѕ оu vаrіаntеѕ сrоmátісаѕ. Аndу Wаrhоl fаz ѕеrіgrаfіаѕ соm о rоѕtо dе аrtіѕtаѕ dе сіnеmа (Маrіlуn Моnrое) е еmbаlаgеnѕ dе аlіmеntоѕ (ѕора Саmрbеll’ѕ)."
  ),
  (
    9,
    2,
    "https://docs.google.com/document/d/120zTmsD7gTho0txlSO7M33r8xA6yvlTx-EA7LkQah04/edit",
    8,
    "Nоѕ аnоѕ 70, nа Іtálіа, ѕоb іnfluênсіа dа аrtе соnсеіtuаl е tаmbém соmо rеаçãо ао mіnіmаlіѕmо, ѕurgе а аrtе роvеrа . О mаtеrіаl dаѕ оbrаѕ é іnútіl е рrесárіо, соmо mеtаl еnfеrruјаdо, аrеіа, dеtrіtоѕ е реdrаѕ. О ѕіgnіfісаdо еm Роrtuguêѕ dе Аrtе Роvеrа é:",
    "Nоѕ аnоѕ 70, nа Іtálіа, ѕоb іnfluênсіа dа аrtе соnсеіtuаl е tаmbém соmо rеаçãо ао mіnіmаlіѕtа, ѕurgе а аrtе роvеrа (аrtе роbrе). О mаtеrіаl dаѕ оbrаѕ é іnútіl е рrесárіо, соmо mеtаl еnfеrruјаdо, аrеіа, dеtrіtоѕ е реdrаѕ. Nа соmbіnаçãо dоѕ еlеmеntоѕ, а аrtе роvеrа рõе еm quеѕtãо аѕ рrорrіеdаdеѕ іntrínѕесаѕ dоѕ mаtеrіаіѕ (quе роdеm mudаr dе саrасtеríѕtісаѕ соm о tеmро, оu tеr quаlіdаdе еѕtétіса іnеѕреrаdа) е о vаlоr dе uѕо nа есоnоmіа саріtаlіѕtа соntеmроrânеа. Gіоvаnnі Аnѕеlmо é о рrіnсіраl рrаtісаntе dа аrtе роvеrа."
  ),
  (
    10,
    3,
    "https://docs.google.com/document/d/120zTmsD7gTho0txlSO7M33r8xA6yvlTx-EA7LkQah04/edit",
    9,
    "É umа аrtе quе utіlіzа-ѕе dе соrеѕ lumіnоѕаѕ е реquеnаѕ fіgurаѕ іnсіdеntаіѕ, раrа ріntаr dе mаnеіrа іrônіса е bоnіtа о саоѕ urbаnо аtuаl.",
    "Nо fіnаl dа déсаdа dе 60, іnѕріrаdоѕ реlа ріnturа dе Еdwаrd Норреr, аrtіѕtаѕ nоrtе-аmеrісаnоѕ соmо Сhuсk Сlоѕе, Rісhаrd Еѕtеѕ е Маlсоlm Моrlеу рrосlаmаm о rеtоrnо ао fіgurаtіvіѕmо. Аіndа quе сеntrаdо nа téсnіса сláѕѕіса dе реrѕресtіvа е dеѕеnhо е nа рrеосuраçãо mіnuсіоѕа соm dеtаlhеѕ, соrеѕ, fоrmаѕ е tехturа, nãо роѕtulа а аrtе соmо сóріа fоtоgráfіса dа rеаlіdаdе. Utіlіzа-ѕе dе соrеѕ lumіnоѕаѕ е реquеnаѕ fіgurаѕ іnсіdеntаіѕ, раrа ріntаr dе mаnеіrа іrônіса е bоnіtа о саоѕ urbаnо аtuаl."
  );

insert into
  `questoes4respostas`(id, pergunta1, pergunta2, pergunta3, pergunta4)
values
  (
    1,
    "а аrtе produzida nos tempos modernos e que refere - se às atividades artísticas medievais.",
    "a arte produzida no tempo presente e refere - se à arte feita e produzida por artistas que vivem hoje.",
    "a arte produzida no período medieval e refere - se às atividades artísticas controladas pela igreja católica.",
    "a arte produzida antes das revoluções e guerras mundiais e refere - se às artes que sumiram com a destruição das batalhas."
  ),
  (
    3,
    "nа ѕеgundа mеtаdе dо ѕéсulо ХХ е ѕе рrоlоngа аté аоѕ dіаѕ dе hоје.",
    "nа рrіmеіrа mеtаdе dо ѕéсulо ХХ е durоu 100 аnоѕ.",
    "nо ѕéсulо ХІХ арóѕ аѕ rеvоluçãо іnduѕtrіаl е ѕе lіmіtоu ареnаѕ ао реríоdо.",
    "Nо ѕéсulо ХVІІІ соm о аdvеntо dа urbаnіzаçãо dаѕ mеtróроlеѕ е реrdurоu аté о ѕéсulо ХІХ."
  ),
  (
    4,
    "Pop Art",
    "Minimalismo",
    "Arte Provera",
    "Arte Conceptual"
  ),
  (
    5,
    "Јоѕерh Коѕѕuth",
    "Ріеrо Маnzоnі",
    "Маrсеl Duсhаmр",
    "Dоnаld Јudd"
  ),
  (
    6,
    "Іnѕtаlаçãо.",
    "Реrfоrmаnсе.",
    "Рrораgаndа.",
    "Аrtе іntеrаtіvа."
  ),
  (
    7,
    "1950.",
    "1960.",
    "1970.",
    "1980."
  ),
  (
    8,
    "Міnіmаlіѕmо.",
    "Аrtе соnсеіtuаl.",
    "Рор Аrtе.",
    "Аrtе Роbrе."
  ),
  (
    9,
    "Аrtе Nоbrе.",
    "Аrtе Роbrе.",
    "Аrtе рróѕреrа.",
    "Аrtе nоvа."
  ),
  (
    10,
    "Аrtе соnсеіtuаl.",
    "Міnіmаlіѕmо.",
    "Ніреr Rеаlіѕmо.",
    "Рор Аrt."
  );

insert into
  `trueOrFalse` (id, pergunta1, pergunta2)
values
  (2, " V", " F");

insert into
  post(titulo, resumo, conteudo)
values
  (
    "Arte contemporânea",
    "Veja tudo que você precisa para compreender sobre o que é a arte contemporânea",
    '<h2>O que é arte contemporânea?</h2>
    <p>
      Gerhard Richter „Abstraktes Bild (946-3)“ 2016, © Gerhard Richter 2017 Não há
      um acordo entre os especialistas sobre o início do período correspondente à
      arte contemporânea. A maioria dos escritores sugere que o movimento começou
      por volta da segunda metade do século XX, após a Segunda Guerra Mundial, como
      ruptura com a arte moderna.
    </p>
    <h2>Contexto histórico da arte contemporânea</h2>
    <p>
      Depois da guerra os artistas mostraram-se voltados às verdades do inconsciente
      e interessados pela reconstrução da sociedade, mudar os costumes e a
      necessidade da produção em massa. Quando surgia um movimento na arte, este
      revelava-se por meio das variadas linguagens, através da constante
      experimentação de novas técnicas.
    </p>
    <h2>Autorretrato de Vik Muniz</h2>
    A arte contemporânea se mostrou mais evidente na década de 50, período que
    muitos estudos consideram o início do seu estado de plenitude. A efervescência
    cultural da década começou a questionar a sociedade do pós-guerra, rebelando-se
    contra o estilo de vida difundido no cinema, na moda, na televisão e na
    literatura.

    <h2>Transformações que influenciaram a arte contemporânea</h2>
    <p>
      Além disso, os avanços tecnológicos foram convulsivamente impulsionados pela
      corrida espacial e, como amostra dessa influência, as formas dos objetos
      tornaram-se, quase subitamente, aerodinâmicas e alusivas ao espaço, com forte
      recorrência ao brilho do vinil.
    </p>
    <p>
      A ciência e a tecnologia abriram caminho à percepção das pessoas, de que a
      arte feita por outros, poderia estar a traduzir as suas próprias vidas.
    </p>

    <h2>David Hockney</h2>
    <p>
      Se a velocidade das máquinas e o movimento foram dois dos pilares da arte
      moderna, a percepção do tempo, por sua vez, continua sendo fator motivante
      para as expressões artísticas contemporâneas. Tal fato pode ser percebido nas
      interações em tempo real, fruto de assombrosos avanços tecnológicos, bem como
      das reflexões cada vez mais profundas sobre a inter-relação do homem com o
      espaço quadridimensional.
    </p>

    <p>
      A consciência ecológica e o reaproveitamento de materiais são temas
      recorrentes, que se popularizaram no final do século XX. Em paralelo, a
      revolução digital e a consequente globalização, por meio da internet, formam o
      período mais recente da contemporaneidade.
    </p>
    <p>
      contemporânea Andy Warhol Andy Warhol A Definição Os balanços e estudos
      disponíveis sobre arte contemporânea tendem a fixar-se na década de 1960,
      sobretudo com o advento da arte pop e do minimalismo, um rompimento em relação
      à pauta moderna, o que é lido por alguns como o início do pós-modernismo.
      Impossível pensar a arte a partir de então em categorias como “pintura” ou
      “escultura”. Mais difícil ainda pensá-la com base no valor visual, como quer o
      crítico norte-americano Clement Greenberg.
      https://arteref.com/movimentos/o-expressionismo-e-seus-principais-artistas/ A
      cena contemporânea – que se esboça num mercado internacionalizado das novas
      mídias e tecnologias e de variados atores sociais que aliam política e
      subjetividade (negros, mulheres, homossexuais etc.) – explode os
      enquadramentos sociais e artísticos do modernismo, abrindo-se a experiências
      culturais díspares. As novas orientações artísticas, apesar de distintas,
      partilham um espírito comum: são, cada qual a seu modo, tentativas de dirigir
      a arte às coisas do mundo, à natureza, à realidade urbana e ao mundo da
      tecnologia. As obras articulam diferentes linguagens – dança, música, pintura,
      teatro, escultura, literatura etc. -, desafiando as classificações habituais,
      colocando em questão o caráter das representações artísticas e a própria
      definição de arte. Interpelam criticamente também o mercado e o sistema de
      validação da arte. As características da arte contemporânea Alguns das
      principais características da arte contemporânea são:
    </p>
    <ul>
      <li>abandono dos suportes tradicionais;</li>
      <li>liberdade e subjetividade na produção artística;</li>
      <li>influência de uma sociedade permeada pela troca de informações, pelo uso da tecnologia e pelas novas mídias;</li>
      <li>efemeridade das obras;</li>
      <li>mescla de diferentes estilos artísticos e criação de conceitos;</li>
      <li>utilização de materiais diversos na mesma obra;</li>
      <li>fusão entre as obras de arte e a vida cotidiana;</li>
      <li>forte aproximação com a cultura pop;</li>
      <li>questionamentos sobre os conceitos da própria arte;</li>
      <li>criação de obras interativas, nas quais o espectador participa ativamente.</li>
    </ul>
    '
  ),
  (
    'Arte Conceitual',
    'Entenda sobre arte conceitual',
    '<h1>Arte Conceitual</h1>
    <p>
      A<strong> Arte Conceitual</strong> é uma vanguarda artística moderna e
      contemporânea que surgiu nos anos 60 e 70 na Europa e nos Estados Unidos.
    </p>
    <p>
      Como o próprio nome indica, trata-se de uma expressão artística mais pautada
      nos conceitos, reflexões e ideias, em detrimento da própria estética
      (aparência) da arte. Nela, a<strong> atitude mental </strong>é o mais
      relevante.
    </p>
    <p>
      Em outras palavras, a arte conceitual é uma “arte-ideia” em detrimento da
      “arte-visual”, sendo o principal material da arte a "linguagem".
    </p>
    <p>
      Diante disso, os artistas conceituais preocupam-se em criar reflexões visuais
      para seus espectadores.
    </p>
    <h2>Resumo sobre Arte Conceitual</h2>
    <p>
      Esse movimento artístico que critica o formalismo e propõe a autonomia da obra
      artística, foi capaz de revolucionar muitos aspectos da arte.
    </p>
    <p>
      O termo “arte conceitual” foi utilizado pela primeira vez pelo artista,
      escritor e filósofo estadunidense Henry Flynt, em 1961, durante as práticas do
      <em>Grupo Fluxus</em>.
    </p>
    <p>
      O Grupo Fluxus foi um movimento que reuniu artistas em todo o mundo e tinha
      como base fazer oposição à comercialização da arte.
    </p>
    <p>
      Eles trouxeram novas definições à pratica artística, dissipando os limites da
      arte e mesclando diversos conceitos, com grande influência do dadaísmo
    </p>
    <p>
      Sobre a arte conceitual, afirma o escultor estadunidense Sol LeWitt
      (1928-2007):
    </p>
    <blockquote>
      <p>
        <em
          >A própria ideia, mesmo se não é tornada visual, é uma obra de arte tanto
          quanto qualquer produto.</em
        >
      </p>
    </blockquote>
    <p>
      Para muitos estudiosos, Marcel Duchamp (1887-1968) foi um dos precursores da
      arte conceitual no momento em que colocou um mictório no museu e o chamou de
      arte, com sua obra <em>Fonte</em>, de 1917.
    </p>
    <p>
      Anteriormente, o artista já havia elaborado outras obras que seguiam a mesma
      linha, como <em>Roda de Bicicleta</em>, de 1913.
    </p>
    <p>
      Ali, a ideia dos “<em>ready</em><em> mades</em>” (já feito), considerado uma
      antiarte, não era o produto artístico, mas sim o conceito de arte que o
      artista quis demostrar e que levava mais ao processo reflexivo, em detrimento
      do visual.
    </p>
    <p>
      A grande questão da arte conceitual era definir os limites e fronteiras do
      fazer artístico, ou seja, ela é baseada na indagação: O que é arte?
    </p>
    <p><br /><strong>Para entender ainda mais alguns conceitos, leia</strong>:</p>
    <ul>
      <li>O que é arte?</li>
      <li>Performance na Arte</li>
    </ul>
    <h2>Principais caraterísticas da Arte Conceitual</h2>
    <p>Podemos listar como as principais caraterísticas da arte conceitual:</p>
    <ul>
      <li>Crítica ao formalismo e ao mercado da arte;</li>
      <li>Crítica ao materialismo e ao consumo;</li>
      <li>Oposição ao hermetismo da arte minimalista;</li>
      <li>Popularização da arte como veículo de comunicação;</li>
      <li>Arte mental e reflexiva;</li>
      <li>Radicalismo e culto à antiarte;</li>
      <li>Ruptura com a arte clássica e formal;</li>
      <li>
        Uso de fotografias, textos, vídeos, instalações, performances (teatro,
        dança).
      </li>
    </ul>
    <p>
      <strong
        >Para conhecer um tipo de arte mais espontânea e informal do ponto de vista
        acadêmico, leia Arte Naif.</strong
      >
    </p>
    <h2>A Arte Conceitual no Brasil</h2>
    <p>
      Essa proposta de arte mais reflexiva atingiu o país a partir de 1970. No
      Brasil, alguns artistas conceituais que merecem destaque foram:
    </p>
    <ul>
      <li>Cildo Meireles (1948): artista plástico</li>
      <li>Artur Barrio (1945): artista plástico luso-brasileiro</li>
      <li>Carlos Fajardo (1941): artista multimídia</li>
      <li>José de Moura Resende Filho (1945): escultor e arquiteto</li>
      <li>Mira Schendel (1919-1988): artista suíça radicada no Brasil</li>
      <li>
        Antônio José de Barros de Carvalho e Mello Mourão “Tunga” (1952-2016): ator
        performance, escultor e desenhista
      </li>
      <li>Waltércio Caldas (1946): artista gráfico, escultor e desenhista</li>
    </ul>
    <h2>Principais Artistas</h2>
    <p>No mundo, os principais representantes da arte conceitual foram:</p>
    <ul>
      <li>Marcel Duchamp(1887-1968)</li>
      <li>Joseph Beuys (1921-1986)</li>
      <li>Joseph Kosuth (1945)</li>
      <li>Daniel Buren (1938)</li>
      <li>John Cage (1912-1992)</li>
      <li>Nam June Paik (1932-2006)</li>
      <li>Wolf Vostell (1932-1998)</li>
      <li>Yoko Ono (1933)</li>
      <li>Lawrence Weiner (1942)</li>
      <li>Robert Barry (1936)</li>
      <li>Keith Arnatt (1930-2008)</li>
      <li>Robert Rauschenberg (1925-2008)</li>
      <li>Charlotte Moorman (1933-1991)</li>
      <li>Sol LeWitt (1928-2007)</li>
      <li>Genco Gulan (1969)</li>
    </ul>'
  ),
  (
    'Міnіmаlіѕtа',
    "Entenda sobre o Міnіmаlіѕtа",
    '<h1>Minimalismo</h1>

    <p>
      A expressão “<strong>Minimalismo</strong>” (do inglês, “<em>Minimal Art</em>”)
      faz referência aos movimentos estéticos, científicos e culturais que surgiram
      em Nova York, entre o fim dos anos de 1950 e início da década de 1960.
    </p>
    <p>
      Esses movimentos primavam pelo mínimo de recursos e elementos utilitários,
      reduzindo todos seus aspectos ao nível essencial.
    </p>
    <p>
      Já em 1966, o filósofo e critico de artes Richard Arthur Wollheim (1923- 2003)
      já apontava o minimalismo daquela década como uma das correntes que mais
      influenciariam o campo das artes visuais, arquitetura, design, música,
      programação visual, desenho industrial, durante o século XX.
    </p>
    <h2>Principais características do Minimalismo</h2>
    <p>
      Em termos gerais, os movimentos minimalistas se caracterizam pela austeridade
      e <strong>síntese</strong>, inclusive dos meios e usos da abstração.
    </p>
    <p>
      Enquanto aspecto filosófico, o minimalismo irá adequar às necessidades da vida
      aquilo que é realmente <strong>essencial</strong>, descartando as futilidades
      no caminho da realização pessoal.
    </p>
    <p>
      No campo das artes, normalmente está representado de forma abstrata e “crua”,
      de modo a revelar a origem industrial e a natureza dos materiais que compõem a
      obra minimalista, a qual, via de regra, interage com o público.
    </p>
    <h2>Minimalismo nas Artes Plásticas</h2>
    <p>
      Nas artes plásticas, o minimalismo surgiu em Nova York, ainda na década de
      1950, quando um grupo de artistas passou a lançar mão de poucos elementos para
      fundamentar suas obras, abusando de atributos visuais criados a partir de um
      pequeno número de cores.
    </p>
    <p>
      Eles privilegiaram as formas geométricas simples, puras, simétricas e
      repetitivas, reduzindo os objetos aos seus aspectos de reprodução em série
      para que eles sejam mais bem percebidos em seu próprio contexto.
    </p>
    <p>
      Já do ponto de vista do conteúdo das representações, é comum a
      <strong>ausência de emotividade</strong>.
    </p>
    <p>
      Assim, as estruturas minimalistas suportam uma
      <strong>bi ou tridimensionalidade</strong> que lhe permite vencer os conceitos
      tradicionais, principalmente acerca da necessidade do suporte que limitava
      pintura e a escultura aos seus respectivos campos de ação.
    </p>
    <p>
      Este <strong>caráter geométrico</strong> é fruto da influência construtivista,
      a qual buscava uma linguagem universal para expressão artística.
    </p>
    <p>
      Neste campo, os principais destaques são: Sol LeWitt (1928-2007), Frank Stella
      (1936), Donald Judd (1928-1994) e Robert Smithson (1928-1994).
    </p>
    <h2>Minimalismo no Design</h2>
    <p>
      Muitas vezes oposto ao design funcionalista, o
      <strong>design minimalista</strong> é caracterizado pelo despojamento formal
      típico da década de 1980. Tem-se aqui a redução formal e uso de cores neutras
      como uma forma de se opor aos movimentos pós-modernos no design.
    </p>
    <p>
      Destacaram-se aqui: Philippe Starck (1949), Shiro Kuramata (1934-1991) e John
      Pawson (1949).
    </p>
    <h2>Minimalismo na Música</h2>
    <p>
      Na <strong>Música</strong>, o minimalismo se destacou pela composição com
      poucas notas musicais.
    </p>
    <p>
      Os artistas utilizam o mínimo de variações sonoras para criar um ritmo
      pulsante e hipnótico, a partir da repetição harmônica de pequenos trechos,
      como na música eletrônica e psicodélica.
    </p>
    <p>
      Destacam-se na produção musical minimalista: Philip Glass (1937), Steve Reich
      (1936) e Arvo Part (1935).
    </p>
    <p>
      <strong
        >Para saber mais sobre o contexto em que se deu esse movimento, leia</strong
      >:
    </p>
    <ul>
      <li>Anos 50</li>
      <li>Anos 60</li>
    </ul>
    <h2>Minimalismo na Literatura</h2>
    <p>
      No campo literário, o minimalismo se caracterizou pela produção de
      <strong>minicontos</strong> (microcontos).
    </p>
    <p>
      O foco estava na economia de palavras, evitando assim, os advérbios. Os
      cenários eram pouco explícitos em que faziam parte personagens banais.
    </p>
    <p>
      Destacam-se aqui os nomes de Raymond Carver (1938-1988) e Ernest Hemingway
      (1899 -1961).
    </p>'
  ),
  (
    'Pop Arte',
    'Entenda sobre arte',
    '<h1>Pop Art</h1>
    <p>
      <em>Pop Art</em> é um movimento artístico que se caracteriza pela reprodução
      de temas relacionados ao consumo, publicidade e estilo de vida americano (<em
        >american way of life</em
      >).
    </p>
    <p>
      O termo em inglês significa "arte popular" e surgiu durante a década de 1950,
      na Inglaterra. A expressão foi criada pelo crítico Lawrence Alloway durante
      encontros de um grupo de artistas, o "Grupo Independente". Depois, espalhou-se
      durante os anos de 1960, atingindo seu auge em Nova York.
    </p>
    <p>
      A <em>pop art</em> não deve ser considerada um fenômeno de cultura popular
      (apesar de estar muito interligada a ela), mas uma interpretação de seus
      artistas da cultura dita popular e de massas.
    </p>
    <p>
      Este fenômeno baseou-se, em grande medida, na estética da cultura de massas, a
      mesma criticada pela Escola de Frankfurt.
    </p>
    <p>
      O movimento influenciou muito o grafismo e os desenhos relacionados à moda.
    </p>
    <h2>Características da pop art</h2>
    <ul>
      <li>Aproximação da arte com a vida cotidiana;</li>
      <li>Utilização de cores intensas e vibrantes;</li>
      <li>Reproduções de peças publicitárias;</li>
      <li>Inspiração na /">cultura de massa;</li>
      <li>Uso da serigrafia;</li>
      <li>Imitação da estética industrial;</li>
      <li>Reproduções em série do mesmo tema;</li>
      <li>Uso da imagem de celebridades;</li>
      <li>Inspiração no universo das histórias em quadrinhos.</li>
    </ul>
    <p>
      Os artistas dessa corrente trabalhavam com cores vivas, inusitadas e usadas na
      publicidade. Eles escolhiam as imagens e os símbolos populares como material
      de criação.
    </p>
    <p>
      Esses símbolos eram ironizados para fazer uma crítica ao excesso de consumo da
      sociedade capitalista. Isso porque o capitalismo é muito incentivado pela
      publicidade, cinema e etc.
    </p>
    <p>
      Entretanto, de certa forma, a pop arte se alimentava e se confundia com essa
      indústria cultural.
    </p>
    <p>
      Apesar de se diferenciarem, os artistas, de modo geral, mantinham as
      temáticas, os desenhos simplificados e as cores saturadas.
    </p>
    <p>
      A Pop Art buscava evidenciar a crise da arte do século XX através de um
      retorno à arte figurativa. Fazia um bom contraponto ao
      expressionismo abstrato e à
      complexidade da arte moderna.
    </p>
    <p>
      Ela recusa a separação entre arte e vida. Por isso a arte pop é capaz de se
      ligar ao seu público a partir de signos e símbolos tirados da cultura de massa
      e da vida cotidiana.
    </p>
    <p>
      Isso ocorreu quando os artistas utilizaram na arte a linguagem do design
      comercial. Com isso, diminuíram as diferenças que separavam arte erudita da
      arte popular.
    </p>

    <h2>Obras de Andy Warhol</h2>
    <p>
      Andy Warhol tornou-se o representante mais conhecido da <em>Pop Art</em> no
      Mundo.
    </p>
    <p>
      Ficou famoso por retratar ídolos da música popular e do cinema, evidenciando o
      quanto estas figuras são impessoais e vazias. São exemplos Marilyn Monroe,
      Michael Jackson e Elvis Presley.
    </p>
    <h3>1. <em>Marilyn Monroe </em>(1962)</h3>
    <p>
      A primeira representação de <em>Marilyn</em> foi feita logo após o falecimento
      da diva, em 1962. Depois foi reproduzida novamente em outras cores e formatos.
    </p>
    <h3>2. <em>Triple Elvis</em> (1963)</h3>
    <h3>3. <em>Coca cola</em> (1963)</h3>
    <p>
      Warhol também representou a impessoalidade do objeto ao reproduzir as garrafas
      de Coca-Cola e as latas de sopa Campbell.
    </p>
    <h3>4. <em>Sopa Campbell</em> (1962)</h3>
    <p>Leia também sobre Arte Conceitual.</p>
    <h2>Outros artistas da Pop Art</h2>
    <p>
      O <em>Independent Group</em> (IG), estabelecido em Londres em 1952, é
      considerado o precursor do movimento de Pop Art. Fizeram parte:
    </p>
    <ul>
      <li>Eduardo Luigi Paolozzi (1924-2005)</li>
      <li>Richard Hamilton (1922-2011)</li>
      <li>Peter Blake (1932)</li>
    </ul>
    <p>
      Já nos Estados Unidos, os artistas produziram de modo isolado até 1963. A
      partir daí, suas obras passaram a ser reunidas e expostas em galerias de arte.
      Os seus principais artistas são:
    </p>
    <ul>
      <li>Andy Warhol (1928-1987)</li>
      <li>Roy Lichtenstein (1923-1997)</li>
      <li>Claes Oldenburg (1929)</li>
      <li>James Rosenquist (1933-2017)</li>
      <li>Tom Wesselmann (1931-2004)</li>
      <li>Wayne Thiebaud (1920)</li>
      <li>Jasper Johns (1930)</li>
    </ul>
    <h2>Pop Art no Brasil</h2>
    <p>
      No Brasil, a Pop Art surgiu em outro contexto histórico. Aqui, estava em curso
      a ditadura militar e os artistas utilizaram a estética pop para se comunicar
      com as massas e, assim fazer críticas ao sistema.
    </p>
    <p>Os principais nomes da pop art brasileira são:</p>
    <ul>
      <li>Antonio Dias (1944)</li>
      <li>Rubens Gerchman (1942-2008)</li>
      <li>Claudio Tozzi (1944)</li>
    </ul>
    <p>
      O artista contemporâneo Romero Britto utiliza
      hoje em dia a estética da pop art para produzir suas obras. Entretanto, ele
      não possui caráter crítico.
    </p>'
  ),
  (
    'Arte probre',
    'Entenda sobre a arte pobre',
    '<h1>Arte Povera</h1>
    <p>
      A <strong>Arte Povera</strong> (em inglês, “<em>poor</em><em> art</em>”) foi
      um movimento artístico de vanguarda surgido na Itália na década de 60 e que
      significa literalmente “arte pobre”.
    </p>
    <p>
      O termo “arte povera” foi cunhado pelo crítico e historiador da arte italiano
      Germano Celant, em 1967, no catálogo da exposição “<em>Arte povera – </em
      ><em>Im Spazio</em>”, ocorrida em Veneza.
    </p>
    <p>
      O movimento povera se destacou na pintura, escultura, instalação e
      performance. Sua ideia era, de fato, propor uma nova reflexão estética sobre o
      produto artístico ao “empobrecer a arte” e trazer à tona sua efemeridade
      através da utilização de materiais simples e naturais.
    </p>
    <p>
      As cidades italianas que desenvolveram mais trabalhos dessa vertente foram:
      Turim, Milão, Roma, Gênova, Veneza, Nápoles e Bolonha. De qualquer forma, o
      efêmero movimento se espalhou por todo continente europeu, terminando na
      década de 70.
    </p>
    <p>
      Ao lado do Futurismo, a Arte Povera foi uma das mais importantes correntes
      artísticas italianas do século XX.
    </p>
    <h2>Principais características da Arte Povera</h2>
    <ul>
      <li>Crítica à sociedade de consumo, capitalismo e processos industriais;</li>
      <li>Crítica à comercialização do objeto artístico;</li>
      <li>
        Oposição ao modernismo, pop art, racionalismo científico e minimalismo;
      </li>
      <li>
        Arte antiformalista que se aproxima de algumas vanguardas europeias, tais
        quais o surrealismo e dadaísmo;
      </li>
      <li>
        Utilização de materiais simples e naturais (sucatas, papel, vegetal, terra,
        metal, comida, sementes, areia, pedra, tecido, etc.);
      </li>
      <li>Criatividade e espontaneidade;</li>
      <li>Efemeridade e materialidade da arte;</li>
      <li>Valores pobres e marginais;</li>
      <li>Contraste do “novo” e do “velho”;</li>
      <li>Temáticas da natureza e do cotidiano.</li>
    </ul>
    <h2><strong>Principais artistas e obras da Arte Povera</strong></h2>
    <p>Os principais representantes da Arte Povera foram:</p>
    <ul>
      <li>
        <strong>Giovanni Anselmo</strong> (1934): escultor italiano e um dos
        principais representantes do movimento na Itália, sendo autor de obras como:
        <em>Specchio </em>(1968), <em>Torsione </em>(1968) e
        <em>Infinito </em>(1971).
      </li>
      <li>
        <strong>Mario Merz </strong>(1925-2003): artista italiano muito famoso pelos
        seus “iglus”, com destaque para a escultura <em>Iglu de </em
        ><em>Giap</em> (1968) e o <em>Iglu de Pedra </em>(1982).
      </li>
      <li>
        <strong>Marisa Merz</strong> (1926-2019): escultora italiana e mulher do
        artista Mario Merz, também foi destaque com obras da arte povera:
        <em>Escultura Viva</em> (1966), <em>Sem Título</em> (1966) e
        <em>Fontana </em>(2007).
      </li>
      <li>
        <strong>Michelangelo Pistoletto</strong> (1933): pintor e escultor italiano,
        considerado um dos protagonistas do movimento de arte povera com destaque
        para obras de escultura, pintura, instalação e performance:
        <em>Vênus dos trapos</em> (1967), <em>Orquestra de trapos</em> (1968),
        <em>Pequeno Monumento</em> (1968).
      </li>
      <li>
        <strong>Jannis Kounellis</strong> (1936): pintor grego, famoso por suas
        instalações com elementos vivos (vegetais ou animais) da qual se destaca a
        <em>Margarida com fogo</em>, produzida em 1967; e a instalação realizada em
        1969, com doze cavalos que circulavam livremente na sala de exposições da
        galeria Attico em Roma.
      </li>
    </ul>
    <p>
      Além deles, outros artistas italianos figuraram no contexto da arte povera, a
      saber:
    </p>
    <ul>
      <li>Pino Pascalli (1935-1968)</li>
      <li>Alighiero Boetti (1940-1994)</li>
      <li>Luciano Fabro (1936-2007)</li>
      <li>Giulio Paolini (1940)</li>
      <li>Piero Gilardi (1942)</li>
      <li>Emilio Prini (1943-2016)</li>
      <li>Gilberto Zorio (1944)</li>
      <li>Gianni Piacentino (1945)</li>
      <li>Giuseppe Penone (1947)</li>
    </ul>'
  ),
  (
    'Ніреr Rеаlіѕmо',
    'Entenda sobre o hiper realismo',
    '<h1>Fotorrealismo</h1>

    <p>
      O <strong>Fotorrealismo </strong>ou <strong>Realismo Fotográfico </strong>é
      uma escola artística contemporânea surgida no final da década de 60, nos
      Estados Unidos que trabalha por meio do conceito de verossimilhança associado
      à arte fotográfica.
    </p>
    <p>
      O termo “fotorrealismo” foi cunhado em 1969, pelo estudioso das artes Louis K.
      Meisel.
    </p>
    <p>
      Segundo a definição de Meisel sobre o movimento fotorrealista: “<em
        >o fotorrealismo usa a câmera e a fotografia para coletar informação; (...)
        usa recursos mecânicos ou semi-mecânicos para transferir a informação para a
        tela</em
      >”.
    </p>
    <p>
      Além disso, ele aponta para algumas características dos artistas
      fotorrealistas:
    </p>
    <blockquote>
      <p>
        “<em
          >O fotorrealista deve ter uma habilidade suficiente para fazer com que a
          pintura se pareça com uma fotografia; O fotorrealista deve ter exibido
          obras neste estilo antes de 1972 para poder ser classificado como um dos
          fundadores da escola; O fotorrealista deve ter trabalhado há pelo menos
          cinco anos nesta técnica</em
        >.”
      </p>
    </blockquote>
    <p>
      Além de Meisel, outros artistas estão associados a fundação da escola
      fotorrealista: John Baeder, Ralph Goings, Chuck Close, Duane Hanson, dentre
      outros.
    </p>
    <p>
      De tal modo, a arte fotorrealista, que inclui pinturas, desenhos, esculturas e
      artes gráficas, propõem a fidelidade às reproduções da realidade, de forma que
      muitas delas, quando vistas, podem ser confundidas com a arte fotográfica,
      gerando confusão.
    </p>
    <p>
      Atualmente, o termo é utilizado no campo da computação gráfica, sobretudo dos
      videogames.
    </p>
    <h2>Hiper-Realismo</h2>
    <p>
      Já o Hiper-realismo ou Super-realismo, muitas vezes utilizado como sinônimo,
      designa uma corrente artística derivada da escola fotorrealista, ou seja, é
      uma evolução do fotorrealismo propulsionada sobretudo, pela evolução
      tecnológica.
    </p>
    <p>
      Esse movimento artístico surgiu na década de 70 nos Estados Unidos e se
      espalhou pelo mundo. Observe que muitos artistas do fotorrealismo também se
      incluem no estilo do hiper-realismo, uma vez que ambos movimentos utilizam
      técnicas que se assemelham.
    </p>
    <p>
      O termo “hiper-realismo”, foi utilizado pela primeira vez, como título de uma
      exposição fotorrealista realizada em 1973, pela artista belga Isy Brachot.
      Alguns artistas hiper-realistas que se destacam na atualidade são: os
      escultores australianos Ron Mueck e Sam Jinks; o escultor angolano Jorge
      Melício.
    </p>
    <h2>Características do Fotorrealismo</h2>
    <p>Segue abaixo as principais características desse movimento:</p>
    <ul>
      <li>Reprodução e simulação da realidade (retomada do realismo)</li>
      <li>Influência da Pop Art e da arte fotográfica</li>
      <li>Oposição ao minimalismo, expressionismo abstrato e abstracionismo</li>
      <li>Temas cotidianos</li>
      <li>Retratos, paisagens, natureza-morta</li>
      <li>Exatidão de detalhes</li>
      <li>Nuances de luz, cor, sombras e reflexos</li>
    </ul>
    <h2>Fotorrealismo no Brasil</h2>
    <p>
      No Brasil, alguns artistas se aproximaram da escola fotorrealista: Glauco
      Rodrigues (1929-2004), Antônio Henrique Amaral (1935), Gregório Gruber (1951),
      dentre outros.
    </p>
    <h2>Principais Artistas</h2>
    <p>Dentre os principais artistas da corrente fotorrealista:</p>
    <ul>
      <li>Richard Estes: pintor estadunidense</li>
      <li>Ralph Goings: pintor estadunidense</li>
      <li>John Baeder: pintor estadunidense</li>
      <li>Robert Bechtle: pintor estadunidense</li>
      <li>Charles Bell: pintor estadunidense</li>
      <li>Roberto Bernardi: pintor italiano</li>
      <li>Tom Blackwell: pintor estadunidense</li>
      <li>Hilo Chen: pintor taiwanês</li>
      <li>Chuck Close: pintor e fotógrafo estadunidense</li>
      <li>Robert Cottingham: pintor estadunidense</li>
      <li>Don Eddy: pintor estadunidense</li>
      <li>Ron Kleemann: pintor estadunidense</li>
      <li>Richard McLean: pintor estadunidense</li>
      <li>John Salt: pintor inglês</li>
      <li>Raphaella Spence: pintora inglesa</li>
    </ul>'
  );