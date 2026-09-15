using UnityEngine;
using TMPro;
using UnityEngine.UI;
using System;

public class NameInputManager : MonoBehaviour
{
    [Header("UI")]
    [SerializeField] private GameObject nameInputPanel;
    [SerializeField] private TMP_InputField nameInputField;
    [SerializeField] private Button confirmButton;

    public Action<string> OnNameConfirmed;

    private void Start()
    {
        confirmButton.onClick.AddListener(ConfirmName);

        nameInputPanel.SetActive(false);
    }

    public void ShowNameInput()
    {
        nameInputPanel.SetActive(true);

        nameInputField.text = "";

        nameInputField.Select();
        nameInputField.ActivateInputField();
    }

    private void ConfirmName()
    {
        string playerName = nameInputField.text.Trim();

        if (string.IsNullOrEmpty(playerName))
            return;

        nameInputPanel.SetActive(false);

        OnNameConfirmed?.Invoke(playerName);
    }

    public bool IsNameInputVisible()
    {
        return nameInputPanel.activeSelf;
    }

    private void OnDestroy()
    {
        confirmButton.onClick.RemoveListener(ConfirmName);
    }
}