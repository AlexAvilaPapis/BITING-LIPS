using UnityEngine;
using TMPro;
using UnityEngine.UI;


public class DialogueUI : MonoBehaviour
{
    [Header("Dialogue")]
    [SerializeField] private TextMeshProUGUI dialogueText;
    [SerializeField] private TextMeshProUGUI speakerNameText;


    [Header("Speaker")]
    [SerializeField] private GameObject speakerPanel;
    [SerializeField] private Image speakerBackground;

    [SerializeField] private Sprite dialogue1Center;

    [SerializeField] private Sprite dialogue2Left;
    [SerializeField] private Sprite dialogue2Right;

    [SerializeField] private Sprite dialogue3Left;
    [SerializeField] private Sprite dialogue3Center;
    [SerializeField] private Sprite dialogue3Right;

    [SerializeField] private Sprite dialogue4Left;
    [SerializeField] private Sprite dialogue4LeftCenter;
    [SerializeField] private Sprite dialogue4RightCenter;
    [SerializeField] private Sprite dialogue4Right;


    [SerializeField] private Sprite dialoguePlayer;
    [SerializeField] private Sprite dialogueThought;

    [Header("Chapter End")]
    [SerializeField] private GameObject chapterEndPanel;
    [SerializeField] private TextMeshProUGUI chapterTitleText;

    public void SetDialogueText(string text)
    {
        dialogueText.text = text;
    }

    public void SetSpeaker(string speaker)
    {
        speakerNameText.text = speaker;
    }
    public void SetSpeakerSprite(int characterCount, int position)
    {
        Sprite selectedSprite = null;

        switch (characterCount)
        {
            case 1:

                selectedSprite = dialogue1Center;

                break;


            case 2:

                if (position == 0)
                    selectedSprite = dialogue2Left;

                else
                    selectedSprite = dialogue2Right;

                break;


            case 3:

                if (position == 0)
                    selectedSprite = dialogue3Left;

                else if (position == 1)
                    selectedSprite = dialogue3Center;

                else
                    selectedSprite = dialogue3Right;

                break;


            case 4:

                if (position == 0)
                    selectedSprite = dialogue4Left;

                else if (position == 1)
                    selectedSprite = dialogue4LeftCenter;

                else if (position == 2)
                    selectedSprite = dialogue4RightCenter;

                else
                    selectedSprite = dialogue4Right;

                break;
        }

        if (selectedSprite != null)
            speakerBackground.sprite = selectedSprite;
    }

    public void SetPlayerSpeakerSprite()
    {
        speakerBackground.sprite = dialoguePlayer;
    }

    public void SetThoughtSpeakerSprite()
    {
        speakerBackground.sprite = dialogueThought;
    }

    public void HideSpeaker()
    {
        speakerPanel.SetActive(false);
    }
    public void ShowSpeaker()
    {
        speakerPanel.SetActive(true);
    }
    public string GetDialogueText()
    {
        return dialogueText.text;
    }

    public string GetSpeakerName()
    {
        return speakerNameText.text;
    }

    public void ShowChapterEnd(string chapterName)
    {
        chapterTitleText.text =
            chapterName.Replace("_", " ").ToUpper();

        chapterEndPanel.SetActive(true);
    }

    public void HideChapterEnd()
    {
        chapterEndPanel.SetActive(false);
    }

    public bool IsChapterEndVisible()
    {
        return chapterEndPanel.activeSelf;
    }
}