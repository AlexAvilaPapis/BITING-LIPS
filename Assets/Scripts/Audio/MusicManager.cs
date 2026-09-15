using UnityEngine;
using System.Collections;

public class MusicManager : MonoBehaviour
{
    [Header("Music")]
    [SerializeField] private AudioSource musicSource;

    [SerializeField] private float musicVolume = 0.25f;
    [SerializeField] private float fadeDuration = 1.5f;

    private AudioClip currentMusic;
    private Coroutine fadeCoroutine;

    public void PlayMusic(string musicName)
    {
        AudioClip newMusic = Resources.Load<AudioClip>(
            "music/" + musicName
        );

        if (newMusic == null)
        {
            Debug.LogWarning(
                "No se encontró la música: " + musicName
            );
            return;
        }

        if (currentMusic == newMusic)
            return;

        currentMusic = newMusic;

        if (fadeCoroutine != null)
        {
            StopCoroutine(fadeCoroutine);
        }

        fadeCoroutine = StartCoroutine(
            ChangeMusic(newMusic)
        );
    }

    private IEnumerator ChangeMusic(AudioClip newMusic)
    {
        float startVolume = musicSource.volume;

        // Fade out
        while (musicSource.volume > 0)
        {
            musicSource.volume -=
                startVolume * Time.deltaTime / fadeDuration;

            yield return null;
        }

        musicSource.Stop();

        musicSource.clip = newMusic;
        musicSource.loop = true;

        musicSource.Play();

        // Fade in
        while (musicSource.volume < musicVolume)
        {
            musicSource.volume +=
                musicVolume * Time.deltaTime / fadeDuration;

            yield return null;
        }

        musicSource.volume = musicVolume;
    }

    public void StopMusic()
    {
        if (fadeCoroutine != null)
        {
            StopCoroutine(fadeCoroutine);
        }

        fadeCoroutine = StartCoroutine(FadeOutMusic());
    }

    private IEnumerator FadeOutMusic()
    {
        float startVolume = musicSource.volume;

        while (musicSource.volume > 0)
        {
            musicSource.volume -=
                startVolume * Time.deltaTime / fadeDuration;

            yield return null;
        }

        musicSource.Stop();
        musicSource.volume = musicVolume;
        currentMusic = null;
    }
}