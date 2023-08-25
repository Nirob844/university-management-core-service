/*
  Warnings:

  - You are about to drop the `course_faculties` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "course_faculties" DROP CONSTRAINT "course_faculties_courseId_fkey";

-- DropForeignKey
ALTER TABLE "course_faculties" DROP CONSTRAINT "course_faculties_facultyId_fkey";

-- DropTable
DROP TABLE "course_faculties";

-- CreateTable
CREATE TABLE "courseFaculty" (
    "courseId" TEXT NOT NULL,
    "facultyId" TEXT NOT NULL,

    CONSTRAINT "courseFaculty_pkey" PRIMARY KEY ("courseId","facultyId")
);

-- AddForeignKey
ALTER TABLE "courseFaculty" ADD CONSTRAINT "courseFaculty_courseId_fkey" FOREIGN KEY ("courseId") REFERENCES "courses"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "courseFaculty" ADD CONSTRAINT "courseFaculty_facultyId_fkey" FOREIGN KEY ("facultyId") REFERENCES "faculties"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
