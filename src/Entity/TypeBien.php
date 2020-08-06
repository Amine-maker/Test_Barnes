<?php

namespace App\Entity;

use App\Repository\TypeBienRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass=TypeBienRepository::class)
 */
class TypeBien
{
    /**
     * @ORM\Id()
     * @ORM\GeneratedValue()
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $nom;

    /**
     * @ORM\ManyToMany(targetEntity=BienImmobilier::class, mappedBy="TypeBienImmobilier")
     */
    private $bienImmobiliers;

    public function __construct()
    {
        $this->bienImmobiliers = new ArrayCollection();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getNom(): ?string
    {
        return $this->nom;
    }

    public function setNom(string $nom): self
    {
        $this->nom = $nom;

        return $this;
    }

    /**
     * @return Collection|BienImmobilier[]
     */
    public function getBienImmobiliers(): Collection
    {
        return $this->bienImmobiliers;
    }

    public function addBienImmobilier(BienImmobilier $bienImmobilier): self
    {
        if (!$this->bienImmobiliers->contains($bienImmobilier)) {
            $this->bienImmobiliers[] = $bienImmobilier;
            $bienImmobilier->addTypeBienImmobilier($this);
        }

        return $this;
    }

    public function removeBienImmobilier(BienImmobilier $bienImmobilier): self
    {
        if ($this->bienImmobiliers->contains($bienImmobilier)) {
            $this->bienImmobiliers->removeElement($bienImmobilier);
            $bienImmobilier->removeTypeBienImmobilier($this);
        }

        return $this;
    }
}
