SELECT ROW_NUMBER() OVER (ORDER BY art.level_6_full_code, r_root.no_dsrt, art.index1)      AS row_number,
       art.level_1_code                                                                    AS KODE_PROV,
       art.level_1_name                                                                    AS PROV,
       art.level_2_code                                                                    AS KODE_KAB,
       art.level_2_name                                                                    AS KAB,
       art.level_3_code                                                                    AS KODE_KEC,
       art.level_3_name                                                                    AS KEC,
       art.level_4_code                                                                    AS KODE_DESA,
       art.level_4_name                                                                    AS DESA,
       art.level_5_code                                                                    AS BS,
       art.level_6_code                                                                    AS NKS,
       r_root.no_dsrt                                                                      AS DSRT,
       art.index1                                                                          AS NO_ART,
       art.b4k2                                                                            AS NAMA_ART,
       CONCAT(
           -- Anomali 71
           CASE WHEN (
              art.b4k10 >= 5
              AND b5r6g_jml = 2
              AND (b5r6g1_kd IS NULL)
           ) THEN 'A71,' END,
           -- Anomali 72
           CASE WHEN (
              art.b4k10 >= 5
              AND b5r6g_jml = 2
              AND (b5r6g2_kd_value IS NULL)
           ) THEN 'A72,' END,
           -- Anomali 73
           CASE WHEN (
              art.b4k10 >= 5
              AND b5r6g_jml = 3
              AND (b5r6g1_kd IS NULL)
           ) THEN 'A73,' END,
           -- Anomali 74
           CASE WHEN (
              art.b4k10 >= 5
              AND b5r6g_jml = 3
              AND (b5r6g2_kd_value IS NULL)
           ) THEN 'A74,' END,
           -- Anomali 75
           CASE WHEN (
              art.b4k10 >= 5
              AND b5r6g_jml = 3
              AND (b5r6g3_kd_value IS NULL)
           ) THEN 'A75,' END,
           -- Anomali 76
           CASE WHEN (
              art.b4k10 >= 5
              AND b5r6g1_s_l = 'A'
              AND b5r6g1_s_kd_value IS NULL
           ) THEN 'A76,' END,
           -- Anomali 77
           CASE WHEN (
              art.b4k10 >= 5
              AND b5r6g2_s_l = 'A'
              AND b5r6g2_s_kd_value IS NULL
           ) THEN 'A77,' END,
           -- Anomali 78
           CASE WHEN (
              art.b4k10 >= 5
              AND b5r6g3_s_l = 'A'
              AND b5r6g3_s_kd_value IS NULL
           ) THEN 'A78,' END,
           -- Anomali 79
           CASE WHEN (
              art.b4k10 >= 5
              AND (b5r10a_value = 1 OR b5r10b_value = 1 OR b5r10c_value = 1 OR b5r11_value = 1)
              AND b5r15a_value IS NULL
           ) THEN 'A79,' END,
           -- Anomali 80
           CASE WHEN (
              art.b4k10 >= 5
              AND (b5r9a_value = 1 OR b5r9b1_value = 1 OR b5r9c1_value = 1 OR b5r10a_value = 1)
              AND b5r15b_value IS NULL
           ) THEN 'A80,' END,
           -- Anomali 81
           CASE WHEN (
              art.b4k10 >= 5
              AND b5r29_value = 1
              AND b5r33a_value IS NULL
           ) THEN 'A81,' END,
           -- Anomali 82
           CASE WHEN (
              art.b4k10 >= 5
              AND b5r29_value = 1
              AND b5r33b_value IS NULL
           ) THEN 'A82,' END,
           -- Anomali 83
           CASE WHEN (
              art.b4k10 >= 5
              AND b5r46a_value = 1
              AND b5r48a_value IS NULL
           ) THEN 'A83,' END,
           -- Anomali 84
           CASE WHEN (
              art.b4k10 >= 5
              AND b5r46a_value = 1
              AND b5r48b_value IS NULL
           ) THEN 'A84,' END,
           -- Anomali 85
           CASE WHEN (
              art.b4k10 >= 5
              AND b5r52b_value = 1
              AND b5r55a IS NULL
           ) THEN 'A85,' END,
           -- Anomali 86
           CASE WHEN (
              art.b4k10 >= 5
              AND b5r52b_value = 1
              AND b5r55b IS NULL
           ) THEN 'A86,' END,
           -- Anomali 87
           
           
           -- Anomali 88
           CASE WHEN (
              b5r2a_value = b5r1a
              AND (b5r22_value = 4 OR b5r25a_value = 3 OR b5r25b_value = 6 OR b5r25c_value = 3 OR b5r25d_value = 6 OR
                   b5r25e_value = 3 OR b5r25f_value = 6 OR b5r25g_value = 3 OR b5r25h_value = 6 OR b5r25i_value = 3)
           ) THEN 'A88,' END,
           -- Anomali 89
           CASE WHEN (
              art.b4k10 >= 5
              AND (b5r15b_value = 2310 OR b5r15b_value = 2320 OR b5r15b_value = 2330 OR b5r15b_value = 2341 OR
                   b5r15b_value = 2612 OR b5r15b_value = 3152 OR b5r15b_value = 3153 OR b5r15b_value = 3154 OR
                   b5r15b_value = 3118 OR b5r15b_value = 3155 OR b5r15b_value = 3315 OR b5r15b_value = 3323 OR
                   b5r15b_value = 3351 OR b5r15b_value = 3352 OR b5r15b_value = 3353 OR b5r15b_value = 3359 OR
                   b5r15b_value = 4131 OR b5r15b_value = 4211 OR b5r15b_value = 4213 OR b5r15b_value = 4223 OR
                   b5r15b_value = 4224 OR (b5r15b_value >= 4311 AND b5r15b_value <= 4419) OR b5r15b_value = 5120 OR
                   b5r15b_value = 5411 OR b5r15b_value = 5413 OR b5r15b_value = 5414 OR b5r15b_value = 8311 OR b5r15b_value = 8312)
              AND b5r14a_value IS NOT NULL
              AND b5r14a_value <> 4
           ) THEN 'A89,' END,
           -- Anomali 90
           CASE WHEN (
              art.b4k10 >= 5
              AND (b5r33b_value = 2310 OR b5r33b_value = 2320 OR b5r33b_value = 2330 OR b5r33b_value = 2341 OR
                   b5r33b_value = 2612 OR b5r33b_value = 3152 OR b5r33b_value = 3153 OR b5r33b_value = 3154 OR
                   b5r33b_value = 3118 OR b5r33b_value = 3155 OR b5r33b_value = 3315 OR b5r33b_value = 3323 OR
                   b5r33b_value = 3351 OR b5r33b_value = 3352 OR b5r33b_value = 3353 OR b5r33b_value = 3359 OR
                   b5r33b_value = 4131 OR b5r33b_value = 4211 OR b5r33b_value = 4213 OR b5r33b_value = 4223 OR
                   b5r33b_value = 4224 OR (b5r33b_value >= 4311 AND b5r33b_value <= 4419) OR b5r33b_value = 5120 OR
                   b5r33b_value = 5411 OR b5r33b_value = 5413 OR b5r33b_value = 5414 OR b5r33b_value = 8311 OR b5r33b_value = 8312)
              AND b5r33a_value IS NOT NULL
              AND b5r33a_value <> 4
           ) THEN 'A90,' END,
           -- Anomali 91
           CASE WHEN (
              art.b4k10 >= 5
              AND (b5r48b_value = 2310 OR b5r48b_value = 2320 OR b5r48b_value = 2330 OR b5r48b_value = 2341 OR
                   b5r48b_value = 2612 OR b5r48b_value = 3152 OR b5r48b_value = 3153 OR b5r48b_value = 3154 OR
                   b5r48b_value = 3118 OR b5r48b_value = 3155 OR b5r48b_value = 3315 OR b5r48b_value = 3323 OR
                   b5r48b_value = 3351 OR b5r48b_value = 3352 OR b5r48b_value = 3353 OR b5r48b_value = 3359 OR
                   b5r48b_value = 4131 OR b5r48b_value = 4211 OR b5r48b_value = 4213 OR b5r48b_value = 4223 OR
                   b5r48b_value = 4224 OR (b5r48b_value >= 4311 AND b5r48b_value <= 4419) OR b5r48b_value = 5120 OR
                   b5r48b_value = 5411 OR b5r48b_value = 5413 OR b5r48b_value = 5414 OR b5r48b_value = 8311 OR b5r48b_value = 8312)
              AND b5r47d_value IS NOT NULL
              AND b5r47d_value <> 4
           ) THEN 'A91,' END,
           -- Anomali 92
           CASE WHEN (
              art.b4k10 >= 5
              AND b4k3_value IS NOT NULL
              AND b4k3_value = 9
              AND (b5r15b_value <> 5120 OR b5r15b_value <> 5131 OR b5r15b_value <> 5151 OR b5r15b_value <> 5152 OR
                   b5r15b_value <> 5153 OR b5r15b_value <> 5162 OR b5r15b_value <> 5311 OR b5r15b_value <> 5321 OR
                   b5r15b_value <> 5322 OR b5r15b_value <> 5414 OR b5r15b_value <> 9111 OR b5r15b_value <> 9112 OR
                   b5r15b_value <> 9121 OR b5r15b_value <> 9122 OR b5r15b_value <> 9123 OR b5r15b_value <> 9129 OR
                   b5r15b_value <> 9411 OR b5r15b_value <> 9412 OR b5r15b_value <> 9613 OR b5r15b_value <> 9629)
           ) THEN 'A92,' END,
           -- Anomali 93
           CASE WHEN (
              art.b4k10 >= 5
              AND b4k3_value IS NOT NULL
              AND b4k3_value = 10
              AND (b5r15b_value <> 8321 OR b5r15b_value <> 8322 OR b5r15b_value <> 8331 OR b5r15b_value <> 8341 OR
                   b5r15b_value <> 9211 OR b5r15b_value <> 9212 OR b5r15b_value <> 9213 OR b5r15b_value <> 9214 OR
                   b5r15b_value <> 9215 OR b5r15b_value <> 9216 OR b5r15b_value <> 9631 OR b5r15b_value <> 9629)
           ) THEN 'A93,' END
         ) AS Anomali,
       CONCAT('<a href="https://fasih-sm.bps.go.id/survey-collection/assignment-detail/',
              art.assignment_id
           , '/105803db-5aed-4817-893a-e7d7e56cea5b" target="_blank">Link Assignment</a>') AS Link
FROM tln_cf698a83.art_roster art
         LEFT JOIN tln_cf698a83.root_table r_root
                   ON r_root.assignment_id = art.assignment_id
         LEFT JOIN tln_cf698a83.art_5th_1_roster r51
                   ON r51.assignment_id = art.assignment_id
                       AND r51.index1 = art.index1
         LEFT JOIN tln_cf698a83.art_5th_2_roster r52
                   ON r52.assignment_id = art.assignment_id
                       AND r52.index1 = art.index1
         LEFT JOIN tln_cf698a83.art_5th_3_roster r53
                   ON r53.assignment_id = art.assignment_id
                       AND r53.index1 = art.index1