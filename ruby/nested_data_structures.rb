#nested data structure: company full of divisions full of teams full of employee headcount total or list names if 5 or less

company = {
  legal: {
    'internal affairs' => 30,
    'class actions' => 20,
    'international business' => 15
  },
  policy: {
    'human resources' => 15,
    'government relations' => 30,
    'public relations' => 30,
    'security' => 40
  },
  business_intelligence: {
    'product innovation' => 25,
    'systems admin' => 25
  },
  marketing: {
    'branding' => 10,
    'messaging' => ['Joe', 'Amanda', 'Colleen', 'Will', 'Adam'],
    'domestic markets' => ['Kate', 'John', 'Tariq', 'Tamar', 'Rachel'],
    'international markets' => ['Rhonda', 'Laura', 'Dawn', 'Angel', 'DeSean']
  },
  design: {
    'user experience' => ['Meredith', 'Emily', 'Spike', 'Lee', 'Kelly'],
    'content strategy' => ['Archer', 'Ben', 'Elizabeth', 'Hannah', 'Jacob'],
    'information architecture' => 10
  },
  development: {
    'frontend' => ['Wilson', 'Jenn', 'Judy', 'Ronaldo', 'Glenn'],
    'backend' => 10
  }
}

#reverse the listing of the frontend team
company[:development]['frontend'].reverse

#change Dawn into James in international markets
company[:marketing]['international markets'][2] = 'James'
p company[:marketing]['international markets']

#add a person to the messaging team
company[:marketing]['messaging'].push('John G')
p company[:marketing]['messaging']