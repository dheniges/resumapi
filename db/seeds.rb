# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

# Create the default resume for Dirk Heniges
# 
# This is somewhat of an abuse of seeds.rb
# Preferably this data could be imported/entered via
# a UI or API (such as LinkedIn)
me = Applicant.create(
  first_name: 'Dirk',
  last_name: 'Heniges',
  address1: '4433 44th Ave SW',
  address2: 'Unit C',
  city: 'Seattle',
  state: 'WA',
  zip: '98116',
  phone: '2064308954',
  email: 'dheniges@gmail.com',
  birth_date: '1986-09-23'
)

Education.create(
  degree: 'BA',
  graduation_date: '2009-08-01',
  program_title: 'Arts and Science',
  school_name: 'University of Washington',
  start_date: '2005-09-26',
  subject: 'Geography',
  applicant: me
)

Position.create([
  {
    company: 'Tyemill',
    start_date: '2012-09-24',
    current: true,
    title: 'Developer',
    applicant: me,
    description: 
      'Leading development on a next generation healthcare billing system.
       Also working on a "big data" economics application with an end goal of
       codifying the world\'s economic data. Projects are all rails-based.'
  },
  {
    company: 'Seabourne Consulting LLC',
    end_date: '2012-07-30',
    start_date: '2010-10-02',
    title: 'Lead Developer',
    applicant: me,
    description: 
      'Promoted from developer Fall 2011. 
       Led all development projects for Seabourne Inc. 
       Work included architecture, coding, and management 
       of project/product lifecycles and developers. Mainly PHP 
       (LAMP) projects with a few rails projects. Lead development 
       on FCC.gov; built and open-sourced the Content API module, 
       published on Drupal.org. Built my.fcc.gov on a custom PHP 
       framework Cumula (cumula.org) to consume FCC.gov content. 
       Assisted clients with production site launches and maintenance 
       utilizing both AWS and Terremark. Managed development team to deliver 
       products on budget and on time.'
  },
  {
    company: 'EmptySpaceAds',
    end_date: '2010-10-01',
    start_date: '2010-02-01',
    title: 'Acting Director of Engineering',
    applicant: me,
    description:
      'Promoted from Software Engineer April 2010. 
       Coded and managed a Ruby on Rails based ad server. 
       Increased monthly revenue through new, innovative ad 
       display methods utilizing jQuery. Designed and implemented 
       payment tracking system, new ad serving methods, an admin UI 
       and a full test suite. Refactored javascript files and added 
       flighting capability for new ad serving behaviors. Implemented 
       tracking system for various ad metrics. Optimized page loads 
       at all points in the stack, speeding ad delivery by 400%.'
  },
  {
    company: 'Ross & Associates Environmental Consulting LLC',
    end_date: '2011-01-01',
    start_date: '2007-07-01',
    title: 'Research Associate',
    applicant: me,
    description:
      'Began as an intern in 2007 and promoted to Research Associate in 2008. 
       Improved internal communication by designing and coding a client-facing 
       set of online collaboration tools in Ruby on Rails, backed by a complex 
       relational MySQL database. Developed collaborative web platform for 
       government client to draft carbon trading regulation. Created web tools 
       that reduced the environmental impact of the building industry by sharing 
       community-driven ecological best practices.'
  },
  {
    company: 'University of Washington Honors Program',
    end_date: '2008-06-01',
    start_date: '2007-02-01',
    title: 'Web Site Administrator',
    applicant: me,
    description:
      'Managed all aspects of the University of Washington Honors Program 
       website. Responded to staff needs for website updates and feature 
       additions. Performed site testing and compliance for PHP and MySQL 
       upgrades.'
  }
])

Skill.create([
  {applicant: me, description: 'Strong ability to quickly learn new software and systems'},
  {applicant: me, name: 'Communication', description: 'clear, proactive communicator'},
  {applicant: me, description: 'Expert problem analysis and solving ability'},
  {applicant: me, name: 'Ruby on Rails', description: 'Strong experience'},
  {applicant: me, name: 'MySQL', description: 'Excellent database design and knowledge'},
  {applicant: me, description: 'Experience with the full software development lifecycle, including' +
                'development and testing of client/customer-facing web applications ' +
                'and websites, scalability issues, deployment etc.'},
  {applicant: me, description: 'Experience running, launching and scaling sites on the cloud (AWS/Terremark)'},
  {applicant: me, name: 'PHP', description: 'Strong knowledge and experience'},
  {applicant: me, name: 'Javascript', description: 'Experience with javascript design pattersn and jQuery'},
  {applicant: me, name: 'VCS', description: 'Strong experience with git and github, some svn'},
  {applicant: me, description: 'Get it done philosophy'}
])
