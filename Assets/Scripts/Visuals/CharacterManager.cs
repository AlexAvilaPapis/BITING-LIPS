using UnityEngine;
using UnityEngine.UI;
using System.Collections.Generic;

public class CharacterManager : MonoBehaviour
{
    [Header("Personajes no recurrentes")]
    [SerializeField] private Image characterImage;

    [Header("Personajes principales")]
    [SerializeField] private Image caelImage;
    [SerializeField] private Image danteImage;
    [SerializeField] private Image evanImage;


    private string currentCharacterName;
    private string currentCharacterExpression;
    private bool currentCharacterVisible;
   // public string GetCharacterPosition(string characterName)
    


    private string caelOutfit;
    private string caelExpression;
    private bool caelVisible;


    private string danteOutfit;
    private string danteExpression;
    private bool danteVisible;


    private string evanOutfit;
    private string evanExpression;
    private bool evanVisible;


    private void Awake()
    {
        characterImage.gameObject.SetActive(false);
        caelImage.gameObject.SetActive(false);
        danteImage.gameObject.SetActive(false);
        evanImage.gameObject.SetActive(false);
    }


    public void ShowCharacter(string characterName, string expression)
    {
        string path =
            "char/" +
            characterName +
            "/" +
            expression;

        Sprite character = Resources.Load<Sprite>(path);

        if (character != null)
        {
            characterImage.sprite = character;
            characterImage.gameObject.SetActive(true);

            currentCharacterName = characterName;
            currentCharacterExpression = expression;
            currentCharacterVisible = true;
        }
        else
        {
            Debug.LogWarning("No se encontró: " + path);
        }
    }


    public void ShowCael(string outfit, string expression)
    {
        ShowMainCharacter(
            caelImage,
            "cael",
            outfit,
            expression
        );

        caelOutfit = outfit;
        caelExpression = expression;
        caelVisible = true;
    }


    public void ShowDante(string outfit, string expression)
    {
        ShowMainCharacter(
            danteImage,
            "dante",
            outfit,
            expression
        );

        danteOutfit = outfit;
        danteExpression = expression;
        danteVisible = true;
    }


    public void ShowEvan(string outfit, string expression)
    {
        ShowMainCharacter(
            evanImage,
            "evan",
            outfit,
            expression
        );

        evanOutfit = outfit;
        evanExpression = expression;
        evanVisible = true;
    }


    public void ShowMainCharacter(
        Image characterImage,
        string characterName,
        string outfit,
        string expression)
    {
        string path =
            "char/" +
            characterName +
            "/" +
            outfit +
            "/" +
            expression;

        Sprite character = Resources.Load<Sprite>(path);

        if (character != null)
        {
            characterImage.sprite = character;
            characterImage.gameObject.SetActive(true);
        }
        else
        {
            Debug.LogWarning(
                "No se encontró: " + path
            );
        }
    }


    public void HideCharacter(string characterName)
    {
        switch (characterName.ToLower())
        {
            case "cael":

                caelImage.gameObject.SetActive(false);
                caelVisible = false;

                break;


            case "dante":

                danteImage.gameObject.SetActive(false);
                danteVisible = false;

                break;


            case "evan":

                evanImage.gameObject.SetActive(false);
                evanVisible = false;

                break;


            case "all":

                characterImage.gameObject.SetActive(false);
                caelImage.gameObject.SetActive(false);
                danteImage.gameObject.SetActive(false);
                evanImage.gameObject.SetActive(false);

                currentCharacterVisible = false;
                caelVisible = false;
                danteVisible = false;
                evanVisible = false;

                break;


            default:

                characterImage.gameObject.SetActive(false);
                currentCharacterVisible = false;

                break;
        }
    }

