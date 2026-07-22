# Prompty

Prompty, których realnie używam – w pracy i prywatnie. Po polsku, gotowe do skopiowania i przerobienia pod siebie.

To nie jest kolekcja „100 najlepszych promptów". Trafia tu tylko to, co przeszło próbę na prawdziwym zadaniu i co da się komuś oddać bez tłumaczenia, o co chodziło.

---

## Dla kogo to jest

Dla osób, które używają modeli językowych do konkretnej roboty i mają dość odpowiedzi pasujących do wszystkich i do nikogo. Nie musisz umieć programować – w tym repozytorium nie ma ani jednej linijki kodu. Są instrukcje po polsku, do wklejenia.

---

## Jak z tego korzystać

1. Wejdź do katalogu wybranego promptu i otwórz `README.md`.
2. Skopiuj zawartość bloku z instrukcją.
3. Wklej ją tam, gdzie Twoje narzędzie trzyma instrukcje stałe – nie do zwykłej wiadomości:
   - **Claude** – Projects → Project instructions, albo Custom Style
   - **ChatGPT** – Custom GPT → Instructions, albo Projects → Instrukcje
   - **Gemini** – Gems → Instructions
4. Zacznij rozmowę normalnie. Prompt sam poprowadzi Cię przez pytania.

Różnica między wklejeniem instrukcji do wiadomości a wpisaniem jej w instrukcje stałe jest istotna. W pierwszym wypadku model traktuje ją jak jedną z wielu rzeczy w rozmowie i po kilku wymianach o niej zapomina. W drugim – obowiązuje przez całą rozmowę.

---

## Szkielet, według którego są zbudowane

Każdy prompt tutaj ma tę samą strukturę pięciu bloków. Jeśli piszesz własny, ten szkielet jest ważniejszy niż którykolwiek gotowiec z tego repozytorium.

**1. Rola i ton.** Kim ma być asystent i jak ma mówić. Nie „jesteś pomocnym asystentem", tylko konkretna rola z konkretną wiedzą, plus jedno zdanie o tym, w jakiej sytuacji jest człowiek po drugiej stronie.

**2. Bramka na kontekst.** Lista informacji, bez których asystent nie ma prawa odpowiedzieć, i wyraźny zakaz przechodzenia dalej, zanim ich nie zbierze. To jest blok, który robi największą różnicę, i jednocześnie ten, który ludzie pomijają najczęściej. Bez niego dostajesz odpowiedź średnią dla wszystkich.

**3. Obowiązek weryfikacji.** Gdzie ma sprawdzić fakty, czego nie wolno mu wygenerować z pamięci (adresy stron, liczby, nazwy) i co ma zrobić, gdy nie ma dostępu do źródła. Odpowiedź „nie jestem pewien, sprawdź tutaj" jest użyteczna. Zmyślony link nie jest.

**4. Stały format wyniku.** Ta sama struktura dla każdej pozycji odpowiedzi. Dzięki temu wyniki da się porównać, a nie tylko przeczytać.

**5. Ograniczenia.** Czego nie wolno: preferowania jednej opcji, wchodzenia w tematy poza zakresem, decydowania za użytkownika. Wiarygodność asystenta bierze się z tego, czego mu zabronisz, nie z tego, jaki model wybierzesz.

---

## Katalog

| Prompt | Co robi | Język |
|---|---|---|
| [Asystent wyboru kierunku studiów](prompty/asystent-wyboru-kierunku-studiow/) | Prowadzi kandydata na studia przez cztery pytania o zainteresowania, mocne przedmioty, tryb i miasto, po czym wyszukuje realne kierunki na realnych uczelniach i szereguje je według dopasowania, z uzasadnieniem odwołanym do tego, co kandydat powiedział | polski |

Katalog będzie rósł. Kolejne pozycje dochodzą wtedy, gdy przejdą próbę na prawdziwym zadaniu – nie wcześniej.

---

## Jak przerobić prompt pod siebie

Weź dowolny prompt z tego repozytorium i podmień dziedzinę, zostawiając szkielet. Konkretnie:

- **Zmień rolę** w bloku 1 na eksperta w Twojej dziedzinie.
- **Wymień pytania z bramki** w bloku 2 na te, które Ty zadałbyś człowiekowi, gdyby przyszedł do Ciebie z tym problemem. To jest jedyny fragment, który wymaga realnego namysłu. Jeśli nie umiesz wypisać tych pytań, prompt Ci nie pomoże – bo problem nie jest jeszcze zrozumiany.
- **Wskaż swoje źródła prawdy** w bloku 3: rejestr, dokumentacja, wewnętrzny standard.
- **Format wyjścia** w bloku 4 ustaw tak, żeby dało się na jego podstawie podjąć decyzję.

Asystent wyboru studiów przerabia się w ten sposób na kwalifikację zgłoszenia serwisowego, przegląd architektury czy wstępny wybór dostawcy. Zmienia się treść, nie konstrukcja.

---

## Czego tu nie ma

Promptów związanych z moją pracą zawodową i promptów zawierających cokolwiek osobistego. Te zostają w prywatnym repozytorium i nie ma planu ich publikacji. Jeśli któryś prompt wygląda na okrojony – nie wygląda. Publikuję tylko całe pliki albo wcale.

---

## Uwagi i propozycje

Zauważyłeś błąd, prompt zachował się inaczej, niż opisuję, albo przerobiłeś któryś pod swoją dziedzinę i wyszło lepiej? Załóż Issue. Interesuje mnie zwłaszcza to, gdzie prompty się psują – opis nieudanej rozmowy jest dla mnie bardziej wartościowy niż pochwała.

Pull requesty z poprawkami literowymi i redakcyjnymi: mile widziane, wystarczy PR. Pull requesty dodające nowe prompty: najpierw Issue z opisem, bo do katalogu trafia tylko to, czego sam używam.

---

## Licencja

[CC BY 4.0](LICENSE). Bierz, używaj, przerabiaj, także komercyjnie. Jedyny warunek to podanie autorstwa.

---

## Autor

Lukasz945 – piszę o wszystkim i o niczym, czyli AI, IT, EA, korpo itp.
