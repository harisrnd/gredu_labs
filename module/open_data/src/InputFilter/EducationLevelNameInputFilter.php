<?php
/**
 * gredu_labs
 *
 * @link https://github.com/eellak/gredu_labs for the canonical source repository
 * @copyright Copyright (c) 2008-2015 Greek Free/Open Source Software Society (https://gfoss.ellak.gr/)
 * @license GNU GPLv3 http://www.gnu.org/licenses/gpl-3.0-standalone.html
 */
namespace GrEduLabs\OpenData\InputFilter;

use Zend\Filter;
use Zend\InputFilter\Input;
use Zend\InputFilter\InputFilter;
use Zend\Validator;
use RedBeanPHP\R;

class EducationLevelNameInputFilter extends InputFilter
{

    public function __construct()
    {
        $name = new Input('name');

        $name->setRequired(false)
            ->getFilterChain()
            ->attach(new Filter\StripNewlines())
            ->attach(new Filter\PregReplace([
                'pattern' => '/[^a-zA-Zα-ζΑ-Ζ0-9\s\.\-_]/',
                'replacement' => '',
        ]));

        $name->getValidatorChain()
            ->attach(new Validator\NotEmpty())
            ->attach(new Validator\Callback([
                'message' => 'Η βαθμίδα εκπαίδευσης δεν υπάρχει',
                'callback' => function ($value) {
                    $exists = R::getCol('select distinct name from educationlevel where name = :name', [':name' => $value]);
                    if (!$exists) {
                        return false;
                    } else {
                        return true;
                    }
                }
            ]));

        $this->add($name);
    }
}