    public int GetSpeakingCharacterPosition(string characterName)
    {
        List<Image> visibleCharacters = new List<Image>();

        if (characterImage.gameObject.activeSelf)
            visibleCharacters.Add(characterImage);

        if (caelImage.gameObject.activeSelf)
            visibleCharacters.Add(caelImage);

        if (danteImage.gameObject.activeSelf)
            visibleCharacters.Add(danteImage);

        if (evanImage.gameObject.activeSelf)
            visibleCharacters.Add(evanImage);


        visibleCharacters.Sort(
            (a, b) =>
                a.rectTransform.position.x.CompareTo(
                    b.rectTransform.position.x
                )
        );


        Image speakingImage = null;


        switch (characterName.ToLower())
        {
            case "cael":
                speakingImage = caelImage;
                break;

            case "dante":
                speakingImage = danteImage;
                break;

            case "evan":
                speakingImage = evanImage;
                break;

            default:

                if (
                    currentCharacterVisible &&
                    currentCharacterName.ToLower() ==
                    characterName.ToLower()
                )
                {
                    speakingImage = characterImage;
                }

                break;
        }


        if (speakingImage == null)
        {
            Debug.LogWarning("NO" + characterName);

            return 0;
        }


        return visibleCharacters.IndexOf(speakingImage);
    }

    public int GetVisibleCharacterCount()
    {
        int count = 0;

        if (characterImage.gameObject.activeSelf)
            count++;

        if (caelImage.gameObject.activeSelf)
            count++;

        if (danteImage.gameObject.activeSelf)
            count++;

        if (evanImage.gameObject.activeSelf)
            count++;

        return count;
    }

    public bool GetCharacterVisible()
    {
        return currentCharacterVisible;
    }

    public string GetCharacterName()
    {
        return currentCharacterName;
    }

    public string GetCharacterExpression()
    {
        return currentCharacterExpression;
    }


    public bool GetCaelVisible()
    {
        return caelVisible;
    }

    public string GetCaelOutfit()
    {
        return caelOutfit;
    }

    public string GetCaelExpression()
    {
        return caelExpression;
    }


    public bool GetDanteVisible()
    {
        return danteVisible;
    }

    public string GetDanteOutfit()
    {
        return danteOutfit;
    }

    public string GetDanteExpression()
    {
        return danteExpression;
    }


    public bool GetEvanVisible()
    {
        return evanVisible;
    }

    public string GetEvanOutfit()
    {
        return evanOutfit;
    }

    public string GetEvanExpression()
    {
        return evanExpression;
    }


    public void RestoreCharacter(
        bool visible,
        string characterName,
        string expression)
    {
        if (
            visible &&
            !string.IsNullOrEmpty(characterName) &&
            !string.IsNullOrEmpty(expression)
        )
        {
            ShowCharacter(
                characterName,
                expression
            );
        }
        else
        {
            characterImage.gameObject.SetActive(false);
            currentCharacterVisible = false;
        }
    }


    public void RestoreCael(
        bool visible,
        string outfit,
        string expression)
    {
        if (
            visible &&
            !string.IsNullOrEmpty(outfit) &&
            !string.IsNullOrEmpty(expression)
        )
        {
            ShowCael(
                outfit,
                expression
            );
        }
        else
        {
            caelImage.gameObject.SetActive(false);
            caelVisible = false;
        }
    }


    public void RestoreDante(
        bool visible,
        string outfit,
        string expression)
    {
        if (
            visible &&
            !string.IsNullOrEmpty(outfit) &&
            !string.IsNullOrEmpty(expression)
        )
        {
            ShowDante(
                outfit,
                expression
            );
        }
        else
        {
            danteImage.gameObject.SetActive(false);
            danteVisible = false;
        }
    }


    public void RestoreEvan(
        bool visible,
        string outfit,
        string expression)
    {
        if (
            visible &&
            !string.IsNullOrEmpty(outfit) &&
            !string.IsNullOrEmpty(expression)
        )
        {
            ShowEvan(
                outfit,
                expression
            );
        }
        else
        {
            evanImage.gameObject.SetActive(false);
            evanVisible = false;
        }
    }
}