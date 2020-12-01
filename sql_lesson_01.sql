/* Задача 1 */
SELECT count(*)
FROM users_asup
WHERE stat2 = 3;

/* Задача 2 */
SELECT count(*)
FROM auth
WHERE last_login_date IS NOT NULL ;

/* Задача 3.1 */

SELECT tabnr FROM users_asup WHERE fullname = 'Студентов Гаврила Рубенович';

INSERT INTO  course_access_periods
        (user_id,
         course_id,
         start_at,
         end_at,
         notification,
         status,
         attempts_max,
         attempts_used,
         created_at,
         updated_at,
         assign,
         points,
         type,
         progress,
         passage_status
      )
VALUES (
        760464,
        8,
        '2020-11-11 11:11:11',
        '9999-12-31 23:59:59',
        false,
        1,
        1,
        1,
        '2020-10-11 11:11:11',
        '2020-10-11 11:11:11',
        0,
        90,
        0,
        100,
        2);

/* Задача 3.2   */
INSERT INTO course_sections (name, sort_order, course_id)
VALUES ('Секция 1', 1, 8);

/* Задача 3.3   */
SELECT id FROM course_access_periods WHERE course_id = 8 AND user_id = 760464;

INSERT INTO course_passages (user_id, course_id, access_id, status, created_at, updated_at, finished, points)
VALUES (760464, 8, 5, 0, '2020-10-02 12:23:57', '2020-11-10 12:23:55', true, 90);

/* Задача 3.4 */
SELECT id FROM course_sections WHERE course_id = 8;

INSERT INTO course_section_passages (
                                     user_id,
                                     section_id,
                                     status,
                                     created_at,
                                     updated_at,
                                     access_id,
                                     course_passage_id,
                                     active,
                                     points)
VALUES (760464, 1, 0, '2020-10-02 12:23:57', '2020-11-10 12:23:55',5,1, false, 90);

/* Задача 4 */
SELECT count(*)
FROM users_asup
GROUP BY stat2;

/* Задача 5 */
/*
* Думаю еще другим способом
*/
SELECT users_asup.fullname
FROM users_asup, users, auth
WHERE auth.user_id =  users.id AND users.snilsid = users_asup.snilsid AND auth.set_password_date < '2020-11-01'::date;

