Definitions
-----------

.. _dfn-client_key:

Client Key
^^^^^^^^^^

This is a number or code assigned to each individual client referred to the commissioned organisation. The client identifier is unique and stable for each individual within the Provider Organisation.

:Field name: client_key

:Data type: string (2,50)

:Required: yes

----------

.. _dfn-email:

Email
^^^^^

The email address of the client.

:Field name: email

:Data type: string

:Required: no
:Notes:
  Either a mobile number or an email address must be provided for each client so
  that a link can be sent to the client inviting them to complete a YES PHN survey.
  
  After the invitation has been sent, the email address will be discarded.
  

----------

.. _dfn-episode_completion_status:

Episode - Completion Status
^^^^^^^^^^^^^^^^^^^^^^^^^^^

An indication of the completion status of an *Episode of Care*.

:Field name: episode_completion_status

:Data type: string

:Required: no

:Domain:
  :0: Episode open
  :1: Episode closed - treatment concluded
  :2: Episode closed administratively - client could not be contacted
  :3: Episode closed administratively - client declined further contact
  :4: Episode closed administratively - client moved out of area
  :5: Episode closed administratively - client referred elsewhere
  :6: Episode closed administratively - other reason

----------

.. _dfn-episode_end_date:

Episode - End Date
^^^^^^^^^^^^^^^^^^

The date on which an *Episode of Care* is formally or administratively ended

:Field name: episode_end_date

:Data type: date

:Required: no
:Notes:
  - The episode end date must not be before 1st January 2016.
  
  - The episode end date must not be in the future.
  

:METeOR: `614094 <http://meteor.aihw.gov.au/content/index.phtml/itemId/614094>`__

----------

.. _dfn-episode_key:

Episode Key
^^^^^^^^^^^

This is a number or code assigned to each episode. The Episode Key is unique and stable for each episode at the level of the Provider Organisation.

:Field name: episode_key

:Data type: string (2,50)

:Required: yes
:Notes:
  See `Episode Key <https://docs.pmhc-mds.com/projects/data-specification/en/v2/data-model-and-specifications.html#episode-key>`_.
  

----------

.. _dfn-key:

Key
^^^

A metadata key name.

:Field name: key

:Data type: string

:Required: yes

----------

.. _dfn-mobile_number:

Mobile Number
^^^^^^^^^^^^^

The mobile phone number of the client.

:Field name: mobile_number

:Data type: string

:Required: no
:Notes:
  Either a mobile number or an email address must be provided for each client so
  that a link can be sent to the client inviting them to complete a YES PHN survey.
  
  After the invitation has been sent, the mobile number will be discarded.
  

----------

.. _dfn-organisation_path:

Organisation Path
^^^^^^^^^^^^^^^^^

A sequence of colon separated Organisation Keys that fully specifies the Provider Organisation providing a service to the client.

:Field name: organisation_path

:Data type: string

:Required: yes
:Notes:
  A combination of the Primary Health Network's (PHN's) Organisation Key and the
  Provider Organisation's Organisation Key separated by a colon.
  
  Here is an example organisation structure showing the Organisation Path for each organisation:
  
  +------------------+-------------------------------+---------------------------------------------+----------------------------+-------------------+
  | Organisation Key | Organisation Name             | Organisation Type                           | Commissioning Organisation | Organisation Path |
  +==================+===============================+=============================================+============================+===================+
  | PHN999           | Test PHN                      | Primary Health Network                      | None                       | PHN999            |
  +------------------+-------------------------------+---------------------------------------------+----------------------------+-------------------+
  | PO101            | Test Provider Organisation    | Private Allied Health Professional Practice | PHN999                     | PHN999:PO101      |
  +------------------+-------------------------------+---------------------------------------------+----------------------------+-------------------+
  

----------

.. _dfn-value:

Value
^^^^^

The metadata value.

:Field name: value

:Data type: string

:Required: yes

----------

