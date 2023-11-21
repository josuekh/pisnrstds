CREATE DATABASE  IF NOT EXISTS `biblioteca` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `biblioteca`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: biblioteca
-- ------------------------------------------------------
-- Server version	8.0.35

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `analise`
--

DROP TABLE IF EXISTS `analise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `analise` (
  `id` int NOT NULL AUTO_INCREMENT,
  `livro_id` int DEFAULT NULL,
  `titulo` varchar(255) NOT NULL,
  `resenha` text,
  `nota` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `livro_id` (`livro_id`),
  CONSTRAINT `analise_ibfk_1` FOREIGN KEY (`livro_id`) REFERENCES `livro` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `analise`
--

LOCK TABLES `analise` WRITE;
/*!40000 ALTER TABLE `analise` DISABLE KEYS */;
INSERT INTO `analise` VALUES (1,1,'Início mágico para uma saga épica','J.K. Rowling nos leva a um mundo de magia e descobertas. Uma introdução perfeita à série.',5),(2,1,'A magia de Hogwarts é real','Hogwarts se torna realidade através das palavras de Rowling. Uma leitura que encanta todas as idades.',4),(3,1,'Personagens inesquecíveis','Harry, Ron e Hermione se tornaram personagens queridos para gerações de leitores. Uma jornada que nunca esquecemos.',5),(4,2,'Distopia impactante','George Orwell cria um mundo aterrorizante de totalitarismo. Uma leitura que faz refletir sobre a sociedade.',5),(5,2,'A atualidade de 1984','Apesar de escrito há décadas, 1984 continua relevante, alertando-nos sobre questões de privacidade e manipulação.',4),(6,2,'Narrativa envolvente','A escrita de Orwell é poderosa, e sua narrativa envolvente torna impossível largar o livro.',4),(13,3,'Obra-prima da literatura fantástica','Uma obra-prima que define o gênero da literatura fantástica. Personagens cativantes, um mundo ricamente detalhado e uma trama envolvente.',5),(14,3,'Incrível!','O Senhor dos Anéis é simplesmente incrível! A narrativa é envolvente, os personagens são memoráveis e a escrita de Tolkien é impecável.',5),(15,3,'Uma jornada emocionante','A jornada de Frodo e seus amigos é emocionante e repleta de reviravoltas. Cada página é uma descoberta neste mundo fantástico.',4),(16,3,'Fantasia épica como nunca antes','Nenhuma outra obra de fantasia chega perto do épico que é O Senhor dos Anéis. Leitura obrigatória para todos os fãs do gênero.',5),(17,3,'Complexidade e profundidade','A complexidade do mundo criado por Tolkien e a profundidade dos personagens tornam esta trilogia uma leitura rica e recompensadora.',4),(18,3,'Um clássico intemporal','Mesmo décadas após sua publicação, O Senhor dos Anéis permanece como um clássico intemporal que continua a encantar leitores de todas as idades.',5),(19,4,'Mistério e ambiguidade','Dom Casmurro é uma obra-prima da literatura brasileira que explora mistério e ambiguidade. A dúvida sobre a traição de Capitu é eternamente intrigante.',5),(20,4,'Narrativa envolvente','Machado de Assis envolve o leitor com sua narrativa perspicaz e diálogos inteligentes. Uma leitura essencial.',4),(21,4,'Análise psicológica profunda','A obra oferece uma análise psicológica profunda dos personagens, tornando-se uma reflexão sobre os matizes do ciúme e da percepção humana.',5),(22,5,'Intriga política magistral','George R. R. Martin cria uma narrativa rica em intriga política, onde ninguém está a salvo. Um mundo complexo onde cada personagem importa.',5),(23,5,'Personagens memoráveis','A variedade de personagens, cada um com sua história única, contribui para a imersão total na trama. Martin não tem medo de tomar decisões ousadas.',4),(24,5,'Reviravoltas surpreendentes','A Game of Thrones é repleto de reviravoltas surpreendentes que mantêm o leitor ávido por mais. Uma obra-prima da fantasia épica.',5),(25,6,'Expansão épica da história','A Clash of Kings expande ainda mais o mundo de Westeros, aprofundando-se nas intrigas políticas e apresentando novos personagens inesquecíveis.',4),(26,6,'Batalhas épicas e estratégias','As descrições das batalhas são épicas, e as estratégias dos personagens revelam um jogo complexo de poder e sobrevivência. Martin mantém o nível de suspense elevado.',5),(27,6,'Exploração da condição humana','Martin explora a complexidade da condição humana, mostrando que mesmo os personagens mais poderosos são suscetíveis a falhas e dilemas morais.',4),(28,2,'Desinteressante','A trama é monótona e os temas abordados são deprimentes. Não consegui encontrar nenhum aspecto positivo na leitura.',2),(29,2,'Narrativa confusa','A narrativa é confusa e difícil de seguir. Os personagens são pouco cativantes e a trama é arrastada.',1),(30,2,'Filosofia maçante','A filosofia presente no livro é apresentada de maneira maçante e pouco envolvente. Não recomendaria a leitura.',5),(38,7,'Amo este livro!','Paul Atreides é meu personagem favorito da cultura pop, enigmático ele busca entender qual seu propósito durante o livro.',5),(39,8,'Incrivelmente engraçado!','É um dos livros que tive as maiores gargalhadas!',4);
/*!40000 ALTER TABLE `analise` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `livro`
--

DROP TABLE IF EXISTS `livro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `livro` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `autor` varchar(255) NOT NULL,
  `data_publicacao` date DEFAULT NULL,
  `sinopse` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `livro`
