<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20200805152956 extends AbstractMigration
{
    public function getDescription() : string
    {
        return '';
    }

    public function up(Schema $schema) : void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE TABLE bien_immobilier (id INT AUTO_INCREMENT NOT NULL, nom VARCHAR(255) NOT NULL, prix INT NOT NULL, created_at DATETIME NOT NULL, description VARCHAR(255) NOT NULL, image VARCHAR(255) NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE bien_immobilier_type_bien (bien_immobilier_id INT NOT NULL, type_bien_id INT NOT NULL, INDEX IDX_BA4B9C665992120A (bien_immobilier_id), INDEX IDX_BA4B9C6695B4D7FA (type_bien_id), PRIMARY KEY(bien_immobilier_id, type_bien_id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE type_bien (id INT AUTO_INCREMENT NOT NULL, nom VARCHAR(255) NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('ALTER TABLE bien_immobilier_type_bien ADD CONSTRAINT FK_BA4B9C665992120A FOREIGN KEY (bien_immobilier_id) REFERENCES bien_immobilier (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE bien_immobilier_type_bien ADD CONSTRAINT FK_BA4B9C6695B4D7FA FOREIGN KEY (type_bien_id) REFERENCES type_bien (id) ON DELETE CASCADE');
    }

    public function down(Schema $schema) : void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE bien_immobilier_type_bien DROP FOREIGN KEY FK_BA4B9C665992120A');
        $this->addSql('ALTER TABLE bien_immobilier_type_bien DROP FOREIGN KEY FK_BA4B9C6695B4D7FA');
        $this->addSql('DROP TABLE bien_immobilier');
        $this->addSql('DROP TABLE bien_immobilier_type_bien');
        $this->addSql('DROP TABLE type_bien');
    }
}
