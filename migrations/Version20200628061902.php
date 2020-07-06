<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20200628061902 extends AbstractMigration
{
    public function getDescription() : string
    {
        return '';
    }

    public function up(Schema $schema) : void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE TABLE aliments (id INT AUTO_INCREMENT NOT NULL, categorie_aliment_id INT DEFAULT NULL, nom_aliment VARCHAR(255) NOT NULL, INDEX IDX_B7C2C9DCDF9255BD (categorie_aliment_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE categorie_aliment (id INT AUTO_INCREMENT NOT NULL, nom_categorie_aliment VARCHAR(255) NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE categories (id INT AUTO_INCREMENT NOT NULL, nom_categorie VARCHAR(255) NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE commentaires (id INT AUTO_INCREMENT NOT NULL, recette_id INT DEFAULT NULL, notes_id INT DEFAULT NULL, commentaire VARCHAR(255) NOT NULL, pseudo VARCHAR(255) NOT NULL, INDEX IDX_D9BEC0C489312FE9 (recette_id), INDEX IDX_D9BEC0C4FC56F556 (notes_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE difficulte (id INT AUTO_INCREMENT NOT NULL, nom_difficulte VARCHAR(255) NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE notes (id INT AUTO_INCREMENT NOT NULL, note VARCHAR(255) NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE prix (id INT AUTO_INCREMENT NOT NULL, nom_prix VARCHAR(255) NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE recettes (id INT AUTO_INCREMENT NOT NULL, prix_id INT DEFAULT NULL, difficulte_id INT DEFAULT NULL, nom_recette VARCHAR(255) NOT NULL, image VARCHAR(255) NOT NULL, images LONGTEXT NOT NULL COMMENT \'(DC2Type:array)\', nombre_personne INT NOT NULL, valide TINYINT(1) NOT NULL, ingredient LONGTEXT NOT NULL, etape LONGTEXT NOT NULL, temps VARCHAR(255) NOT NULL, INDEX IDX_EB48E72C944722F2 (prix_id), INDEX IDX_EB48E72CE6357589 (difficulte_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE recettes_categories (recettes_id INT NOT NULL, categories_id INT NOT NULL, INDEX IDX_BBF025203E2ED6D6 (recettes_id), INDEX IDX_BBF02520A21214B7 (categories_id), PRIMARY KEY(recettes_id, categories_id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE unite (id INT AUTO_INCREMENT NOT NULL, nom_unite VARCHAR(255) NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE user (id INT AUTO_INCREMENT NOT NULL, email VARCHAR(180) NOT NULL, roles LONGTEXT NOT NULL COMMENT \'(DC2Type:json)\', password VARCHAR(255) NOT NULL, is_verified TINYINT(1) NOT NULL, pseudo VARCHAR(255) NOT NULL, UNIQUE INDEX UNIQ_8D93D649E7927C74 (email), UNIQUE INDEX UNIQ_8D93D64986CC499D (pseudo), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('ALTER TABLE aliments ADD CONSTRAINT FK_B7C2C9DCDF9255BD FOREIGN KEY (categorie_aliment_id) REFERENCES categorie_aliment (id)');
        $this->addSql('ALTER TABLE commentaires ADD CONSTRAINT FK_D9BEC0C489312FE9 FOREIGN KEY (recette_id) REFERENCES recettes (id)');
        $this->addSql('ALTER TABLE commentaires ADD CONSTRAINT FK_D9BEC0C4FC56F556 FOREIGN KEY (notes_id) REFERENCES notes (id)');
        $this->addSql('ALTER TABLE recettes ADD CONSTRAINT FK_EB48E72C944722F2 FOREIGN KEY (prix_id) REFERENCES prix (id)');
        $this->addSql('ALTER TABLE recettes ADD CONSTRAINT FK_EB48E72CE6357589 FOREIGN KEY (difficulte_id) REFERENCES difficulte (id)');
        $this->addSql('ALTER TABLE recettes_categories ADD CONSTRAINT FK_BBF025203E2ED6D6 FOREIGN KEY (recettes_id) REFERENCES recettes (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE recettes_categories ADD CONSTRAINT FK_BBF02520A21214B7 FOREIGN KEY (categories_id) REFERENCES categories (id) ON DELETE CASCADE');
    }

    public function down(Schema $schema) : void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE aliments DROP FOREIGN KEY FK_B7C2C9DCDF9255BD');
        $this->addSql('ALTER TABLE recettes_categories DROP FOREIGN KEY FK_BBF02520A21214B7');
        $this->addSql('ALTER TABLE recettes DROP FOREIGN KEY FK_EB48E72CE6357589');
        $this->addSql('ALTER TABLE commentaires DROP FOREIGN KEY FK_D9BEC0C4FC56F556');
        $this->addSql('ALTER TABLE recettes DROP FOREIGN KEY FK_EB48E72C944722F2');
        $this->addSql('ALTER TABLE commentaires DROP FOREIGN KEY FK_D9BEC0C489312FE9');
        $this->addSql('ALTER TABLE recettes_categories DROP FOREIGN KEY FK_BBF025203E2ED6D6');
        $this->addSql('DROP TABLE aliments');
        $this->addSql('DROP TABLE categorie_aliment');
        $this->addSql('DROP TABLE categories');
        $this->addSql('DROP TABLE commentaires');
        $this->addSql('DROP TABLE difficulte');
        $this->addSql('DROP TABLE notes');
        $this->addSql('DROP TABLE prix');
        $this->addSql('DROP TABLE recettes');
        $this->addSql('DROP TABLE recettes_categories');
        $this->addSql('DROP TABLE unite');
        $this->addSql('DROP TABLE user');
    }
}
