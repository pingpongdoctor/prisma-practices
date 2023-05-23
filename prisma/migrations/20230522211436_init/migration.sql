-- DropForeignKey
ALTER TABLE `UserGeneralInfo` DROP FOREIGN KEY `UserGeneralInfo_profileId_fkey`;

-- AddForeignKey
ALTER TABLE `UserGeneralInfo` ADD CONSTRAINT `UserGeneralInfo_profileId_fkey` FOREIGN KEY (`profileId`) REFERENCES `UserProfile`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
