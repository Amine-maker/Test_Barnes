<?php

namespace App\Repository;

use App\Entity\BienImmobilier;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method BienImmobilier|null find($id, $lockMode = null, $lockVersion = null)
 * @method BienImmobilier|null findOneBy(array $criteria, array $orderBy = null)
 * @method BienImmobilier[]    findAll()
 * @method BienImmobilier[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class BienImmobilierRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, BienImmobilier::class);
    }

    // /**
    //  * @return BienImmobilier[] Returns an array of BienImmobilier objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('b')
            ->andWhere('b.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('b.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    
    public function findCategorieByBien($value)
    {

        $conn = $this->getEntityManager()->getConnection();

        $sql="SELECT `type_bien_id`
              FROM `bien_immobilier_type_bien`
              WHERE `bien_immobilier_id` = '$value'";

        $stmt = $conn->prepare($sql);
        $stmt->execute();
        return $stmt->fetchAll();
    }
    



}
