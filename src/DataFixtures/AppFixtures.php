<?php

namespace App\DataFixtures;

use App\Entity\BienImmobilier;
use App\Entity\TypeBien;
use DateTime;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Common\Persistence\ObjectManager;

class AppFixtures extends Fixture
{
    public function load(ObjectManager $manager)
    {
        $array = ["Maison", "Villa", "Studio", "Appartement", "Loft"];
        
        for ($i=0; $i < count($array); $i++) { 
            $typeBien = new TypeBien();
            $typeBien->setNom($array[$i]);
            $manager->persist($typeBien);
        }

        $faker = \Faker\Factory::create('fr_FR');

        for ($i=0; $i < 20; $i++) { 
            
            $nom = $array[mt_rand(0, count($array) - 1)];
            $typeBien->setNom($nom);
            $bienImmobilier = new BienImmobilier();
            
            

        
            $bienImmobilier->setNom($faker->word)
                           ->setPrix($faker->numberBetween(120000, 4000000))
                           ->setDescription($faker->text)
                           ->setCreatedAt(new \DateTime())
                           ->setImage("image/bien")
                           ->addTypeBienImmobilier($typeBien);

            $manager->persist($bienImmobilier);

        }

        $manager->flush();
    }
}
