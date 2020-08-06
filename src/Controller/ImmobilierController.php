<?php

namespace App\Controller;

use App\Entity\BienImmobilier;
use App\Entity\TypeBien;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;

class ImmobilierController extends AbstractController
{
    
    /**
     * @Route("/", name = "list")
     */
    public function list(){

        
       $biens = $this->getDoctrine()->getRepository(BienImmobilier::class);
       $collectionBien = array();

       foreach ($biens->findAll() as $bien) {
           $idTypeBien = $biens->findCategorieByBien($bien->getId())[0]["type_bien_id"];
           $bien->addTypeBienImmobilier(
               $this->getDoctrine()
                    ->getRepository(TypeBien::class)
                    ->find($idTypeBien));
            //dump($bien);
            array_push($collectionBien,$bien);
            $stringValue = $bien->getCreatedAt()->format('Y-m-d H:i:s');
       }
        
       
        
        return $this->render('immobilier/list.html.twig', [
            'BienImmobiliers' => $collectionBien,
            'date' => $stringValue
        ]);
    }
}
