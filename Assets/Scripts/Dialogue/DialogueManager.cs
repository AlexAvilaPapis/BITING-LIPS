using UnityEngine;
using Ink.Runtime;
using System.Collections.Generic;

public class DialogueManager : MonoBehaviour
{
    [Header("Ink")]
    [SerializeField] private TextAsset inkJSON;
    [SerializeField] private string startKnot = "chapter_01";

    private Story story;

    private string nextChapter;
    private string currentChapter;
    private bool waiting = false;

    private DialogueUI dialogueUI;
    private DialogueInput dialogueInput;
    private ChoiceManager choiceManager;

    private BackgroundManager backgroundManager;
    private CharacterManager characterManager;

    private NameInputManager nameInputManager;
    private OutfitInputManager outfitInputManager;
    private MessageManager messageManager;

    private SFXManager sfxManager;
    private SaveManager saveManager;
    private PauseManager pauseManager;
    private MusicManager musicManager;

    private void Start()
    {
        dialogueUI = FindFirstObjectByType<DialogueUI>();
        dialogueInput = FindFirstObjectByType<DialogueInput>();
        choiceManager = FindFirstObjectByType<ChoiceManager>();

        backgroundManager = FindFirstObjectByType<BackgroundManager>();
        characterManager = FindFirstObjectByType<CharacterManager>();

        nameInputManager = FindFirstObjectByType<NameInputManager>();
        outfitInputManager = FindFirstObjectByType<OutfitInputManager>();
        messageManager = FindFirstObjectByType<MessageManager>();

        sfxManager = FindFirstObjectByType<SFXManager>();
        saveManager = FindFirstObjectByType<SaveManager>();
        pauseManager = FindFirstObjectByType<PauseManager>();
        musicManager = FindFirstObjectByType<MusicManager>();

        dialogueInput.OnAdvance += AdvanceDialogue;
        choiceManager.OnChoiceSelected += ChooseOption;
        nameInputManager.OnNameConfirmed += SetPlayerName;
        outfitInputManager.OnOutfitSelected += SetPlayerOutfit;

        if (GameSession.LoadSavedGame)
        {
            LoadGame();
        }
        else
        {
            currentChapter = startKnot;
            StartStory(currentChapter);
        }
    }

    private void AdvanceDialogue()
    {
        if (pauseManager.IsPaused())
            return;

        if (dialogueUI.IsChapterEndVisible())
            return;

        if (waiting)
            return;

        if (story.canContinue &&
            story.currentChoices.Count == 0)
        {
            ContinueStory();
        }
    }

    private void StartStory(string knot)
    {
        if (story == null)
        {
            story = new Story(inkJSON.text);
        }

        story.ChoosePathString(knot);

        dialogueUI.HideChapterEnd();
        choiceManager.ClearChoices();

        nextChapter = "";

    }

    private void ContinueStory()
    {
        if (!story.canContinue)
        {
            Debug.Log("Fin");
            return;
        }

        string text = story.Continue();

        dialogueUI.SetDialogueText(text);

        HandleTags(story.currentTags);

        if (dialogueUI.IsChapterEndVisible())
            return;

        if (story.currentChoices.Count > 0)
        {
            choiceManager.DisplayChoices(story);
        }

        if (!waiting)
        {
            saveManager.SaveGame(
                story,
                currentChapter,
                dialogueUI.GetDialogueText(),
                dialogueUI.GetSpeakerName(),
                backgroundManager,
                characterManager
            );
        }

        //saveManager.SaveGame(story, currentChapter, dialogueUI.GetDialogueText(), dialogueUI.GetSpeakerName());
    }

