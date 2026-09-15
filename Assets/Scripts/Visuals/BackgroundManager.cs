using UnityEngine;
using UnityEngine.UI;

public class BackgroundManager : MonoBehaviour
{
    [SerializeField] private Image backgroundImage;
    private string currentBackgroundName;

    public void ChangeBackground(string backgroundName)
    {
        Sprite background = Resources.Load<Sprite>(
            "bg/" + backgroundName
        );

        if (background != null)
        {
            backgroundImage.sprite = background;
            currentBackgroundName = backgroundName;

        }
        else
        {
            Debug.LogWarning(
                "no: " + backgroundName
            );
        }
    }

    public string GetCurrentBackground()
    {
        return currentBackgroundName;
    }

    public void RestoreBackground(string backgroundName)
    {
        if (!string.IsNullOrEmpty(backgroundName))
        {
            ChangeBackground(backgroundName);
        }
    }
}