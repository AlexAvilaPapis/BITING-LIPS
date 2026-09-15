using UnityEngine;
using Ink.Runtime;

public class SaveManager : MonoBehaviour
{
    private const string SaveKey = "VNSave";

    public void SaveGame(
        Story story,
        string currentChapter,
        string dialogueText,
        string speakerName,
        BackgroundManager backgroundManager,
        CharacterManager characterManager)

    {
        SaveData saveData = new SaveData();

        saveData.inkState = story.state.ToJson();
        saveData.currentChapter = currentChapter;

        saveData.dialogueText = dialogueText;
        saveData.speakerName = speakerName;

        //bg
        saveData.backgroundName =
            backgroundManager.GetCurrentBackground();

        //char
        saveData.characterVisible =
            characterManager.GetCharacterVisible();

        saveData.characterName =
            characterManager.GetCharacterName();

        saveData.characterExpression =
            characterManager.GetCharacterExpression();

        //cael
        saveData.caelVisible =
            characterManager.GetCaelVisible();

        saveData.caelOutfit =
            characterManager.GetCaelOutfit();

        saveData.caelExpression =
            characterManager.GetCaelExpression();

        //dante
        saveData.danteVisible =
            characterManager.GetDanteVisible();

        saveData.danteOutfit =
            characterManager.GetDanteOutfit();

        saveData.danteExpression =
            characterManager.GetDanteExpression();

        //evan
        saveData.evanVisible =
           characterManager.GetEvanVisible();

        saveData.evanOutfit =
            characterManager.GetEvanOutfit();

        saveData.evanExpression =
            characterManager.GetEvanExpression();

        string json = JsonUtility.ToJson(saveData);

        PlayerPrefs.SetString(SaveKey, json);
        PlayerPrefs.Save();

        Debug.Log("partida guardada");
    }

    public bool HasSave()
    {
        return PlayerPrefs.HasKey(SaveKey);
    }

    public SaveData LoadGame()
    {
        if (!HasSave())
        {
            Debug.Log("no hay partida guardada");
            return null;
        }

        string json = PlayerPrefs.GetString(SaveKey);

        SaveData saveData =
            JsonUtility.FromJson<SaveData>(json);

        return saveData;
    }

    public void DeleteSave()
    {
        PlayerPrefs.DeleteKey(SaveKey);
        PlayerPrefs.Save();

        Debug.Log("partida eliminada");
    }
}