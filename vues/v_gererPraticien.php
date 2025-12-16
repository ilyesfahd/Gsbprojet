<div class="container mt-4 mb-5">

    <h1><?= ($_SESSION['habilitation'] == 1) ? 'Voir les praticiens' : 'Gérer les praticiens' ?></h1>

    <?php if (!empty($messageSucces)) : ?>
        <div class="alert alert-success">
            <?= htmlspecialchars($messageSucces) ?>
        </div>
    <?php endif; ?>

    <?php if (!empty($erreurs)) : ?>
        <div class="alert alert-danger">
            <ul>
                <?php foreach ($erreurs as $err) : ?>
                    <li><?= htmlspecialchars($err) ?></li>
                <?php endforeach; ?>
            </ul>
        </div>
    <?php endif; ?>

    <hr>

    <!-- 1 : Sélection d’un praticien dans une liste déroulante -->
    <form method="post" action="index.php?uc=praticiens&action=afficher" class="mb-4">
        <div class="mb-3">
            <p><strong>Trier par :</strong> 
                <a href="index.php?uc=praticiens&action=selection&tri=nom<?= isset($filtre) && $filtre === 'moi' ? '&filtre=moi' : '' ?>">Nom</a> | 
                <a href="index.php?uc=praticiens&action=selection&tri=num<?= isset($filtre) && $filtre === 'moi' ? '&filtre=moi' : '' ?>">Numéro</a>
            </p>
            <?php if ($_SESSION['habilitation'] == 2 || $_SESSION['habilitation'] == 3) : ?>
                <p><strong>Afficher :</strong> 
                    <a href="index.php?uc=praticiens&action=selection&tri=<?= $tri ?? 'nom' ?>">Tous</a> | 
                    <a href="index.php?uc=praticiens&action=selection&tri=<?= $tri ?? 'nom' ?>&filtre=moi">Modifiables</a>
                </p>
            <?php endif; ?>
        </div>

        <div class="mb-3">
            <label class="form-label" for="listePraticiens">Praticiens disponibles :</label>
            <select name="praticien" id="listePraticiens" class="form-select">
                <option value="">- Choisissez un praticien -</option>
                <?php foreach ($listePraticiens as $p) : ?>
                    <?php
                    $typeLibelle = '';
                    foreach ($listeTypes as $t) {
                        if ($t['TYP_CODE'] == $p['TYP_CODE']) {
                            $typeLibelle = $t['TYP_LIBELLE'];
                            break;
                        }
                    }
                    ?>
                    <option value="<?= htmlspecialchars($p['PRA_NUM']) ?>"
                        <?php if (!empty($praticien) && $praticien['PRA_NUM'] == $p['PRA_NUM']) echo 'selected'; ?>>
                        <?= htmlspecialchars($p['PRA_NOM'] . ' ' . $p['PRA_PRENOM']) ?>
                        (n°<?= $p['PRA_NUM'] ?>) - <?= htmlspecialchars($typeLibelle) ?>
                    </option>
                <?php endforeach; ?>
            </select>
        </div>

        <div>
            <button type="submit" class="btn btn-primary">Afficher les informations</button>
            <?php if ($_SESSION['habilitation'] == 2 || $_SESSION['habilitation'] == 3) : ?>
                <a href="index.php?uc=praticiens&action=nouveau" class="btn btn-secondary ms-2">+ Créer un nouveau praticien</a>
            <?php endif; ?>
        </div>
    </form>

    <!-- 2 : Affichage en mode consultation -->
    <?php if ($mode === 'consultation') : ?>
        <hr>
        <h2>Informations du praticien</h2>
        <p><strong>Numéro :</strong> <?= htmlspecialchars($praticien['PRA_NUM']) ?></p>
        <p><strong>Nom :</strong> <?= htmlspecialchars($praticien['PRA_NOM']) ?></p>
        <p><strong>Prénom :</strong> <?= htmlspecialchars($praticien['PRA_PRENOM']) ?></p>
        <p><strong>Adresse :</strong> <?= htmlspecialchars($praticien['PRA_ADRESSE'] ?? 'Non renseignée') ?></p>
        <p><strong>Code postal :</strong> <?= htmlspecialchars($praticien['PRA_CP']) ?></p>
        <p><strong>Ville :</strong> <?= htmlspecialchars($praticien['PRA_VILLE']) ?></p>
        <p><strong>Coef. notoriété :</strong> <?= htmlspecialchars($praticien['PRA_COEFNOTORIETE'] ?? 'Non renseigné') ?></p>
        <p><strong>Coef. confiance :</strong> <?= htmlspecialchars($praticien['PRA_COEFCONFIANCE'] ?? 'Non renseigné') ?></p>

        <?php
        $typeLibelle = '';
        foreach ($listeTypes as $t) {
            if ($t['TYP_CODE'] == $praticien['TYP_CODE']) {
                $typeLibelle = $t['TYP_LIBELLE'];
                break;
            }
        }
        ?>
        <p><strong>Type de praticien :</strong> <?= htmlspecialchars($typeLibelle . ' (' . $praticien['TYP_CODE'] . ')') ?></p>

        <p><strong>Spécialités :</strong><br>
        <?php if (!empty($specialitesPraticien)) : ?>
            <?php foreach ($specialitesPraticien as $spe) : ?>
                - <?= htmlspecialchars($spe['SPE_LIBELLE']) ?> (<?= !empty($spe['POS_DIPLOME']) ? htmlspecialchars($spe['POS_DIPLOME']) : 'Non renseigné' ?>)<br>
            <?php endforeach; ?>
        <?php else : ?>
            Aucune spécialité renseignée
        <?php endif; ?>
        </p>

        <div class="mt-4">
            <?php if ($_SESSION['habilitation'] == 2 || $_SESSION['habilitation'] == 3) : ?>
                <a href="index.php?uc=praticiens&action=modifier&num=<?= $praticien['PRA_NUM'] ?>" class="btn btn-primary">Modifier</a>
            <?php endif; ?>
            <a href="index.php?uc=praticiens&action=selection" class="btn btn-danger ms-2">Retour à la liste</a>
        </div>
    <?php endif; ?>

    <!-- 3-4 : Formulaire de saisie / modification -->
    <?php if ($mode === 'creation' || $mode === 'modification') : ?>
        <hr>
        <h2><?= ($mode === 'creation') ? 'Création d\'un praticien' : 'Modification du praticien' ?></h2>

        <form method="post" action="index.php?uc=praticiens&action=enregistrer">
            <input type="hidden" name="mode" value="<?= htmlspecialchars($mode) ?>">

            <?php if ($mode === 'modification') : ?>
                <div class="mb-3">
                    <label for="PRA_NUM" class="form-label">Numéro *</label>
                    <input type="number" name="PRA_NUM" id="PRA_NUM" class="form-control" min="1"
                           value="<?= htmlspecialchars($praticien['PRA_NUM'] ?? '') ?>" readonly>
                </div>
            <?php endif; ?>

            <div class="mb-3">
                <label for="PRA_NOM" class="form-label">Nom *</label>
                <input type="text" name="PRA_NOM" id="PRA_NOM" class="form-control" maxlength="50"
                       value="<?= htmlspecialchars($praticien['PRA_NOM'] ?? '') ?>">
            </div>

            <div class="mb-3">
                <label for="PRA_PRENOM" class="form-label">Prénom *</label>
                <input type="text" name="PRA_PRENOM" id="PRA_PRENOM" class="form-control" maxlength="50"
                       value="<?= htmlspecialchars($praticien['PRA_PRENOM'] ?? '') ?>">
            </div>

            <div class="mb-3">
                <label for="PRA_ADRESSE" class="form-label">Adresse</label>
                <input type="text" name="PRA_ADRESSE" id="PRA_ADRESSE" class="form-control" maxlength="100"
                       value="<?= htmlspecialchars($praticien['PRA_ADRESSE'] ?? '') ?>">
            </div>

            <div class="mb-3">
                <label for="PRA_CP" class="form-label">Code postal *</label>
                <input type="text" name="PRA_CP" id="PRA_CP" class="form-control" maxlength="5" pattern="[0-9]{5}" title="5 chiffres requis"
                       value="<?= htmlspecialchars($praticien['PRA_CP'] ?? '') ?>">
            </div>

            <div class="mb-3">
                <label for="PRA_VILLE" class="form-label">Ville *</label>
                <input type="text" name="PRA_VILLE" id="PRA_VILLE" class="form-control" maxlength="50"
                       value="<?= htmlspecialchars($praticien['PRA_VILLE'] ?? '') ?>">
            </div>

            <div class="mb-3">
                <label for="PRA_COEFNOTORIETE" class="form-label">Coef. notoriété</label>
                <input type="number" step="0.01" min="0" name="PRA_COEFNOTORIETE" id="PRA_COEFNOTORIETE" class="form-control"
                       value="<?= htmlspecialchars($praticien['PRA_COEFNOTORIETE'] ?? '') ?>">
            </div>

            <div class="mb-3">
                <label for="PRA_COEFCONFIANCE" class="form-label">Coef. confiance</label>
                <input type="number" step="0.01" min="0" name="PRA_COEFCONFIANCE" id="PRA_COEFCONFIANCE" class="form-control"
                       value="<?= htmlspecialchars($praticien['PRA_COEFCONFIANCE'] ?? '') ?>">
            </div>

            <div class="mb-3">
                <label for="TYP_CODE" class="form-label">Type de praticien *</label>
                <select name="TYP_CODE" id="TYP_CODE" class="form-select">
                    <option value="">- Choisissez un type -</option>
                    <?php foreach ($listeTypes as $t) : ?>
                        <option value="<?= htmlspecialchars($t['TYP_CODE']) ?>"
                            <?php
                            if (!empty($praticien) && $praticien['TYP_CODE'] == $t['TYP_CODE']) {
                                echo 'selected';
                            }
                            ?>>
                            <?= htmlspecialchars($t['TYP_LIBELLE'] . ' (' . $t['TYP_CODE'] . ')') ?>
                        </option>
                    <?php endforeach; ?>
                </select>
            </div>

            <div class="mb-3">
                <label class="form-label">Spécialités (optionnel - sélection multiple)</label>
                <?php
                $specialitesSelectionnees = [];
                if (!empty($specialitesPraticien)) {
                    foreach ($specialitesPraticien as $spe) {
                        $specialitesSelectionnees[] = $spe['SPE_CODE'];
                    }
                }
                ?>
                <div class="border p-2">
                    <?php foreach ($listeSpecialites as $spe) : ?>
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" 
                                   name="specialites[]" 
                                   value="<?= htmlspecialchars($spe['SPE_CODE']) ?>"
                                   id="spe_<?= htmlspecialchars($spe['SPE_CODE']) ?>"
                                   <?php if (in_array($spe['SPE_CODE'], $specialitesSelectionnees)) echo 'checked'; ?>>
                            <label class="form-check-label" for="spe_<?= htmlspecialchars($spe['SPE_CODE']) ?>">
                                <?= htmlspecialchars($spe['SPE_LIBELLE']) ?> (<?= htmlspecialchars($spe['SPE_CODE']) ?>)
                            </label>
                        </div>
                    <?php endforeach; ?>
                </div>
            </div>

            <p class="text-muted">Les champs marqués d'un * sont obligatoires.</p>

            <button type="submit" name="btn" value="valider" class="btn btn-success">Valider</button>
            <button type="submit" name="btn" value="annuler" class="btn btn-danger ms-2">Annuler</button>
        </form>
    <?php endif; ?>

</div>

