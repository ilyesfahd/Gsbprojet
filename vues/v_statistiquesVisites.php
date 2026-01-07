<?php
// Affichage du message de succès en session si présent
if (isset($_SESSION['message_succes_stats'])) {
    $messageSucces = $_SESSION['message_succes_stats'];
    unset($_SESSION['message_succes_stats']);
}
?>

<div class="container mt-4 mb-5">
    <h1><?php echo htmlspecialchars($titrePage); ?></h1>

    <!-- Message de succès -->
    <?php if (!empty($messageSucces)) : ?>
        <div class="alert alert-success">
            <?php echo htmlspecialchars($messageSucces); ?>
        </div>
    <?php endif; ?>

    <!-- Affichage des erreurs -->
    <?php if (!empty($erreurs)) : ?>
        <div class="alert alert-danger">
            <ul>
                <?php foreach ($erreurs as $erreur) : ?>
                    <li><?php echo htmlspecialchars($erreur); ?></li>
                <?php endforeach; ?>
            </ul>
        </div>
    <?php endif; ?>

    <hr>

    <form method="post" action="index.php?uc=rapports&action=statistiques" class="mb-4">
        <p><strong>Critères de recherche</strong></p>
        <div class="row g-3">
            <div class="col-md-4">
                <label for="date_debut" class="form-label">Date de début *</label>
                <input type="date" class="form-control" id="date_debut" name="date_debut" 
                       value="<?php echo htmlspecialchars($dateDebut ?? ''); ?>" required>
            </div>
            <div class="col-md-4">
                <label for="date_fin" class="form-label">Date de fin *</label>
                <input type="date" class="form-control" id="date_fin" name="date_fin" 
                       value="<?php echo htmlspecialchars($dateFin ?? ''); ?>" required>
            </div>
            <div class="col-md-4">
                <label for="medicament" class="form-label">Médicament (optionnel)</label>
                <select class="form-select" id="medicament" name="medicament">
                    <option value="">-- Tous --</option>
                    <?php foreach ($listeMedicaments as $med) : ?>
                        <option value="<?php echo htmlspecialchars($med['MED_DEPOTLEGAL']); ?>"
                                <?php echo ($medDepotLegal == $med['MED_DEPOTLEGAL']) ? 'selected' : ''; ?>>
                            <?php echo htmlspecialchars($med['MED_NOMCOMMERCIAL']); ?>
                        </option>
                    <?php endforeach; ?>
                </select>
            </div>
        </div>
        <div class="mt-3">
            <button type="submit" class="btn btn-primary">Chercher</button>
            <a href="index.php?uc=rapports&action=statistiques" class="btn btn-secondary">Réinitialiser</a>
        </div>
    </form>

    <?php if ($rechercheEffectuee) : ?>
        <hr>
        <h5>Résultats</h5>
        <?php if (!empty($statistiques)) : ?>
            <p>Période du <?php echo date('d/m/Y', strtotime($dateDebut)); ?> au <?php echo date('d/m/Y', strtotime($dateFin)); ?></p>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>Médicament</th>
                        <th>Famille</th>
                        <th>Quantité</th>
                        <th>Visites</th>
                        <th>Moyenne/visite</th>
                    </tr>
                </thead>
                <tbody>
                    <?php foreach ($statistiques as $stat) : ?>
                        <tr>
                            <td><?php echo htmlspecialchars($stat['MED_NOMCOMMERCIAL']); ?></td>
                            <td><?php echo htmlspecialchars($stat['FAM_LIBELLE']); ?></td>
                            <td><?php echo $stat['TOTAL_QUANTITE']; ?></td>
                            <td><?php echo $stat['NB_VISITES']; ?></td>
                            <td><?php echo round($stat['TOTAL_QUANTITE'] / $stat['NB_VISITES'], 1); ?></td>
                        </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>
        <?php else : ?>
            <p>Aucun résultat pour cette période.</p>
        <?php endif; ?>
    <?php endif; ?>
</div>
