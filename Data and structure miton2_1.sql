-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mar. 30 juin 2020 à 12:11
-- Version du serveur :  10.1.38-MariaDB
-- Version de PHP :  7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `Miton2`
--

-- --------------------------------------------------------

--
-- Structure de la table `aliments`
--

CREATE TABLE `aliments` (
  `id` int(11) NOT NULL,
  `categorie_aliment_id` int(11) DEFAULT NULL,
  `nom_aliment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `aliments`
--

INSERT INTO `aliments` (`id`, `categorie_aliment_id`, `nom_aliment`) VALUES
(1, 1, 'Boeuf'),
(3, 3, 'Orange'),
(4, 4, 'Courgette'),
(5, 5, 'Beurre'),
(6, 2, 'Filet de Sandre'),
(7, 7, 'Huile d\'olive'),
(8, 7, 'Beurre Doux'),
(9, 12, 'Sel'),
(10, 12, 'Poivre'),
(11, 11, 'Champagne'),
(12, 4, 'Echalotes');

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `nom_categorie` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `nom_categorie`) VALUES
(1, 'Entrée'),
(2, 'Plat principal'),
(3, 'Dessert');

-- --------------------------------------------------------

--
-- Structure de la table `categorie_aliment`
--

CREATE TABLE `categorie_aliment` (
  `id` int(11) NOT NULL,
  `nom_categorie_aliment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categorie_aliment`
--

INSERT INTO `categorie_aliment` (`id`, `nom_categorie_aliment`) VALUES
(1, 'Viandes'),
(2, 'Poissons'),
(3, 'Fruits'),
(4, 'Légumes'),
(5, 'Produits laitiers'),
(6, 'Oeufs'),
(7, 'Matières grasses'),
(8, 'Céréales'),
(9, 'Légumes secs'),
(10, 'Sucres et produits sucrés'),
(11, 'Boissons'),
(12, 'Produits secs et épices');

-- --------------------------------------------------------

--
-- Structure de la table `commentaires`
--

CREATE TABLE `commentaires` (
  `id` int(11) NOT NULL,
  `recette_id` int(11) DEFAULT NULL,
  `notes_id` int(11) DEFAULT NULL,
  `commentaire` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pseudo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `commentaires`
--

INSERT INTO `commentaires` (`id`, `recette_id`, `notes_id`, `commentaire`, `pseudo`) VALUES
(9, 29, 5, 'Bravo super bon', 'Dada');

-- --------------------------------------------------------

--
-- Structure de la table `difficulte`
--

CREATE TABLE `difficulte` (
  `id` int(11) NOT NULL,
  `nom_difficulte` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `difficulte`
--

INSERT INTO `difficulte` (`id`, `nom_difficulte`) VALUES
(1, 'Facile'),
(2, 'Moyen'),
(3, 'Difficile');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20200624155617', '2020-06-24 17:56:29', 54),
('DoctrineMigrations\\Version20200624161213', '2020-06-24 18:12:18', 55),
('DoctrineMigrations\\Version20200624162002', '2020-06-24 18:20:09', 58),
('DoctrineMigrations\\Version20200624163048', '2020-06-24 18:31:23', 68),
('DoctrineMigrations\\Version20200624163115', '2020-06-24 18:34:34', 48),
('DoctrineMigrations\\Version20200624165432', '2020-06-24 18:54:37', 29),
('DoctrineMigrations\\Version20200624170429', '2020-06-24 19:04:35', 39),
('DoctrineMigrations\\Version20200624191816', '2020-06-24 21:18:24', 36),
('DoctrineMigrations\\Version20200624193745', '2020-06-24 21:37:54', 36),
('DoctrineMigrations\\Version20200625144003', '2020-06-25 16:40:15', 39),
('DoctrineMigrations\\Version20200625151438', '2020-06-25 17:14:44', 34);

-- --------------------------------------------------------

--
-- Structure de la table `notes`
--

CREATE TABLE `notes` (
  `id` int(11) NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `notes`
--

INSERT INTO `notes` (`id`, `note`) VALUES
(1, '1'),
(2, '2'),
(3, '3'),
(4, '4'),
(5, '5');

-- --------------------------------------------------------

--
-- Structure de la table `prix`
--

CREATE TABLE `prix` (
  `id` int(11) NOT NULL,
  `nom_prix` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `prix`
--

INSERT INTO `prix` (`id`, `nom_prix`) VALUES
(1, 'Bon marché'),
(2, 'Coût moyen'),
(3, 'Assez chère');

-- --------------------------------------------------------

--
-- Structure de la table `recettes`
--

CREATE TABLE `recettes` (
  `id` int(11) NOT NULL,
  `nom_recette` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prix_id` int(11) DEFAULT NULL,
  `difficulte_id` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre_personne` int(11) NOT NULL,
  `valide` tinyint(1) NOT NULL,
  `ingredient` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `etape` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `temps` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `recettes`
--

INSERT INTO `recettes` (`id`, `nom_recette`, `prix_id`, `difficulte_id`, `image`, `images`, `nombre_personne`, `valide`, `ingredient`, `etape`, `temps`, `editor`) VALUES
(29, 'Pavé de sandre rôti, beurre blanc champenois', 2, 2, '5cd034e5381e9f28b3899c0bfa109c7a.jpeg', 's:2:\"[]\";', 4, 0, '[{\"idCategorie\":2,\"categorie\":\"Poissons\",\"idAliment\":6,\"aliment\":\"Filet de Sandre\",\"ingredient\":\"Filet de sandre\",\"quantite\":\"140\",\"unite\":\"g\"},{\"idCategorie\":7,\"categorie\":\"Mati\\u00e8res grasses\",\"idAliment\":7,\"aliment\":\"Huile d\'olive\",\"ingredient\":\"Huile d\'olive\",\"quantite\":\"1,5\",\"unite\":\"cl\"},{\"idCategorie\":7,\"categorie\":\"Mati\\u00e8res grasses\",\"idAliment\":8,\"aliment\":\"Beurre Doux\",\"ingredient\":\"Beurre Doux\",\"quantite\":\"130\",\"unite\":\"g\"},{\"idCategorie\":12,\"categorie\":\"Produits secs et \\u00e9pices\",\"idAliment\":9,\"aliment\":\"Sel\",\"ingredient\":\"Sel\",\"quantite\":\"4\",\"unite\":\"g\"},{\"idCategorie\":12,\"categorie\":\"Produits secs et \\u00e9pices\",\"idAliment\":10,\"aliment\":\"Poivre\",\"ingredient\":\"Poivre\",\"quantite\":\"1\",\"unite\":\"g\"},{\"idCategorie\":11,\"categorie\":\"Boissons\",\"idAliment\":11,\"aliment\":\"Champagne\",\"ingredient\":\"Champagne\",\"quantite\":\"10\",\"unite\":\"cl\"},{\"idCategorie\":4,\"categorie\":\"L\\u00e9gumes\",\"idAliment\":12,\"aliment\":\"Echalotes\",\"ingredient\":\"Echalotes\",\"quantite\":\"1\",\"unite\":\"Pi\\u00e8ce\"}]', '[{\"etape\":\"Peler et ciseler l\'\\u00e9chalote, puis la faire suer dans une casserole avec un petit morceau de beurre et une pinc\\u00e9e de sel.\"},{\"etape\":\"Ajouter le champagne et laisser r\\u00e9duire \\u00e0 feu doux. Une fois que la r\\u00e9duction atteint la valeur d\'une cuill\\u00e8re \\u00e0 soupe, ajouter progressivement le beurre froid (120 g) coup\\u00e9 en parcelles en remuant au fouet sans discontinuer.\"},{\"etape\":\"Saler et poivrer la sauce, puis la r\\u00e9server au chaud (elle ne doit plus bouillir).\"},{\"etape\":\"A l\'aide d\'une pince, enlever les ar\\u00eates des pav\\u00e9s de sandre.\"},{\"etape\":\"Faire chauffer un filet d\'huile d\'olive dans une po\\u00eale antiadh\\u00e9sive, puis d\\u00e9poser les pav\\u00e9s assaisonn\\u00e9s, c\\u00f4t\\u00e9 peau en premier, et les laisser dorer pendant 3 min environ.\"},{\"etape\":\"Les retourner et les cuire \\u00e0 feu doux durant 4 min environ, puis ajouter le beurre et en arroser les pav\\u00e9s afin de finaliser la cuisson.\"},{\"etape\":\"Sur une assiette plate, dresser les champignons en couronne et les arroser de beurre blanc, puis les parsemer de ciboulette et d\\u00e9poser le sandre au centre.\"}]', '{\"heure\":\"0\",\"minute\":\"30\"}', 'Dada');

-- --------------------------------------------------------

--
-- Structure de la table `recettes_categories`
--

CREATE TABLE `recettes_categories` (
  `recettes_id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `recettes_categories`
--

INSERT INTO `recettes_categories` (`recettes_id`, `categories_id`) VALUES
(29, 1),
(29, 2);

-- --------------------------------------------------------

--
-- Structure de la table `unite`
--

CREATE TABLE `unite` (
  `id` int(11) NOT NULL,
  `nom_unite` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `unite`
--

INSERT INTO `unite` (`id`, `nom_unite`) VALUES
(1, 'Kg'),
(2, 'g'),
(3, 'L'),
(4, 'cl'),
(5, 'ml'),
(6, 'cuillère à soupe'),
(7, 'cuillère à café'),
(8, 'Pièce'),
(9, 'Pièces'),
(10, 'Pot yaourt');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_verified` tinyint(1) NOT NULL,
  `pseudo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `is_verified`, `pseudo`) VALUES
(2, 'chauvet.david57@gmail.com', '[]', '$argon2id$v=19$m=65536,t=4,p=1$bUw2Mm1rYmQyYkZ3c244dw$e2hIANn1H9Bc6GqkYsVWb1Jecxjpkyc2CjR0v5RuhUc', 1, 'david'),
(3, 'canima57100@gmail.com', '[]', '$argon2id$v=19$m=65536,t=4,p=1$UUlCSlVPSG1GL1U5bVRNTQ$ms+y4P3s8gQpb67WDW+EROBnWrzcP0C7M4nHBJxrgiU', 1, 'david57'),
(4, 'c.doudou57@gmail.com', '[\"ROLE_EDIT\"]', '$argon2id$v=19$m=65536,t=4,p=1$SVlNUXhiTktLdDFUZEYwdQ$G53uss9SwP0XPQPK738tQ456cgIgazvJ+1JzJoWSSAM', 1, 'Dada'),
(5, 'c.doudou7@gailcom', '[]', '$argon2id$v=19$m=65536,t=4,p=1$SDJLMzhLb3VkaGlHdXk1UA$+CIpg2SCJCwT02KsxjFGU9WJ7+AlLKDgXCKapR62JLY', 0, '52'),
(6, 'watier.elodie57@gmail.com', '[]', '$argon2id$v=19$m=65536,t=4,p=1$LmVDZHQwYUp1ZjVRRWgyQQ$LnWLczM+nTs1oaEhj3pHd8UDoVEoGHv2D8OXkY4DAyU', 0, 'Elo'),
(7, 'rougeetnoir57@gmail.com', '[\"ROLE_EDIT\"]', '$argon2id$v=19$m=65536,t=4,p=1$UGo3ajQ4T1IvUXJEQjd5Rg$BAdcKyzGTB8Uvn4Xnv7pPNKrapFZo2zH6DK0DObp2d4', 1, 'Marcel');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `aliments`
--
ALTER TABLE `aliments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_B7C2C9DCDF9255BD` (`categorie_aliment_id`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `categorie_aliment`
--
ALTER TABLE `categorie_aliment`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `commentaires`
--
ALTER TABLE `commentaires`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_D9BEC0C489312FE9` (`recette_id`),
  ADD KEY `IDX_D9BEC0C4FC56F556` (`notes_id`);

--
-- Index pour la table `difficulte`
--
ALTER TABLE `difficulte`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `prix`
--
ALTER TABLE `prix`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `recettes`
--
ALTER TABLE `recettes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_EB48E72C944722F2` (`prix_id`),
  ADD KEY `IDX_EB48E72CE6357589` (`difficulte_id`);

--
-- Index pour la table `recettes_categories`
--
ALTER TABLE `recettes_categories`
  ADD PRIMARY KEY (`recettes_id`,`categories_id`),
  ADD KEY `IDX_BBF025203E2ED6D6` (`recettes_id`),
  ADD KEY `IDX_BBF02520A21214B7` (`categories_id`);

--
-- Index pour la table `unite`
--
ALTER TABLE `unite`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `aliments`
--
ALTER TABLE `aliments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `categorie_aliment`
--
ALTER TABLE `categorie_aliment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `commentaires`
--
ALTER TABLE `commentaires`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `difficulte`
--
ALTER TABLE `difficulte`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `prix`
--
ALTER TABLE `prix`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `recettes`
--
ALTER TABLE `recettes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT pour la table `unite`
--
ALTER TABLE `unite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `aliments`
--
ALTER TABLE `aliments`
  ADD CONSTRAINT `FK_B7C2C9DCDF9255BD` FOREIGN KEY (`categorie_aliment_id`) REFERENCES `categorie_aliment` (`id`);

--
-- Contraintes pour la table `commentaires`
--
ALTER TABLE `commentaires`
  ADD CONSTRAINT `FK_D9BEC0C489312FE9` FOREIGN KEY (`recette_id`) REFERENCES `recettes` (`id`),
  ADD CONSTRAINT `FK_D9BEC0C4FC56F556` FOREIGN KEY (`notes_id`) REFERENCES `notes` (`id`);

--
-- Contraintes pour la table `recettes`
--
ALTER TABLE `recettes`
  ADD CONSTRAINT `FK_EB48E72C944722F2` FOREIGN KEY (`prix_id`) REFERENCES `prix` (`id`),
  ADD CONSTRAINT `FK_EB48E72CE6357589` FOREIGN KEY (`difficulte_id`) REFERENCES `difficulte` (`id`);

--
-- Contraintes pour la table `recettes_categories`
--
ALTER TABLE `recettes_categories`
  ADD CONSTRAINT `FK_BBF025203E2ED6D6` FOREIGN KEY (`recettes_id`) REFERENCES `recettes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_BBF02520A21214B7` FOREIGN KEY (`categories_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
