# jekyll-course-site - Host syllabuses on GitHub Pages with Ease!

## Getting Started

To get started with your first syllabus website, you need to [fork this repository](https://help.github.com/en/github/getting-started-with-github/fork-a-repo#fork-an-example-repository).

Once your fork has been created, you need to [set the publishing source for GitHub Pages](https://help.github.com/en/github/working-with-github-pages/configuring-a-publishing-source-for-your-github-pages-site). You will want to set it to the `master` branch.

Once those two steps are done, you can edit `index.md` to add content to your syllabus. Also see ["Editing the Schedule"](#editing-the-schedule) for instructions on setting daily course activities and configuring other aspects of your course.

## Setting Course Information

The file `index.md` contains YAML front matter the describes the course, providing details about meetings times, instructors, office hours, etc., to help display the course properly.

The front matter has three keys:

* `layout` - This must be set to `syllabus`. **Do not edit it**.
* `course` - A mapping (hash) containing the following keys:
	* `term` - A string containing the semester/quarter and year
	* `number` - A string containing the catalog designation of the course
	* `meetings` - A sequence (list) of mappings (hashes) describing when and where the course meets. Each entry has the following keys:
		* `location` - A string containing the room where the course meets
		* `time` - A string containing the time when the course meets
	* `title` - *optional* A string containing the course's title
	* `description` - *optional* A string describing the class
* `instructors` - A sequence (list) of mappings (hashes) describing the course instructors. Each entry has the following keys:
	* `name` - A string naming the instructor
	* `email` - A string containing the instructor's email
	* `office` - A sequence (list) of mappings (hashes) describing the instructor's office hours. Each entry has the following keys:
		* `hours` - A string containing the day and time of the office hours
		* `location` - *optional* A string containing the location of the office hours. Set `hours` to "By Appointment" for a by appointment availability.

## Editing the Schedule

Schedule information is defined in  `_data/schedule.yml`. Changing this file will update the schedule grid on your site.

### YAML Contents

The file contains a series of keys, optional ones are marked as such. A couple of notes, dates must be written in the form `YYYY-MM-DD` ('1924-03-21' or '2000-12-14') and you must use two digits for months and days, even if they are less than 10. Days of the week must be written in lower case ('monday' or 'saturday').

The keys are as follows:

* `start` - a string containing the date on which the semester starts.
* `end` - a string containing the date on which the semester ends.
* `meets` - a sequence (list) containing days of the week on which your course meets.
* `classes` - a sequence (list) of strings or blocks that describe the activities of each class in order. Each item in the sequence will be formatted using Markdown.
* `holidays` - *optional* a sequence (list) of mappings (hashes) that define holidays. Each entry has two keys:
	* `date` - a string containing the date of the holiday.
	* `name` - a string containing the name or description of the holiday.
* `redefined` - *optional* a sequence (list) of mappings (hashes) that define redefined days. Each entry has two keys:
	* `date` - a string containing the date being redefined.
	* `is_a` - a day of the week string containing what the redefined day functions as.
* `weeks` - *optional* a mapping (hash) of strings. Each key in the mapping must be a week number represented as a string (`1` becomes `"1"`, etc.) that maps to the title for a given week of instruction.
* `units` - *optional* a sequence (list) of mappings (hashes) that defines information about any units your course is divided into. Each entry has three keys:
	* `start` - a number representing the week of the semester on which a given unit starts.
	* `title` - *optional* a string providing a unit title.
	* `description` - *optional* a string or block containing a description of the unit. Will be formatted as Markdown.

Read more about YAML here: [YAML](https://yaml.org/)

## Hosting Multiple Syllabuses on GitHub

While you forked your first syllabus from this repository, if you want to use this site for multiple syllabuses, you will have to fork your own fork, which requires some command line usage.

[Here are some instructions that can help with that](https://deanmalone.net/post/how-to-fork-your-own-repo-on-github/).

Alternately, you might use [jekyll-syllabus](https://github.com/oncomouse/jekyll-syllabus), which is just the files needed to generate the syllabus grid, and [my course repository](https://github.com/oncomouse/courses) to see how you can host many syllabuses in the same repository.
