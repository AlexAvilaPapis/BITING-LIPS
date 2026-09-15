using UnityEngine;
using UnityEngine.UI;
using TMPro;

public class MessageManager : MonoBehaviour
{
    [Header("Normal Dialogue")]
    [SerializeField] private GameObject dialoguePanel;

    [Header("Phone")]
    [SerializeField] private GameObject phonePanel;
    [SerializeField] private Transform messageContainer;
    [SerializeField] private ScrollRect messageScrollRect;

    [Header("Phone Thoughts")]
    [SerializeField] private GameObject phoneThoughtPanel;
    [SerializeField] private TMP_Text phoneThoughtText;

    [Header("Message Prefabs")]
    [SerializeField] private GameObject receivedMessagePrefab;
    [SerializeField] private GameObject sentMessagePrefab;

    [Header("Contact")]
    [SerializeField] private Image contactPortrait;
    [SerializeField] private TMP_Text contactName;

    public void StartPhone()
    {
        phonePanel.SetActive(true);

        if (dialoguePanel != null)
            dialoguePanel.SetActive(false);

        HidePhoneThought();
        ClearMessages();
    }

    public void ShowMessage(
        string senderID,
        string contactNameText,
        string message)
    {
        phonePanel.SetActive(true);

        if (dialoguePanel != null)
            dialoguePanel.SetActive(false);

        HidePhoneThought();

        if (contactName != null)
            contactName.text = contactNameText;

        UpdateContactPortrait(senderID);

        GameObject newMessage =
            Instantiate(receivedMessagePrefab, messageContainer);

        TMP_Text messageText =
            newMessage.GetComponentInChildren<TMP_Text>();

        if (messageText != null)
            messageText.text = message;

        ScrollToBottom();
    }

    public void ShowPlayerMessage(string message)
    {
        phonePanel.SetActive(true);

        if (dialoguePanel != null)
            dialoguePanel.SetActive(false);

        HidePhoneThought();

        GameObject newMessage =
            Instantiate(sentMessagePrefab, messageContainer);

        TMP_Text messageText =
            newMessage.GetComponentInChildren<TMP_Text>();

        if (messageText != null)
            messageText.text = message;

        ScrollToBottom();
    }

    public void ShowPhoneThought(string thought)
    {
        phonePanel.SetActive(true);

        if (dialoguePanel != null)
            dialoguePanel.SetActive(false);

        if (phoneThoughtPanel != null)
            phoneThoughtPanel.SetActive(true);

        if (phoneThoughtText != null)
            phoneThoughtText.text = thought;
    }

    public void HidePhoneThought()
    {
        if (phoneThoughtPanel != null)
            phoneThoughtPanel.SetActive(false);
    }

    private void UpdateContactPortrait(string senderID)
    {
        if (contactPortrait == null)
            return;

        Sprite portrait = Resources.Load<Sprite>("phone/ui/" + senderID + "_photo");

        if (portrait != null)
            contactPortrait.sprite = portrait;
    }

    public void EndPhone()
    {
        HidePhoneThought();

        if (phonePanel != null)
            phonePanel.SetActive(false);

        if (dialoguePanel != null)
            dialoguePanel.SetActive(true);
    }

    public void ClearMessages()
    {
        if (messageContainer == null)
            return;

        foreach (Transform child in messageContainer)
        {
            Destroy(child.gameObject);
        }
    }

    private void ScrollToBottom()
    {
        Canvas.ForceUpdateCanvases();

        if (messageScrollRect != null)
            messageScrollRect.verticalNormalizedPosition = 0f;
    }

    public void ResetPhone()
    {
        ClearMessages();
        EndPhone();
    }
}