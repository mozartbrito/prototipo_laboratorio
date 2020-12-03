-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: laborus
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria` (
  `id` int NOT NULL AUTO_INCREMENT,
  `categoria` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `tipo` varchar(45) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Produtos',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'Coleta','Produtos'),(5,'Exames','Serviços'),(11,'Outra','Produtos'),(12,'Eletronicos','Equipamentos'),(13,'Limpeza','Serviços'),(14,'Insumos','Produtos'),(16,'Proteção','Equipamentos'),(17,'Nova categoria Editada','Serviços');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(75) COLLATE utf8_unicode_ci NOT NULL,
  `cpf` varchar(14) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `telefone` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `convenio` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `num_convenio` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cep` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logradouro` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `numero` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `complemento` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bairro` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cidade` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estado` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `usuario_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_clientes_colaboradores1_idx` (`usuario_id`),
  CONSTRAINT `fk_clientes_colaboradores1` FOREIGN KEY (`usuario_id`) REFERENCES `colaboradores` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (6,'Mozart Selecione Brito','029.236.561-64','mozartcomart@gmail.com','(99) 99999-9999','asdf','23','72445-010','Quadra 1','555','','Setor Industrial (Gama)','Brasília','DF',1),(7,'fulano da Silva','029.236.561-64','fulano@email.com','(55) 55555-5555','asdfa','444','72545-508','QR 315 Conjunto H','55','','Santa Maria','Brasília','DF',1);
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colaboradores`
--

DROP TABLE IF EXISTS `colaboradores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `colaboradores` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(75) COLLATE utf8_unicode_ci NOT NULL,
  `cpf` varchar(14) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `telefone` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cep` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logradouro` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `numero` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `complemento` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bairro` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cidade` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estado` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `senha` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tentativas` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colaboradores`
--

LOCK TABLES `colaboradores` WRITE;
/*!40000 ALTER TABLE `colaboradores` DISABLE KEYS */;
INSERT INTO `colaboradores` VALUES (1,'Nome melhor','014.465.181-59','fula@emai.com','64654','','65asdf','55','asdf','sadf','asdf','','$2y$10$NlPIAn2B.ccUc6WWigGFy.OY5PQ7WYIGU.0VBMNBiA6KxkZGr1gJS',0),(3,'Luciano','926.179.260-01','luciano@email.com','64654654','','qqq','55','asdf','aa','asd','DF','$2y$10$ZvM73Sej0UNXilpOw/5/q.Sulv4vc4q/jVQCNcxERcUa.XmD9MdQy',0),(4,'Teste Tutor','926.179.260-01','mozartcomart@gmail.com','61991254154','','asdf','33','sadfa','Teste','Brasília','DF','$2y$10$W/odmQw0WYg36cKDvXKTWudXKW9wexnbz0pVtx/KgPcw7y3bxvQoe',0),(8,'Mozart Selecione Brito','029.236.561-64','mozartcomart@gmail.com','(98) 99999-9999','72445-010','Quadra 1','333','','Setor Industrial (Gama)','Brasília','DF','$2y$10$wHl9tCaOxkOgX5oOFiOrNOFiJ3vqSNm93eokjBrdywEoWSWHQjdOS',0);
/*!40000 ALTER TABLE `colaboradores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fornecedores`
--

DROP TABLE IF EXISTS `fornecedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fornecedores` (
  `id` int NOT NULL AUTO_INCREMENT,
  `razao_social` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `fantasia` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `cnpj` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `telefone` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `nome_contato` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cep` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logradouro` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `numero` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `complemento` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bairro` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cidade` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `estado` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `usuario_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_fornecedores_colaboradores1_idx` (`usuario_id`),
  CONSTRAINT `fk_fornecedores_colaboradores1` FOREIGN KEY (`usuario_id`) REFERENCES `colaboradores` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fornecedores`
--

