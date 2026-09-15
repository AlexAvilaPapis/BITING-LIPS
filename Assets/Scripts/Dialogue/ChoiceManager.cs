using UnityEngine;
using TMPro;
using Ink.Runtime;
using UnityEngine.UI;
using System;

public class ChoiceManager : MonoBehaviour
{
    [Header("Choices")]
    [SerializeField] private GameObject choicesPanel;

    [SerializeField] private Button choicePrefab1;
    [SerializeField] private Button choicePrefab2;
    [SerializeField] private Button choicePrefab3;

    public Action<int> OnChoiceSelected;

    public void DisplayChoices(Story story)
    {
        ClearChoices();

        choicesPanel.SetActive(true);

        for (int i = 0; i < story.currentChoices.Count; i++)
        {
            Choice choice = story.currentChoices[i];

            Button prefab;

            switch (i)
            {
                case 0:
                    prefab = choicePrefab1;
                    break;

                case 1:
                    prefab = choicePrefab2;
                    break;

                default:
                    prefab = choicePrefab3;
                    break;
            }

            Button button = Instantiate(
                prefab,
                choicesPanel.transform
            );

            button.GetComponentInChildren<TextMeshProUGUI>().text =
                choice.text;

            int choiceIndex = choice.index;

            button.onClick.AddListener(() =>
            {
                OnChoiceSelected?.Invoke(choiceIndex);
            });
        }
    }

    public void ClearChoices()
    {
        foreach (Transform child in choicesPanel.transform)
        {
            Destroy(child.gameObject);
        }

        choicesPanel.SetActive(false);
    }
}