--

LOCK TABLES `livro` WRITE;
/*!40000 ALTER TABLE `livro` DISABLE KEYS */;
INSERT INTO `livro` VALUES (1,'Harry Potter e a Pedra Filosofal','J.K. Rowling','1997-06-26','Harry Potter e a Pedra Filosofal é o primeiro livro da série que narra as aventuras do jovem bruxo Harry Potter. Ao descobrir que é um bruxo, Harry é convidado a estudar na Escola de Magia e Bruxaria de Hogwarts, onde ele e seus amigos, Ron e Hermione, enfrentam desafios mágicos e descobrem segredos sobre o seu passado e o perigoso bruxo das trevas, Lord Voldemort. Uma história mágica repleta de amizade, coragem e descobertas.'),(2,'1984','George Orwell','1949-06-08','1984 é uma obra-prima distópica escrita por George Orwell. Situado em um mundo totalitário, o livro segue a vida de Winston Smith, um homem que começa a questionar a autoridade opressiva do Partido. Com temas de vigilância, controle governamental e manipulação da verdade, 1984 é uma reflexão sombria sobre o poder e seus efeitos sobre a sociedade.'),(3,'O Senhor dos Anéis','J.R.R. Tolkien','1954-07-29','O Senhor dos Anéis é uma trilogia clássica de alta fantasia que narra a jornada épica de Frodo Baggins e sua comitiva para destruir o Um Anel e derrotar o Senhor das Trevas, Sauron, na Terra Média.'),(4,'Dom Casmurro','Machado de Assis','1899-01-01','Bentinho, ao suspeitar da traição de Capitu, narra sua história, permeada por ciúmes e dúvidas, em busca da verdade sobre a fidelidade de sua amada.'),(5,'A Game of Thrones','George R. R. Martin','1996-08-06','A Game of Thrones é o primeiro livro da série \"A Song of Ice and Fire\". No continente de Westeros, casas nobres lutam pelo Trono de Ferro, enquanto no norte, ameaças ancestrais ressurgem. Com personagens complexos e tramas políticas intrincadas, Martin cria um épico de fantasia que redefine o gênero.'),(6,'A Clash of Kings','George R. R. Martin','1998-11-16','A Clash of Kings é o segundo livro da série \"A Song of Ice and Fire\". Westeros está em guerra enquanto diversas facções disputam o controle do reino. Enquanto isso, no norte, uma ameaça sobrenatural se aproxima. Martin continua a construir seu épico de fantasia, levando os leitores a territórios inexplorados.'),(7,'Duna','Frank Herbert','1965-01-01','Duna é uma obra-prima da ficção científica que se passa no planeta deserto de Arrakis. A história gira em torno de Paul Atreides, um jovem nobre cuja família assume o controle de Arrakis, o único planeta produtor da especiaria melange, uma substância valiosa e vital para a navegação interestelar. A trama aborda temas complexos, como política, ecologia, religião e poder, enquanto Paul enfrenta desafios extraordinários em um cenário intergaláctico. O livro é conhecido por sua profundidade filosófica, intrincado enredo e personagens memoráveis.'),(8,'O Guia do Mochileiro das Galáxias','Douglas Adams','1979-10-12','O Guia do Mochileiro das Galáxias é uma comédia de ficção científica que segue as desventuras de Arthur Dent, um terráqueo que é resgatado do planeta Terra pouco antes de sua destruição para dar lugar a uma autoestrada hiperespacial. Arthur embarca em uma jornada intergaláctica com seu amigo Ford Prefect, um alienígena pesquisador para a \"Enciclopédia Galáctica\", e outros personagens excêntricos.');
/*!40000 ALTER TABLE `livro` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-20 23:44:31
