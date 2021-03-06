SELECT public.lecturers.name AS "Lecturer", COUNT (public.subjects.name) AS "Count subjects"
	from public.subjects JOIN public.lecturers ON public.subjects.id_lecturer=public.lecturers.id_lecturer
    GROUP BY public.lecturers.name
    HAVING COUNT(public.subjects.name)>=2
    ORDER BY COUNT (public.subjects.name) DESC