LOCK TABLES `fornecedores` WRITE;
/*!40000 ALTER TABLE `fornecedores` DISABLE KEYS */;
INSERT INTO `fornecedores` VALUES (3,'Teste R','Teste1','65.465.465/4654-65','f@mail.com','(61) 61616-1616','Mozart','71919-360','Rua 37','234','asdf','Norte (Águas Claras)','Brasília','DF',1),(4,'asdf','asdfa','64.654.654/6546-54','tutor@email.com','(61) 99125-4154','Teste Tutor','72545-508','QR 315 Conjunto H','','','Santa Maria','Brasília','DF',1),(7,'TESTE 2','TESTE','17.505.793/0001-01','teste9@email.com','(99) 99999-9999','Teste de Teste Contato','71919-360','Rua 37','345345','tewst','Norte (Águas Claras)','Brasília','DF',1);
/*!40000 ALTER TABLE `fornecedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produtos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `codigo` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `nome` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `categoria_id` int NOT NULL,
  `estoque` int DEFAULT NULL,
  `data_compra` datetime DEFAULT NULL,
  `usuario_id` int NOT NULL,
  `preco` decimal(8,2) DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `fk_produtos_categoria_idx` (`categoria_id`),
  KEY `fk_produtos_colaboradores1_idx` (`usuario_id`),
  CONSTRAINT `fk_produtos_categoria` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`id`),
  CONSTRAINT `fk_produtos_colaboradores1` FOREIGN KEY (`usuario_id`) REFERENCES `colaboradores` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos`
--

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` VALUES (2,'Eqip222','Produto1',14,2,'2020-10-30 00:00:00',1,4154.00),(7,'EQ8889','Colete Chumbo',16,NULL,'2020-10-29 01:10:55',1,888.00),(8,'EQ785','Notebook i7',12,NULL,'2020-10-29 01:10:54',1,2544.00),(9,'PROD225','Detergente',11,5,'2020-10-30 00:00:00',1,2.00),(10,'ffffffffff','asdfasdfasdfa',12,NULL,'2020-11-12 01:11:56',1,12.00),(11,'werqwer','asdfasdf',12,NULL,'2020-11-12 01:11:56',1,12.00),(13,'PROD555','Produto teste',1,2,'2020-11-12 19:11:58',3,5.49),(14,'PROD66565','Produto Novo',11,13,'2020-11-12 20:11:06',3,89.90),(15,'ALT','Algum outro Produto',11,23,'2020-11-12 20:11:11',3,59.99);
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtos_fornecedores`
--

DROP TABLE IF EXISTS `produtos_fornecedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produtos_fornecedores` (
  `id` int NOT NULL AUTO_INCREMENT,
  `produtos_id` int NOT NULL,
  `fornecedores_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_produtos_has_fornecedores_fornecedores1_idx` (`fornecedores_id`),
  KEY `fk_produtos_has_fornecedores_produtos1_idx` (`produtos_id`),
  CONSTRAINT `fk_produtos_has_fornecedores_fornecedores1` FOREIGN KEY (`fornecedores_id`) REFERENCES `fornecedores` (`id`),
  CONSTRAINT `fk_produtos_has_fornecedores_produtos1` FOREIGN KEY (`produtos_id`) REFERENCES `produtos` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos_fornecedores`
--

LOCK TABLES `produtos_fornecedores` WRITE;
/*!40000 ALTER TABLE `produtos_fornecedores` DISABLE KEYS */;
/*!40000 ALTER TABLE `produtos_fornecedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicos`
--

DROP TABLE IF EXISTS `servicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `codigo` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `nome` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `descricao` text COLLATE utf8_unicode_ci,
  `categoria_id` int NOT NULL,
  `usuario_id` int NOT NULL,
  `preco` decimal(8,2) DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `fk_servicos_categoria1_idx` (`categoria_id`),
  KEY `fk_servicos_colaboradores1_idx` (`usuario_id`),
  CONSTRAINT `fk_servicos_categoria1` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`id`),
  CONSTRAINT `fk_servicos_colaboradores1` FOREIGN KEY (`usuario_id`) REFERENCES `colaboradores` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicos`
--

LOCK TABLES `servicos` WRITE;
/*!40000 ALTER TABLE `servicos` DISABLE KEYS */;
INSERT INTO `servicos` VALUES (1,'asd','asdf','asdf',5,1,12.00),(2,'asdfadfs','Coleta','qwer',13,1,26.00),(3,'44444','Teste com categoria','Teste com categoria',13,1,654.00),(4,'4321','Servico','Servico',5,1,66.00);
/*!40000 ALTER TABLE `servicos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicos_produtos`
--

DROP TABLE IF EXISTS `servicos_produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicos_produtos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `servicos_id` int NOT NULL,
  `produtos_id` int NOT NULL,
  `qtd` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `fk_servicos_has_produtos_produtos1_idx` (`produtos_id`),
  KEY `fk_servicos_has_produtos_servicos1_idx` (`servicos_id`),
  CONSTRAINT `fk_servicos_has_produtos_produtos1` FOREIGN KEY (`produtos_id`) REFERENCES `produtos` (`id`),
  CONSTRAINT `fk_servicos_has_produtos_servicos1` FOREIGN KEY (`servicos_id`) REFERENCES `servicos` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicos_produtos`
--

LOCK TABLES `servicos_produtos` WRITE;
/*!40000 ALTER TABLE `servicos_produtos` DISABLE KEYS */;
/*!40000 ALTER TABLE `servicos_produtos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'laborus'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-03 18:11:15
