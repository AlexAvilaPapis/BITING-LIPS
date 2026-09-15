using System;
using UnityEngine;
using UnityEngine.UI;

public class OutfitInputManager : MonoBehaviour
{
    [Header("UI")]
    [SerializeField] private GameObject outfitPanel;

    [SerializeField] private Button Outfit1;
    [SerializeField] private Button Outfit2;
    [SerializeField] private Button Outfit3;

    [SerializeField] private Image Outfit1Image;
    [SerializeField] private Image Outfit2Image;
    [SerializeField] private Image Outfit3Image;

    public event Action<string> OnOutfitSelected;

    private void Awake()
    {
        Outfit1.onClick.AddListener(() => SelectOutfit("Outfit1"));
        Outfit2.onClick.AddListener(() => SelectOutfit("Outfit2"));
        Outfit3.onClick.AddListener(() => SelectOutfit("Outfit3"));

        outfitPanel.SetActive(false);
    }

    public void ShowOutfitInput(string outfitSet)
    {
        LoadOutfits(outfitSet);

        outfitPanel.SetActive(true);
    }

    private void LoadOutfits(string outfitSet)
    {
        Sprite outfit1 = Resources.Load<Sprite>("outfit/1_" + outfitSet);
        Sprite outfit2 = Resources.Load<Sprite>("outfit/2_" + outfitSet);
        Sprite outfit3 = Resources.Load<Sprite>("outfit/3_" + outfitSet);

        Outfit1Image.sprite = outfit1;
        Outfit2Image.sprite = outfit2;
        Outfit3Image.sprite = outfit3;
    }

    private void SelectOutfit(string outfit)
    {
        outfitPanel.SetActive(false);

        OnOutfitSelected?.Invoke(outfit);
    }
}