    private void HandleTags(List<string> tags)
    {
        foreach (string tag in tags)
        {
            // Debug.Log("TAG:" + tag);

            if (tag.StartsWith("speaker:"))
            {
                string speaker = tag.Substring("speaker:".Length).Trim();

                if (speaker == "hide")
                {
                    dialogueUI.SetThoughtSpeakerSprite();
                    dialogueUI.SetThoughtSpeakerSprite();
                    dialogueUI.HideSpeaker();
                }
                else
                {
                    if (speaker == "{protagonistName}" || speaker == "Tú")
                    {
                        speaker = story.variablesState["protagonistName"].ToString();

                        dialogueUI.SetPlayerSpeakerSprite();
                    }
                    else
                    {
                        int characterCount =
                            characterManager.GetVisibleCharacterCount();

                        int characterPosition =
                            characterManager.GetSpeakingCharacterPosition(speaker);

                        dialogueUI.SetSpeakerSprite(
                            characterCount,
                            characterPosition
                        );
                    }

                    dialogueUI.SetSpeaker(speaker);
                    dialogueUI.ShowSpeaker();
                }
            }
            if (tag.StartsWith("music:"))
            {
                string musicName =
                    tag.Substring("music:".Length).Trim();

                musicManager.PlayMusic(musicName);
            }
            if (tag.StartsWith("endchapter:"))
            {
                nextChapter =
                    tag.Substring("endchapter:".Length);

                ShowChapterEnd();
            }

            if (tag.StartsWith("bg:"))
            {
                string backgroundName =
                    tag.Substring("bg:".Length);

                backgroundManager.ChangeBackground(backgroundName);
            }

            if (tag.StartsWith("char:"))
            {
                string characterData =
                    tag.Substring("char:".Length).Trim();

                string[] parts = characterData.Split(':');

                if (parts.Length >= 2)
                {
                    string characterName = parts[0];
                    string expression = parts[1];

                    characterManager.ShowCharacter(
                        characterName,
                        expression
                    );
                }
            }
            if (tag.StartsWith("cael:"))
            {
                string characterData =
                    tag.Substring("cael:".Length).Trim();

                string[] parts = characterData.Split(':');

                if (parts.Length >= 2)
                {
                    string outfit = parts[0];
                    string expression = parts[1];

                    characterManager.ShowCael(
                        outfit,
                        expression
                    );
                }
            }
            if (tag.StartsWith("dante:"))
            {
                string characterData =
                    tag.Substring("dante:".Length).Trim();

                string[] parts = characterData.Split(':');

                if (parts.Length >= 2)
                {
                    string outfit = parts[0];
                    string expression = parts[1];

                    characterManager.ShowDante(
                        outfit,
                        expression
                    );
                }
            }
            if (tag.StartsWith("evan:"))
            {
                string characterData =
                    tag.Substring("evan:".Length).Trim();

                string[] parts = characterData.Split(':');

                if (parts.Length >= 2)
                {
                    string outfit = parts[0];
                    string expression = parts[1];

                    characterManager.ShowEvan(
                        outfit,
                        expression
                    );
                }
            }
            if (tag.StartsWith("hide:"))
            {
                string characterName =
                    tag.Substring("hide:".Length);
                if (tag == "speaker:hide")
                {
                    dialogueUI.HideSpeaker();
                }

                characterManager.HideCharacter(characterName);
            }

            if (tag.StartsWith("input:name"))
            {
                waiting = true;
                nameInputManager.ShowNameInput();
            }
            if (tag.StartsWith("input:outfit:"))
            {
                string outfitSet = tag.Substring("input:outfit:".Length).Trim();

                waiting = true;
                outfitInputManager.ShowOutfitInput(outfitSet);
            }
            if (tag == "phone:start")
            {
                messageManager.StartPhone();
            }

            else if (tag == "phone:end")
            {
                messageManager.EndPhone();
            }

            else if (tag.StartsWith("message:"))
            {
                string messageData =
                    tag.Substring("message:".Length).Trim();

                string[] parts =
                    messageData.Split(':');

                if (parts.Length >= 1)
                {
                    string senderID = parts[0];

                    string message =
                        story.currentText.Trim();

                    if (senderID.ToLower() == "player")
                    {
                        messageManager.ShowPlayerMessage(message);
                    }

                    else if (senderID.ToLower() == "thought")
                    {
                        messageManager.ShowPhoneThought(message);
                    }

                    else if (parts.Length >= 2)
                    {
                        string contactName = parts[1];

                        messageManager.ShowMessage(
                            senderID,
                            contactName,
                            message
                        );
                    }
                }
            }
            if (tag.StartsWith("sfx:"))
            {
                string soundName =
                    tag.Substring("sfx:".Length).Trim();

                sfxManager.PlaySFX(soundName);
            }
        }
    }
    private void SetPlayerName(string playerName)
    {
        story.variablesState["protagonistName"] = playerName;
        waiting = false;
        ContinueStory();
    }

    private void SetPlayerOutfit(string outfit)
    {
        story.variablesState["outfitChoice"] = outfit;

        waiting = false;

        ContinueStory();
    }

    private void ShowChapterEnd()
    {
        choiceManager.ClearChoices();

        dialogueUI.ShowChapterEnd(currentChapter);
    }
    private void ChooseOption(int choiceIndex)
    {

        story.ChooseChoiceIndex(choiceIndex);

        choiceManager.ClearChoices();

        ContinueStory();

        Debug.Log(
            "Cael: " + story.variablesState["caelAffinity"] + "\n" +
            "Dante: " + story.variablesState["danteAffinity"] + "\n" +
            "Evan: " + story.variablesState["evanAffinity"] + "\n" 
        );
    }

    public void ContinueToNextChapter()
    {
        if (!string.IsNullOrEmpty(nextChapter))
        {
            currentChapter = nextChapter;

            StartStory(currentChapter);
        };
    }

    public void RepeatChapter()
    {
        StartStory(currentChapter);
    }

    public void ReturnToMainMenu()
    {
        Time.timeScale = 1f;

        pauseManager.ReturnToMainMenu();
    }

    public void LoadGame()
    {
        SaveData saveData = saveManager.LoadGame();

        if (saveData == null)
            return;

        currentChapter = saveData.currentChapter;

        //historia
        story = new Story(inkJSON.text);

        //ink
        story.state.LoadJson(saveData.inkState);

        dialogueUI.HideChapterEnd();
        choiceManager.ClearChoices();

        //text
        dialogueUI.SetDialogueText(saveData.dialogueText);
        dialogueUI.SetSpeaker(saveData.speakerName);

        //bg
        backgroundManager.RestoreBackground(
            saveData.backgroundName
        );

        //char
        characterManager.RestoreCharacter(
            saveData.characterVisible,
            saveData.characterName,
            saveData.characterExpression
        );

        characterManager.RestoreCael(
            saveData.caelVisible,
            saveData.caelOutfit,
            saveData.caelExpression
        );

        characterManager.RestoreDante(
            saveData.danteVisible,
            saveData.danteOutfit,
            saveData.danteExpression
        );

        characterManager.RestoreEvan(
            saveData.evanVisible,
            saveData.evanOutfit,
            saveData.evanExpression
        );
        //  ContinueStory();

    }

    private void OnDestroy()
    {
        if (nameInputManager != null)
            nameInputManager.OnNameConfirmed -= SetPlayerName;

        if (dialogueInput != null)
            dialogueInput.OnAdvance -= AdvanceDialogue;

        if (choiceManager != null)
            choiceManager.OnChoiceSelected -= ChooseOption;
    }
}