<?php

namespace App\Entity;

use App\Repository\BienImmobilierRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass=BienImmobilierRepository::class)
 */
class BienImmobilier
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
     * @ORM\Column(type="integer")
     */
    private $prix;

    /**
     * @ORM\Column(type="datetime")
     */
    private $CreatedAt;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $description;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $image;

    /**
     * @ORM\ManyToMany(targetEntity=TypeBien::class, inversedBy="bienImmobiliers")
     */
    private $TypeBienImmobilier;

    public function __construct()
    {
        $this->TypeBienImmobilier = new ArrayCollection();
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

    public function getPrix(): ?int
    {
        return $this->prix;
    }

    public function setPrix(int $prix): self
    {
        $this->prix = $prix;

        return $this;
    }

    public function getCreatedAt(): ?\DateTimeInterface
    {
        return $this->CreatedAt;
    }

    public function setCreatedAt(\DateTimeInterface $CreatedAt): self
    {
        $this->CreatedAt = $CreatedAt;

        return $this;
    }

    public function getDescription(): ?string
    {
        return $this->description;
    }

    public function setDescription(string $description): self
    {
        $this->description = $description;

        return $this;
    }

    public function getImage(): ?string
    {
        return $this->image;
    }

    public function setImage(string $image): self
    {
        $this->image = $image;

        return $this;
    }

    /**
     * @return Collection|TypeBien[]
     */
    public function getTypeBienImmobilier(): Collection
    {
        return $this->TypeBienImmobilier;
    }

    public function addTypeBienImmobilier(TypeBien $typeBienImmobilier): self
    {
        if (!$this->TypeBienImmobilier->contains($typeBienImmobilier)) {
            $this->TypeBienImmobilier[] = $typeBienImmobilier;
        }

        return $this;
    }

    public function removeTypeBienImmobilier(TypeBien $typeBienImmobilier): self
    {
        if ($this->TypeBienImmobilier->contains($typeBienImmobilier)) {
            $this->TypeBienImmobilier->removeElement($typeBienImmobilier);
        }

        return $this;
    }
}
