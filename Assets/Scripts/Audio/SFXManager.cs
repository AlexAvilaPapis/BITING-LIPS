using UnityEngine;

public class SFXManager : MonoBehaviour
{
    [SerializeField] private AudioSource audioSource;

    public void PlaySFX(string soundName)
    {
        AudioClip clip = Resources.Load<AudioClip>(
            "sfx/" + soundName
        );

        if (clip != null)
        {
            audioSource.PlayOneShot(clip);
        }
        else
        {
            Debug.LogWarning(
                "no: sfx/" + soundName
            );
        }
    }
}