/*
  Warnings:

  - You are about to drop the `offered_course_sections` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "offered_course_sections" DROP CONSTRAINT "offered_course_sections_offeredCourseId_fkey";

-- DropForeignKey
ALTER TABLE "offered_course_sections" DROP CONSTRAINT "offered_course_sections_semesterRegistrationId_fkey";

-- DropTable
DROP TABLE "offered_course_sections";
