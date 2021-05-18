.. _specifications:

Specifications
==============

.. _record-formats:

Record formats
--------------

.. _metadata-data-elements:

Metadata
^^^^^^^^

The Metadata table must be included in file uploads in order to identify
the type and version of the uploaded data.

.. csv-table:: Metadata record layout
   :file: record/metadata.csv
   :header-rows: 1

For this version of the specification the required content is shown in the
following table:

+--------------+-----------------+
| key          | value           |
+--------------+-----------------+
| type         | YES-INVITATIONS |
+--------------+-----------------+
| version      | 2               |
+--------------+-----------------+

----------

.. _invitation-data-elements:

Invitation
^^^^^^^^^^

Provider Organisation data is for administrative use within the PMHC MDS
system. It is managed by the PHN's via the PMHC MDS administrative interface,
it cannot be uploaded.

.. csv-table:: Invitation record layout
  :file: record/invitation.csv
  :header-rows: 1

-----

.. include:: include/definitions.rst


.. _data-specifications-download:

Download Specification Files
----------------------------

Available for software developers designing extracts for the PMHC MDS, please
click the link below to download the PMHC MDS Yes Invitations Specification files:

* `Specification zip <_static/pmhcmds-yes-invitations-spec-meta.zip>`_
