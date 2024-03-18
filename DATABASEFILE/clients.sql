-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 18 mars 2024 à 22:20
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `clients`
--

-- --------------------------------------------------------

--
-- Structure de la table `educt`
--

CREATE TABLE `educt` (
  `ID_ED` int(11) NOT NULL,
  `id_c` int(11) NOT NULL,
  `INSTUT` varchar(45) NOT NULL,
  `date_OBT` date NOT NULL,
  `FILIER` varchar(45) NOT NULL,
  `diplome` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `educt`
--

INSERT INTO `educt` (`ID_ED`, `id_c`, `INSTUT`, `date_OBT`, `FILIER`, `diplome`) VALUES
(99, 18, 'fst', '2024-03-22', 'gi', 'lst'),
(100, 19, 'hassan', '2024-03-13', 'gi', 'lst');

-- --------------------------------------------------------

--
-- Structure de la table `exprt`
--

CREATE TABLE `exprt` (
  `id_exp` int(11) NOT NULL,
  `id_c` int(11) NOT NULL,
  `societe` varchar(45) NOT NULL,
  `period` varchar(45) NOT NULL,
  `POSTE` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `exprt`
--

INSERT INTO `exprt` (`id_exp`, `id_c`, `societe`, `period`, `POSTE`) VALUES
(18, 18, 'aramco', '2 mois', 'devs'),
(19, 19, 'jjkd', '2 mois', 'devs');

-- --------------------------------------------------------

--
-- Structure de la table `languages`
--

CREATE TABLE `languages` (
  `id_lang` int(11) NOT NULL,
  `id_c` int(11) NOT NULL,
  `langs` varchar(45) NOT NULL,
  `level` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `languages`
--

INSERT INTO `languages` (`id_lang`, `id_c`, `langs`, `level`) VALUES
(66, 18, 'france', 'courant'),
(67, 19, 'english', 'advanced');

-- --------------------------------------------------------

--
-- Structure de la table `logincan`
--

CREATE TABLE `logincan` (
  `id_cl` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `username` varchar(45) NOT NULL,
  `TEL` varchar(45) DEFAULT NULL,
  `ADRESSE` varchar(45) DEFAULT NULL,
  `domain` varchar(45) DEFAULT NULL,
  `prenom` varchar(45) NOT NULL,
  `path_file` text DEFAULT NULL,
  `IMAGE` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `logincan`
--

INSERT INTO `logincan` (`id_cl`, `name`, `email`, `password`, `username`, `TEL`, `ADRESSE`, `domain`, `prenom`, `path_file`, `IMAGE`) VALUES
(18, 'bakir', 'abc6@gmail.com', 'nassif', 'moh12', '0622909687', 'casa', 'informatique', 'moh', 'FILE-65f80986cb6737.81634338.pdf', 'IMG- - 2024.03.18 - 10.26.53am.jpeg'),
(19, 'ali', 'abc@gmail.com', 'nassif', 'nassif12', '0622909687', 'casa', 'data analyst', 'nassif', 'FILE-65f8526c9b1f33.10956098.pdf', 'IMG- - 2024.03.18 - 03.39.08pm.jpeg');

-- --------------------------------------------------------

--
-- Structure de la table `loginrec`
--

CREATE TABLE `loginrec` (
  `id_r` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `username` varchar(45) NOT NULL,
  `SOCIETE` varchar(20) DEFAULT NULL,
  `TEL` varchar(20) DEFAULT NULL,
  `ADRESSE` varchar(20) DEFAULT NULL,
  `prenom` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `loginrec`
--

INSERT INTO `loginrec` (`id_r`, `name`, `email`, `password`, `username`, `SOCIETE`, `TEL`, `ADRESSE`, `prenom`) VALUES
(10, 'bakir', 'bak@gmail.com', '!&quot;§$', 'bak123', 'tasmim', '7821981910', 'casa', 'mohammed'),
(11, 'hamza', 'abc@gmail.com', 'nassif', 'nassif82', 'aramco', '8972861212', 'casa', 'nassif'),
(12, 'hamza', 'abc6@gmail.com', 'nassif', 'nassif12', 'morrow ai', '0622909687', 'casa', 'nassif');

-- --------------------------------------------------------

--
-- Structure de la table `offre`
--

CREATE TABLE `offre` (
  `offre_id` int(11) NOT NULL,
  `titre_off` varchar(255) NOT NULL,
  `lieu` varchar(255) NOT NULL,
  `descri` varchar(255) NOT NULL,
  `date_pub` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `id_r` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `offre`
--

INSERT INTO `offre` (`offre_id`, `titre_off`, `lieu`, `descri`, `date_pub`, `id_r`) VALUES
(11, 'informatique', 'settat', 'looking for devs', '2024-03-18 09:30:26.335693', 11),
(12, 'informatique', 'casa', 'looking for devs', '2024-03-18 14:38:57.765476', 12),
(13, 'master', 'casa', 'stay bjdw', '2024-03-18 14:56:53.095622', 12);

-- --------------------------------------------------------

--
-- Structure de la table `postulation`
--

CREATE TABLE `postulation` (
  `id_po` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `phone` int(11) NOT NULL,
  `cv` varchar(255) NOT NULL,
  `offre_id` int(11) NOT NULL,
  `id_c` int(11) NOT NULL,
  `date_postulation` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `score` float NOT NULL,
  `id_r` int(11) NOT NULL,
  `POST` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `postulation`
--

INSERT INTO `postulation` (`id_po`, `nom`, `prenom`, `mail`, `phone`, `cv`, `offre_id`, `id_c`, `date_postulation`, `score`, `id_r`, `POST`) VALUES
(31, 'bakir', 'moh', 'abc6@gmail.com', 622909687, 'FILE-65f80986cb6737.81634338.pdf', 11, 18, '2024-03-18 09:30:43.600122', 1.6, 11, 'informatique'),
(32, 'bakir', 'moh', 'abc6@gmail.com', 622909687, 'FILE-65f80986cb6737.81634338.pdf', 11, 18, '2024-03-18 09:34:22.851280', 2.2, 11, 'informatique'),
(33, 'ali', 'nassif', 'nassif12', 622909687, 'FILE-65f8526c9b1f33.10956098.pdf', 12, 19, '2024-03-18 14:41:31.818505', 1.6, 12, 'informatique'),
(34, 'ali', 'nassif', 'abc@gmail.com', 622909687, 'FILE-65f8526c9b1f33.10956098.pdf', 12, 19, '2024-03-18 14:47:06.900905', 1.6, 12, 'informatique'),
(35, 'ali', 'nassif', 'abc@gmail.com', 622909687, 'FILE-65f8526c9b1f33.10956098.pdf', 12, 19, '2024-03-18 14:47:43.348205', 1.6, 12, 'informatique'),
(36, 'ali', 'nassif', 'abc@gmail.com', 622909687, 'FILE-65f8526c9b1f33.10956098.pdf', 12, 19, '2024-03-18 14:48:27.013996', 1.6, 12, 'informatique');

-- --------------------------------------------------------

--
-- Structure de la table `projects`
--

CREATE TABLE `projects` (
  `id_PRO` int(11) NOT NULL,
  `id_exp` int(11) DEFAULT NULL,
  `project_name` varchar(45) NOT NULL,
  `project_desc` varchar(300) NOT NULL,
  `id_etud` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `projects`
--

INSERT INTO `projects` (`id_PRO`, `id_exp`, `project_name`, `project_desc`, `id_etud`) VALUES
(42, 18, 'real time meta data', 'test phase', 99),
(43, 18, 'test', 'testing', 99),
(44, 19, 'assembleur', 'NOT BAD AT ALL', 100),
(45, 19, 'HAMZA', 'jknkdw', 100);

-- --------------------------------------------------------

--
-- Structure de la table `skills`
--

CREATE TABLE `skills` (
  `id_skills` int(11) NOT NULL,
  `id_c` int(11) NOT NULL,
  `skills` varchar(45) NOT NULL,
  `level` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `skills`
--

INSERT INTO `skills` (`id_skills`, `id_c`, `skills`, `level`) VALUES
(95, 18, 'java', 'medium'),
(96, 19, 'java', 'advanced');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `educt`
--
ALTER TABLE `educt`
  ADD PRIMARY KEY (`ID_ED`),
  ADD KEY `F1` (`id_c`);

--
-- Index pour la table `exprt`
--
ALTER TABLE `exprt`
  ADD PRIMARY KEY (`id_exp`),
  ADD KEY `F2` (`id_c`);

--
-- Index pour la table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id_lang`),
  ADD KEY `id_c` (`id_c`);

--
-- Index pour la table `logincan`
--
ALTER TABLE `logincan`
  ADD PRIMARY KEY (`id_cl`);

--
-- Index pour la table `loginrec`
--
ALTER TABLE `loginrec`
  ADD PRIMARY KEY (`id_r`);

--
-- Index pour la table `offre`
--
ALTER TABLE `offre`
  ADD PRIMARY KEY (`offre_id`),
  ADD KEY `F7` (`id_r`);

--
-- Index pour la table `postulation`
--
ALTER TABLE `postulation`
  ADD PRIMARY KEY (`id_po`),
  ADD KEY `f80` (`offre_id`),
  ADD KEY `f90` (`id_c`),
  ADD KEY `f27` (`id_r`);

--
-- Index pour la table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id_PRO`),
  ADD KEY `F4` (`id_etud`),
  ADD KEY `F5` (`id_exp`);

--
-- Index pour la table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id_skills`),
  ADD KEY `id_c` (`id_c`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `educt`
--
ALTER TABLE `educt`
  MODIFY `ID_ED` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT pour la table `exprt`
--
ALTER TABLE `exprt`
  MODIFY `id_exp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `languages`
--
ALTER TABLE `languages`
  MODIFY `id_lang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT pour la table `logincan`
--
ALTER TABLE `logincan`
  MODIFY `id_cl` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `loginrec`
--
ALTER TABLE `loginrec`
  MODIFY `id_r` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `offre`
--
ALTER TABLE `offre`
  MODIFY `offre_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `postulation`
--
ALTER TABLE `postulation`
  MODIFY `id_po` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT pour la table `projects`
--
ALTER TABLE `projects`
  MODIFY `id_PRO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT pour la table `skills`
--
ALTER TABLE `skills`
  MODIFY `id_skills` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `educt`
--
ALTER TABLE `educt`
  ADD CONSTRAINT `F1` FOREIGN KEY (`id_c`) REFERENCES `logincan` (`id_cl`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `exprt`
--
ALTER TABLE `exprt`
  ADD CONSTRAINT `F2` FOREIGN KEY (`id_c`) REFERENCES `logincan` (`id_cl`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `languages`
--
ALTER TABLE `languages`
  ADD CONSTRAINT `languages_ibfk_1` FOREIGN KEY (`id_c`) REFERENCES `logincan` (`id_cl`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `offre`
--
ALTER TABLE `offre`
  ADD CONSTRAINT `F7` FOREIGN KEY (`id_r`) REFERENCES `loginrec` (`id_r`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `postulation`
--
ALTER TABLE `postulation`
  ADD CONSTRAINT `f27` FOREIGN KEY (`id_r`) REFERENCES `loginrec` (`id_r`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `f80` FOREIGN KEY (`offre_id`) REFERENCES `offre` (`offre_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `f90` FOREIGN KEY (`id_c`) REFERENCES `logincan` (`id_cl`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `F4` FOREIGN KEY (`id_etud`) REFERENCES `educt` (`ID_ED`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `F5` FOREIGN KEY (`id_exp`) REFERENCES `exprt` (`id_exp`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `skills`
--
ALTER TABLE `skills`
  ADD CONSTRAINT `skills_ibfk_1` FOREIGN KEY (`id_c`) REFERENCES `logincan` (`id_cl`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
