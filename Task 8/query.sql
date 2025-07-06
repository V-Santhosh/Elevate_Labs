select * from Department;
select * from Room_Alloc;
select * from student;


-- Drop procedure if it exists
IF OBJECT_ID('add_student', 'P') IS NOT NULL
    DROP PROCEDURE add_student;
GO

-- Create the procedure to allocate same room for the student 211 as of 210
CREATE PROCEDURE add_student
AS
BEGIN
    DECLARE @v_room_number VARCHAR(50);

    SELECT @v_room_number = room_number
    FROM Room_Alloc
    WHERE student_id = 207;

	SELECT @v_room_number AS RoomNumber;

    INSERT INTO Room_Alloc VALUES (311,211,7, @v_room_number,'2023-06-01 10:00:00.000','2024-05-30','25000.00');

    SELECT 'Success' AS Status;
END;
GO

EXEC add_student;
