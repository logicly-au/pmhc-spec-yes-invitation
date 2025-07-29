.. _upload_specification:

Upload specification
====================

.. _file-requirements:

File requirements
-----------------
Uploads will be rejected by our incoming data scanning system if they do not
meet the following requirements:

* Must be either an :ref:`Excel Workbook (.xlsx) <excel-workbook>`,
* OR a :ref:`zip (.zip) file containing CSV files <csv-zip>`,
* AND must be :ref:`less than 512MB <file-size>`

.. _excel-workbook:

Excel Workbook (XLSX)
^^^^^^^^^^^^^^^^^^^^^
Excel files must be in XLSX format. xcel 2007 (v12.0) and above support this
file format.

One XLSX file must be uploaded containing multiple worksheets - one worksheet
for each format described :ref:`below <files-to-upload>`.

When saving your file, please choose the filetype 'Excel Workbook (.xlsx)'.

The filename of the Excel file doesn't matter as long as it has the file
extension .xlsx

.. _csv-zip:

Zip file containing Comma Separated Values (CSV)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The CSV files must conform to `RFC 4180 <https://www.ietf.org/rfc/rfc4180.txt>`__.

In addition, CSV files must be created using UTF-8 character encoding.

CSV files must have the file extension .csv

Multiple CSV files must be uploaded - one CSV file for each format described
:ref:`below <files-to-upload>`.

The CSV files must be compressed into a single file by zipping before upload. The
filename of the zip file doesn't matter as long as it has the file
extension .zip

.. _file-size:

File size
^^^^^^^^^
Files must be less than 512MB. The file size restriction prevents our systems
from becoming unstable if extremely large files are uploaded. We will monitor
if this limit causes issues for anyone and adjust it if necessary.

.. _files-to-upload:

Files or worksheets to upload
-----------------------------
The following files/worksheets can be uploaded to the PMHC MDS:

.. csv-table:: Summary of files to upload
  :file: upload-file-types.csv
  :header-rows: 1

Example upload files can be found at :ref:`example-upload-file`.

.. _file-format:

File format
-----------
Requirements for file formats:

- The first row must contain the column headings as defined for each file type.
- Data elements for each file/worksheet are defined at :ref:`record-formats`.
- Each item is a column in the file/worksheet. The 'Field Name' as defined in
  :ref:`record-formats` must be used for
  the column headings. The columns must be kept in the same order.
- The second and subsequent rows must contain the data.

.. _metadata-format:

Metadata file
^^^^^^^^^^^^^

All uploads must include a Metadata file/worksheet.

- In the first row, the first cell must contain 'key' and the second cell
  must contain 'value'
- In the second row, the first cell must contain 'type' and the second
  cell must contain 'YES-INVITATION'
- In the third row, the first cell must contain 'version' and the second
  cell must contain '1.0'

i.e.:

.. csv-table:: Metadata file
  :file: metadata-file.csv

Data elements for the metadata upload file/worksheet are defined at
:ref:`metadata-data-elements`.

An example Metadata file can be found at :ref:`example-upload-file`.

.. _invitation-format:

Invitation format
^^^^^^^^^^^^^^^^^
The invitation file/worksheet is required to be uploaded each time.

Data elements for the invitation upload file/worksheet are defined at
:ref:`invitation-data-elements`.

An example Invitation file can be found in the example file at :ref:`example-upload-file`.

.. _example-upload-file:

Example Upload File
-------------------

The example file assumes the following organisation structure:

+------------------+----------------------------+---------------------------------------------+---------------------+
| Organisation Key | Organisation Name          | Organisation Type                           | Parent Organisation |
+==================+============================+=============================================+=====================+
| PHN999           | Test PHN                   | Primary Health Network                      | None                |
+------------------+----------------------------+---------------------------------------------+---------------------+
| NFP01            | Test Provider Organisation | Private Allied Health Professional Practice | PHN999              |
+------------------+----------------------------+---------------------------------------------+---------------------+

.. csv-table:: Summary of example upload file
  :file: example-file.csv
  :header-rows: 1