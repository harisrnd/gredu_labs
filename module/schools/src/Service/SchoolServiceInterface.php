<?php
/**
 * gredu_labs
 * 
 * @link https://github.com/eellak/gredu_labs for the canonical source repository
 * @copyright Copyright (c) 2008-2015 Greek Free/Open Source Software Society (https://gfoss.ellak.gr/)
 * @license GNU GPLv3 http://www.gnu.org/licenses/gpl-3.0-standalone.html
 */

namespace GrEduLabs\Schools\Service;

interface SchoolServiceInterface
{
    public function createSchool(array $data);
    public function getSchool($id);
    public function findSchoolByRegistryNo($registryNo);
}
