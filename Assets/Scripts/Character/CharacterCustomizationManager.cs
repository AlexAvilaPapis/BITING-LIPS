using UnityEngine;

public class CharacterCustomizationManager : MonoBehaviour
{
    public string HairStyle { get; private set; }
    public string HairColor { get; private set; }
    public string EyebrowColor { get; private set; }
    public string EyeColor { get; private set; }
    public string SkinTone { get; private set; }

    private void Awake()
    {
        LoadCustomization();
    }

    public void SetHairStyle(string value)
    {
        HairStyle = value;
        SaveCustomization();
    }

    public void SetHairColor(string value)
    {
        HairColor = value;
        SaveCustomization();
    }

    public void SetEyebrowColor(string value)
    {
        EyebrowColor = value;
        SaveCustomization();
    }

    public void SetEyeColor(string value)
    {
        EyeColor = value;
        SaveCustomization();
    }

    public void SetSkinTone(string value)
    {
        SkinTone = value;
        SaveCustomization();
    }

    private void SaveCustomization()
    {
        PlayerPrefs.SetString("HairStyle", HairStyle);
        PlayerPrefs.SetString("HairColor", HairColor);
        PlayerPrefs.SetString("EyebrowColor", EyebrowColor);
        PlayerPrefs.SetString("EyeColor", EyeColor);
        PlayerPrefs.SetString("SkinTone", SkinTone);

        PlayerPrefs.Save();
    }

    private void LoadCustomization()
    {
        HairStyle = PlayerPrefs.GetString(
            "HairStyle",
            "long_straight"
        );

        HairColor = PlayerPrefs.GetString(
            "HairColor",
            "brown"
        );

        EyebrowColor = PlayerPrefs.GetString(
            "EyebrowColor",
            "brown"
        );

        EyeColor = PlayerPrefs.GetString(
            "EyeColor",
            "brown"
        );

        SkinTone = PlayerPrefs.GetString(
            "SkinTone",
            "light"
        );
    }
}