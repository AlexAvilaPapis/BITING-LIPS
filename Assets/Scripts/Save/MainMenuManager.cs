using UnityEngine;
using UnityEngine.SceneManagement;
using TMPro;
using UnityEngine.UI;

public class MainMenuManager : MonoBehaviour
{

    [Header("Panels")]
    [SerializeField] private GameObject mainMenuPanel;
    [SerializeField] private GameObject continuePanel;

    [Header("Continue Info")]
    [SerializeField] private TextMeshProUGUI chapterText;
    [SerializeField] private TextMeshProUGUI summaryText;
    [SerializeField] private TextMeshProUGUI continueButtonText;


    [SerializeField] private Button continueButton;
    private SaveManager saveManager;

    private void Start()
    {
        saveManager = FindFirstObjectByType<SaveManager>();

        bool hasSave = PlayerPrefs.HasKey("VNSave");

        continueButton.interactable = hasSave;

        if (!hasSave)
        {
            continueButtonText.color = Color.gray;
        }
    }

    public void NewGame()
    {
        GameSession.LoadSavedGame = false;

        SceneManager.LoadScene("Game");
    }

    public void ContinueGame()
    {
        if (!saveManager.HasSave())
            return;

        SaveData saveData = saveManager.LoadGame();

        if (saveData == null)
            return;

        mainMenuPanel.SetActive(false);
        continuePanel.SetActive(true);

        chapterText.text = GetChapterName(saveData.currentChapter);
        summaryText.text = saveData.dialogueText;
    }

    public void ConfirmContinue()
    {
        GameSession.LoadSavedGame = true;
        SceneManager.LoadScene("Game");
    }

    public void BackFromContinue()
    {
        continuePanel.SetActive(false);
        mainMenuPanel.SetActive(true);
    }

    public void Chapters()
    {
        Debug.Log("capítulos ");
    }

    public void QuitGame()
    {
        Debug.Log("salir del juego");
        Application.Quit();
    }

    private string GetChapterName(string chapter)
    {
        switch (chapter)
        {
            case "chapter_01":
                return "CAPÍTULO 1";

            case "chapter_02":
                return "CAPÍTULO 2";

            case "chapter_03":
                return "CAPÍTULO 3";

            default:
                return chapter;
        }
    }
}