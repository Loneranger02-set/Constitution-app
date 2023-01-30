import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'detailsPage.dart';
import 'router.dart';

class SubmissionList{
  late int count;
  late String date;
  late String event;
  SubmissionList({
    required this.count,
    required this.date,
    required this.event
  });

}

var data=[['Enforced since', 'Amendments', 'No.', 'Objectives', 'Prime Minister', 'President'], ['1951', '15, 19, 85, 87, 174, 176, 341, 342, 372 and 376.\nInsert articles 31A and 31B.\nInsert schedule 9.', '1st', 'Added special provision for the advancement of any socially and educationally  backward classes or for the Scheduled Castes and Scheduled Tribes (SCs and STs). To fully secure the constitutional validity of zamindari abolition laws and to place reasonable restriction on freedom of speech. A new constitutional device, called Schedule 9 introduced to protect against laws that are contrary to the Constitutionally guaranteed fundamental rights. These laws encroach upon property rights, freedom of speech and equality before law.', 'Jawaharlal Nehru', 'Rajendra Prasad'], ['1953', 'Amend article 81(1)(b).', '2nd', 'Removed the upper population limit for a parliamentary constituency by amending Article 81(1)(b).', 'Jawaharlal Nehru', 'Rajendra Prasad'], ['1955', 'Amend schedule 7.', '3rd', 'Re-enacted entry 33 of the Concurrent List in the Seventh Schedule with relation to include trade and commerce in, and the production, supply and distribution of four classes of essential commodities, viz., foodstuffs, including edible oil seeds and oils; cattle fodder, including oilcakes and other concentrates; raw cotton whether ginned or unginned, and cotton seeds; and raw jute.', 'Jawaharlal Nehru', 'Rajendra Prasad'], ['1955', 'Amend articles 31, 31A, and 305.\nAmend schedule 9.', '4th', 'Restrictions on property rights and inclusion of related bills in Schedule 9 of the constitution.', 'Jawaharlal Nehru', 'Rajendra Prasad'], ['1955', 'Amend article 3.', '5th', 'Empowered the President to prescribe a time limit for a State Legislature to convey its views on proposed Central laws relating to the formation of new States and alteration of areas, boundaries or names of existing States. Also permitted the President to extend the prescribed limit, and prohibited any such bill from being introduced in Parliament until after the expiry of the prescribed or extended period.', 'Jawaharlal Nehru', 'Rajendra Prasad'], ['1956', 'Amend articles 269 and 286.\nAmend schedule 7.', '6th', 'Amend the Union List and State List with respect to raising of taxes.', 'Jawaharlal Nehru', 'Rajendra Prasad'], ['1956', 'Amend articles 1, 3, 49, 80, 81, 82, 131, 153, 158, 168, 170, 171, 216, 217, 220, 222, 224, 230, 231 and 232.\nInsert articles 258A, 290A, 298, 350A, 350B, 371, 372A and 378A.\nAmend part 8.\nAmend schedules 1, 2, 4 and 7.', '7th', 'Reorganisation of states on linguistic lines, abolition of Class A, B, C, D states and introduction of Union territories.', 'Jawaharlal Nehru', 'Rajendra Prasad'], ['1960', 'Amend article 334.', '8th', 'Extended the period of reservation of seats for the Scheduled Castes and Scheduled Tribes and Anglo-Indians in the Lok Sabha and the State Legislative Assemblies till 1970.', 'Jawaharlal Nehru', 'Rajendra Prasad'], ['1960', 'Amend schedule 1.', '9th', 'Minor adjustments to territory of Indian Union consequent to agreement with Pakistan for settlement of disputes by demarcation of border villages, etc.', 'Jawaharlal Nehru', 'Rajendra Prasad'], ['1961', 'Amend articles 66 and 71.', '11th', 'Election of Vice President by Electoral College consisting of members of both Houses of Parliament, instead of election by a Joint Sitting of Parliament. Indemnify the President and Vice President Election procedure from challenge on grounds of existence of any vacancies in the electoral college.', 'Jawaharlal Nehru', 'Rajendra Prasad'], ['1961', 'Amend article 240.\nAmend schedule 1.', '12th', 'Incorporation of Goa, Daman and Diu as a Union Territory, consequent to acquisition from Portugal.', 'Jawaharlal Nehru', 'Rajendra Prasad'], ['1961', 'Amend article 240.\nAmend schedule 1.', '10th', 'Incorporation of Dadra and Nagar Haveli as a Union Territory, consequent to acquisition from Portugal.', 'Jawaharlal Nehru', 'Rajendra Prasad'], ['1962', 'Amend article 170.\nInsert new article 371A.', '13th', 'Formation of State of Nagaland, with special protection under Article 371A.', 'Jawaharlal Nehru', 'Sarvepalli Radhakrishnan'], ['1962', 'Amend articles 81 and 240.\nInsert article 239A.\nAmend schedules 1 and 4.', '14th', 'Incorporation of Pondicherry into the Union of India and creation of Legislative Assemblies for Himachal Pradesh, Tripura, Manipur and Goa.', 'Jawaharlal Nehru', 'Sarvepalli Radhakrishnan'], ['1963', 'Amend articles 124, 128, 217, 222, 224, 226, 297, 311 and 316.\nInsert article 224A.\nAmend schedule 7.', '15th', 'Raise retirement age of High Court judges from 60 to 62 and other minor amendments for rationalising interpretation of rules regarding judges etc.', 'Jawaharlal Nehru', 'Sarvepalli Radhakrishnan'], ['1963', 'Amend articles 19, 84 and 173.\nAmend schedule 3.', '16th', 'Make it obligatory for seekers of public office to swear their allegiance to the Indian Republic and prescribe the various obligatory templates.', 'Jawaharlal Nehru', 'Sarvepalli Radhakrishnan'], ['1964', 'Amend article 31A.\nAmend schedule 9.', '17th', 'To secure the constitutional validity of acquisition of Estates and place land acquisition laws in Schedule 9 of the constitution.', 'Jawaharlal Nehru', 'Sarvepalli Radhakrishnan'], ['1966', 'Amend article 3.', '18th', 'Technical Amendment to include Union Territories in Article 3 and hence permit reorganisation of Union Territories.', 'Lal Bahadur Shastri', 'Sarvepalli Radhakrishnan'], ['1966', 'Amend article 324.', '19th', 'Abolish Election Tribunals and enable trial of election petitions by regular High Courts.', 'Lal Bahadur Shastri', 'Sarvepalli Radhakrishnan'], ['1966', 'Insert article 233A.', '20th', 'Indemnify & validate judgments, decrees, orders and sentences passed by judges and to validate the appointment, posting, promotion and transfer of judges barring a few who were not eligible for appointment under article 233. Amendment needed to overcome the effect of judgment invalidating appointments of certain judges in the state of Uttar Pradesh.', 'Lal Bahadur Shastri', 'Sarvepalli Radhakrishnan'], ['1967', 'Amend schedule 8.', '21st', 'Include Sindhi as an official language.', 'Indira Gandhi', 'Sarvepalli Radhakrishnan'], ['1969', 'Amend article 275.\nInsert articles 244A and 371B.', '22nd', 'Provision to form Autonomous states within the State of Assam.', 'Indira Gandhi', 'V. V. Giri'], ['1970', 'Amend articles 330, 332, 333 and 334.', '23rd', 'Discontinued reservation of seats for the Scheduled Tribes in Nagaland, both in the Lok Sabha and the State Legislative Assembly and stipulated that not more than one Anglo-Indian could be nominated by the Governor to any State Legislative Assembly. Extend reservation for SCs and STs and Anglo Indian members in the Lok Sabha and State Assemblies for another ten years, i.e. up to 1980.', 'Indira Gandhi', 'V. V. Giri'], ['1971', 'Amend article 31.\nInsert article 31C.', '25th', 'Restrict property rights and compensation in case the state takes over private property. However, the Supreme Court quashed a part of Article 31C, to the extent it took away the power of judicial review. This was done in the landmark case of Kesavananda Bharati v. State of Kerala (1973) 4 SCC 225 which for the first time enunciated the Basic structure doctrine.', 'Indira Gandhi', 'V. V. Giri'], ['1971', 'Amend article 366.\nInsert article 363A.\nRemove articles 291 and 362.', '26th', 'Abolition of privy purse paid to former rulers of princely states which were incorporated into the Indian Republic.', 'Indira Gandhi', 'V. V. Giri'], ['1971', 'Amend articles 13 and 368.', '24th', 'Enable parliament to dilute fundamental rights through amendments to the constitution.', 'Indira Gandhi', 'V. V. Giri'], ['1972', 'Amend articles 239A and 240.\nInsert articles 239B and 371C.', '27th', 'Reorganisation of Mizoram into a Union Territory with a legislature and council of ministers.', 'Indira Gandhi', 'V. V. Giri'], ['1972', 'Insert article 312A.\nRemove article 314.', '28th', 'Rationalise Civil Service rules to make it uniform across those appointed prior to Independence and post independence.', 'Indira Gandhi', 'V. V. Giri'], ['1972', 'Amend schedule 9.', '29th', 'Place land reform acts and amendments to these act under Schedule 9 of the constitution.', 'Indira Gandhi', 'V. V. Giri'], ['1972', 'Amend article 133.', '30th', 'Change the basis for appeals in Supreme Court of India in case of Civil Suits from value criteria to one involving substantial question of law.', 'Indira Gandhi', 'V. V. Giri'], ['1973', 'Amend articles 81, 330 and 332.', '31st', 'Increase size of Parliament from 525 to 545 seats. Increased seats going to the new states formed in North East India and minor adjustment consequent to 1971 Delimitation exercise.', 'Indira Gandhi', 'V. V. Giri'], ['1974', 'Amend article 371.\nInsert articles 371D and 371E.\nAmend schedule 7.', '32nd', 'Protection of regional rights in Telangana and Andhra regions of State of Andhra Pradesh.', 'Indira Gandhi', 'V. V. Giri'], ['1974', 'Amend articles 101 and 190.', '33rd', 'Prescribes procedure for resignation by members of parliament and state legislatures and the procedure for verification and acceptance of resignation by house speaker.', 'Indira Gandhi', 'V. V. Giri'], ['1974', 'Amend schedule 9.', '34th', 'Place land reform acts and amendments to these act under Schedule 9 of the constitution.', 'Indira Gandhi', 'Fakhruddin Ali Ahmed'], ['1975', 'Amend articles 71 and 329.\nInsert article 329A.\nAmend schedule 9.', '39th', "Amendment designed to negate the judgement of Allahabad High Court invalidating Prime Minister Indira Gandhi's election to parliament. Amendment placed restrictions on judicial scrutiny of post of Prime Minister. The amendment was introduced and passed in the Lok Sabha on 7 August 1975 and again introduced and passed in the Rajya Sabha on 8 August 1975. As many as 17 State Assemblies, summoned on Saturday, 9 August ratified this amendment and President Fakhruddin Ali Ahmad gave his assent on Sunday, 10 August and the civil servants issued gazette notification on Sunday, 10 August 1975. As a consequence of this amendment to the Constitution of India, Supreme Court of India's scheduled hearing on 11 August 1975 of Petition challenging Prime Minister Indira Gandhi's election became infructuous.\nLater however, Article 329A was struck down by the Supreme Court in case of State of Uttar Pradesh v. Raj Narain 1976 (2) SCR 347, for being in violation of basic structure.", 'Indira Gandhi', 'Fakhruddin Ali Ahmed'], ['1975', 'Amend articles 123, 213, 239B, 352, 356, 359 and 360.', '38th', 'Enhances the powers of President and Governors to pass ordinances.', 'Indira Gandhi', 'Fakhruddin Ali Ahmed'], ['1975', 'Amend articles 239A and 240.', '37th', 'Formation of Arunachal Pradesh legislative assembly.', 'Indira Gandhi', 'Fakhruddin Ali Ahmed'], ['1975', 'Amend articles 80 and 81.\nInsert article 371F.\nRemove article 2A.\nAmend schedules 1 and 4.\nRemove schedule 10.', '36th', 'Formation of Sikkim as a State within the Indian Union.', 'Indira Gandhi', 'Fakhruddin Ali Ahmed'], ['1975', 'Amend articles 80 and 81.\nInsert article 2A.\nInsert schedule 10.', '35th', 'Terms and Conditions for the Incorporation of Sikkim into the Union of India.', 'Indira Gandhi', 'Fakhruddin Ali Ahmed'], ['1976', 'Amend article 297.\nAmend schedule 9.', '40th', 'Enable Parliament to make laws with respect to Exclusive Economic Zone and vest the mineral wealth with Union of India.\nPlace land reform & other acts and amendments to these act under Schedule 9 of the constitution.', 'Indira Gandhi', 'Fakhruddin Ali Ahmed'], ['1976', 'Amend article 316.', '41st', 'Raise Retirement Age Limit of Chairmen and Members of Joint Public Service Commissions and State Public Service Commissions from sixty to sixty two.', 'Indira Gandhi', 'Fakhruddin Ali Ahmed'], ['1977', 'Amend articles 31, 31C, 39, 55, 74, 77, 81, 82, 83, 100, 102, 103, 105, 118, 145, 150, 166, 170, 172, 189, 191, 192, 194, 208, 217, 225, 226, 227, 228, 311, 312, 330, 352, 353, 356, 357, 358, 359, 366, 368 and 371F.\nInsert articles 31D, 32A, 39A, 43A, 48A, 131A, 139A, 144A, 226A, 228A and 257A.\nInsert parts 4A and 14A.\nAmend schedule 7.', '42nd', 'Amendment passed during internal emergency by Indira Gandhi. Provides for curtailment of fundamental rights, imposes fundamental duties and changes to the basic structure of the constitution by making India a "Sovereign Socialist Secular Democratic Republic".\nHowever, the Supreme Court, in Minerva Mills v. Union of India, quashed the amendments to Articles 31C and 368 as it was in contravention with the basic structure of the Constitution.', 'Indira Gandhi', 'Fakhruddin Ali Ahmed'], ['1978', 'Amend articles 145, 226, 228 and 366.\nRemove articles 31D, 32A, 131A, 144A, 226A and 228A.', '43rd', "Amendment passed after revocation of internal emergency in the Country. Repeals some of the more 'Anti-Freedom' amendments enacted through Amendment Bill 42.", 'Morarji Desai', 'Neelam Sanjiva Reddy'], ['1979', 'Amend articles 19, 22, 30, 31A, 31C, 38, 71, 74, 77, 83, 103, 105, 123, 132, 133, 134, 139A, 150, 166, 172, 192, 194, 213, 217, 225, 226, 227, 239B, 329, 352, 356, 358, 359, 360 and 371F.\nInsert articles 134A and 361A.\nRemove articles 31, 257A and 329A.\nAmend part 12.\nAmend schedule 9.', '44th', 'Amendment passed after revocation of internal emergency in the Country. Provides for human rights safeguards and mechanisms to prevent abuse of executive and legislative authority. Annuls some Amendments enacted in Amendment Bill 42.', 'Morarji Desai', 'Neelam Sanjiva Reddy'], ['1980', 'Amend article 334.', '45th', 'Extend reservation for SCs and STs and nomination of Anglo Indian members in Parliament and State Assemblies for another ten years i.e. up to 1990.', 'Indira Gandhi', 'Neelam Sanjiva Reddy'], ['1983', 'Amend articles 269, 286 and 366.\nAmend schedule 7.', '46th', 'Amendment to negate judicial pronouncements on scope and applicability on Sales Tax.', 'Indira Gandhi', 'Zail Singh'], ['1984', 'Amend schedule 9.', '47th', 'Place land reform acts and amendments to these act under Schedule 9 of the constitution.', 'Indira Gandhi', 'Zail Singh'], ['1984', 'Amend article 33.', '50th', 'Technical Amendment to curtailment of Fundamental Rights as per Part III as prescribed in Article 33 to cover Security Personnel protecting property and communication infrastructure.', 'Indira Gandhi', 'Zail Singh'], ['1984', 'Amend article 244.\nAmend schedules 5 and 6.', '49th', 'Recognise Tripura as a tribal state and enable the creation of a Tripura Tribal Areas Autonomous District Council.', 'Indira Gandhi', 'Zail Singh'], ['1985', 'Amend articles 101, 102, 190 and 191.\nInsert schedule 10.', '52nd', 'Anti Defection Law â€“ Provide disqualification of members from parliament and assembly in case of defection from one party to other. However, parts of the 10th Schedule to the Constitution of India was struck down by the Supreme Court in the case of Kihoto Hollohan v. Zachillhu 1992 SCR (1) 686, for being in contravention with Article 368 of the Constitution.', 'Rajiv Gandhi', 'Zail Singh'], ['1985', 'Amend article 356.', '48th', "Article 356 amended to permit President's rule up to two years in the state of Punjab.", 'Indira Gandhi', 'Zail Singh'], ['1986', 'Amend articles 125 and 221.\nAmend schedule 2.', '54th', 'Increase the salary of Chief Justice of India & other Judges and to provide for determining future increases without the need for constitutional amendment.', 'Rajiv Gandhi', 'Zail Singh'], ['1986', 'Insert article 371G.', '53rd', 'Special provision with respect to the State of Mizoram.', 'Rajiv Gandhi', 'Zail Singh'], ['1986', 'Amend articles 330 and 332.', '51st', 'Provide reservation to Scheduled Tribes in Nagaland, Meghalaya, Mizoram and Arunachal Pradesh in Loksabha, similarly for Meghalaya and Arunachal in their Legislative Assemblies.', 'Indira Gandhi', 'Zail Singh'], ['1987', 'Insert article 371H.', '55th', 'Special powers to Governor consequent to formation of state of Arunachal Pradesh.', 'Rajiv Gandhi', 'Zail Singh'], ['1987', 'Insert article 371I.', '56th', 'Transition provision to enable formation of state of Goa.', 'Rajiv Gandhi', 'Zail Singh'], ['1987', 'Amend article 332.', '57th', 'Provide reservation to Scheduled Tribes in Nagaland, Meghalaya, Mizoram and Arunachal Pradesh Legislative Assemblies.', 'Rajiv Gandhi', 'R. Venkataraman'], ['1987', 'Insert article 394A.\nAmend part 22.', '58th', 'Provision to publish authentic Hindi translation of constitution as on date and provision to publish authentic Hindi translation of future amendments.', 'Rajiv Gandhi', 'R. Venkataraman'], ['1988', 'Amend article 356.\nInsert article 359A.', '59th', "Article 356 amended to permit President's rule up to three years in the state of Punjab, Articles 352 and Article 359A amended to permit imposing emergency in state of Punjab or in specific districts of the state of Punjab.", 'Rajiv Gandhi', 'R. Venkataraman'], ['1988', 'Amend article 276.', '60th', 'Profession Tax increased from a minimum of Rs. 250/- to a maximum of Rs. 2500/-.', 'Rajiv Gandhi', 'R. Venkataraman'], ['1989', 'Amend article 326.', '61st', 'Reduce age for voting rights from 21 to 18.', 'Rajiv Gandhi', 'R. Venkataraman'], ['1990', 'Amend schedule 9.', '66th', 'Place land reform acts and amendments to these act under Schedule 9 of the constitution.', 'V. P. Singh', 'R. Venkataraman'], ['1990', 'Amend article 356.', '64th', "Article 356 amended to permit President's rule up to three years and six months in the state of Punjab.", 'V. P. Singh', 'R. Venkataraman'], ['1990', 'Amend article 356.', '67th', "Article 356 amended to permit President's rule up to four years in the state of Punjab.", 'V. P. Singh', 'R. Venkataraman'], ['1990', 'Amend article 334.', '62nd', 'Extend reservation for SCs and STs and nomination of Anglo Indian members in Parliament and State Assemblies for another ten years i.e. up to 2000.', 'V. P. Singh', 'R. Venkataraman'], ['1990', 'Amend article 356.\nRemove article 359A.', '63rd', 'Emergency powers applicable to State of Punjab, accorded in Article 359A as per amendment 59 repealed.', 'V. P. Singh', 'R. Venkataraman'], ['1991', 'Amend article 356.', '68th', "Article 356 amended to permit President's rule up to five years in the state of Punjab.", 'V. P. Singh', 'R. Venkataraman'], ['1991', 'Amend articles 54 and 239AA.', '70th', 'Include National Capital Territory of Delhi and Union Territory of Pondicherry in Electoral College for presidential election.', 'P. V. Narasimha Rao', 'R. Venkataraman'], ['1992', 'Amend article 338.', '65th', 'National Commission for Scheduled Castes and Scheduled Tribes formed and its statutory powers specified in The Constitution.', 'V. P. Singh', 'R. Venkataraman'], ['1992', 'Insert articles 239AA and 239AB.', '69th', 'To provide for a legislative assembly and council of ministers for National Capital Territory of Delhi. Delhi continues to be a Union Territory.', 'P. V. Narasimha Rao', 'R. Venkataraman'], ['1992', 'Amend schedule 8.', '71st', 'Include Konkani, Manipuri and Nepali as official languages.', 'P. V. Narasimha Rao', 'Shankar Dayal Sharma'], ['1992', 'Amend article 332.', '72nd', 'Provide reservation to Scheduled Tribes in Tripura State Legislative Assembly.', 'P. V. Narasimha Rao', 'Shankar Dayal Sharma'], ['1993', 'Insert part 9. Insert schedule 11.', '73rd', 'Statutory provisions for Panchyat Raj as third level of administration in villages.', 'P. V. Narasimha Rao', 'Shankar Dayal Sharma'], ['1993', 'Insert part 9A , insert schedule 12 , amend article 280.', '74th', 'Statutory provisions for Local Administrative bodies as third level of administration in urban areas such as towns and cities.', 'P. V. Narasimha Rao', 'Shankar Dayal Sharma'], ['1994', 'Amend article 323B.', '75th', 'Provisions for setting up Rent Control Tribunals.', 'P. V. Narasimha Rao', 'Shankar Dayal Sharma'], ['1994', 'Amend schedule 9.', '76th', 'Enable continuance of 69% reservation in Tamil Nadu by including the relevant Tamil Nadu Act under 9th Schedule of the constitution.', 'P. V. Narasimha Rao', 'Shankar Dayal Sharma'], ['1995', 'Amend article 16.', '77th', 'A technical amendment to protect reservation to SCs and STs Employees in promotions.', 'P. V. Narasimha Rao', 'Shankar Dayal Sharma'], ['1995', 'Amend schedule 9.', '78th', 'Place land reform acts and amendments to these act under Schedule 9 of the constitution.', 'P. V. Narasimha Rao', 'Shankar Dayal Sharma'], ['2000', 'Amend article 243M.', '83rd', 'Exempt Arunachal Pradesh from reservation for Scheduled Castes in Panchayati Raj institutions.', 'Atal Bihari Vajpayee', 'K. R. Narayanan'], ['2000', 'Amend article 335.', '82nd', 'Permit relaxation of qualifying marks and other criteria in reservation in promotion for SCs and STs candidates.', 'Atal Bihari Vajpayee', 'K. R. Narayanan'], ['2000', 'Amend article 334.', '79th', 'Extend reservation for SCs and STs and nomination of Anglo Indian members in Parliament and State Assemblies for another ten years i.e. up to 2010.', 'Atal Bihari Vajpayee', 'K. R. Narayanan'], ['2000', 'Amend articles 269 and 270.\nRemove article 272.', '80th', 'Implement Tenth Finance Commission recommendation to simplify the tax structures by pooling and sharing all taxes between states and the centre.', 'Atal Bihari Vajpayee', 'K. R. Narayanan'], ['2000', 'Amend article 16.', '81st', 'Protect SCs and STs reservation in filling backlog of vacancies.', 'Atal Bihari Vajpayee', 'K. R. Narayanan'], ['2002', 'Amend articles 55, 81, 82, 170, 330 and 332.', '84th', 'Extend the usage of 1971 national census population figures for statewise distribution of parliamentary seats.', 'Atal Bihari Vajpayee', 'K. R. Narayanan'], ['2002', 'Amend article 16.', '85th', 'A technical amendment to protect Consequential seniority in case of promotions of SCs and STs Employees.', 'Atal Bihari Vajpayee', 'K. R. Narayanan'], ['2002', 'Amend articles 45 and 51A.\nInsert article 21A.', '86th', 'Provides Right to Education until the age of fourteen.', 'Atal Bihari Vajpayee', 'A. P. J. Abdul Kalam'], ['2003', 'Amend articles 81, 82, 170 and 330.', '87th', 'Extend the usage of 2001 national census population figures for statewise distribution of parliamentary seats.', 'Atal Bihari Vajpayee', 'A. P. J. Abdul Kalam'], ['2003', 'Amend article 338.\nInsert article 338A.', '89th', 'The National Commission for Scheduled Castes and Scheduled Tribes was bifurcated into The National Commission for Scheduled Castes and The National Commission for Scheduled Tribes.', 'Atal Bihari Vajpayee', 'A. P. J. Abdul Kalam'], ['2003', 'Amend article 332.', '90th', 'Reservation in Assam Assembly relating to Bodoland Territory Area.', 'Atal Bihari Vajpayee', 'A. P. J. Abdul Kalam'], ['2004', 'Amend article 270.\nInsert article 268A.\nAmend schedule 7.', '88th', 'To extend statutory cover for levy and utilisation of Service Tax.', 'Atal Bihari Vajpayee', 'A. P. J. Abdul Kalam'], ['2004', 'Amend articles 75 and 164.\nInsert article 361B.\nAmend schedule 10.', '91st', 'Restrict the size of council of ministers to 15% of legislative members & to strengthen Anti Defection laws.', 'Atal Bihari Vajpayee', 'A. P. J. Abdul Kalam'], ['2004', 'Amend schedule 8.', '92nd', 'Include Bodo, Dogri, Santali and Mathili as official languages.', 'Atal Bihari Vajpayee', 'A. P. J. Abdul Kalam'], ['2006', 'Amend article 164.', '94th', 'To provide for a Minister of Tribal Welfare in newly created Jharkhand and Chhattisgarh States including Madhya Pradesh and Orissa.', 'Manmohan Singh', 'A. P. J. Abdul Kalam'], ['2006', 'Amend article 15.', '93rd', 'To enable provision of reservation (27%) for Other Backward Class(OBCs) in government as well as private educational institutions.', 'Manmohan Singh', 'A. P. J. Abdul Kalam'], ['2010', 'Amend article 334.', '95th', 'To extend the reservation of seats for SCs and STs and Anglo-Indian in the Lok Sabha and states assemblies from Sixty years to Seventy years.', 'Manmohan Singh', 'Pratibha Patil'], ['2011', 'Amend schedule 8.', '96th', 'Substituted "Odia" in the place of "Oriya".', 'Manmohan Singh', 'Pratibha Patil'], ['2012', 'Amend Art 19 and added Art 43B and Part IXB.', '97th', 'Added the words "or co-operative societies" after the word "or unions" in Article 19(l)(c) and insertion of article 43B i.e., Promotion of Co-operative Societies and added Part-IXB i.e., The Co-operative Societies. In July 2021 Supreme Court Struck Part of the amendment as it was not ratified by the states.\nThe amendment objective is to encourage economic activities of cooperatives which in turn help progress of rural India. It is expected to not only ensure autonomous and democratic functioning of cooperatives, but also the accountability of the management to the members and other stakeholders.', 'Manmohan Singh', 'Pratibha Patil'], ['2013', 'To insert Article 371J in the Constitution', '98th', 'To empower the Governor of Karnataka to take steps to develop the Hyderabad-Karnataka Region.', 'Manmohan Singh', 'Pranab Mukherjee'], ['2015', 'Insertion of new articles 124A, 124B and 124C. Amendments to Articles 127, 128, 217, 222, 224A, 231.', '99th', 'Formation of a National Judicial Appointments Commission. 16 State assemblies out of 29 States including Goa, Rajasthan, Tripura, Gujarat and Telangana ratified the Central Legislation, enabling the President of India to give assent to the bill. The amendment was struck down by the Supreme Court on 16 October 2015.', 'Narendra Modi', 'Pranab Mukherjee'], ['2015', 'Amendment of First Schedule to Constitution', '100th', 'Exchange of certain enclave territories with Bangladesh and conferment of citizenship rights to residents of enclaves consequent to signing of Land Boundary Agreement (LBA) Treaty between India and Bangladesh.', 'Narendra Modi', 'Pranab Mukherjee'], ['2017', 'Addition of articles 246A, 269A, 279A. Deletion of Article 268A.\nAmendment of articles 248, 249, 250, 268, 269, 270, 271, 286, 366, 368, Sixth Schedule, Seventh Schedule.', '101st', 'Introduced the Goods and Services Tax.', 'Narendra Modi', 'Pranab Mukherjee'], ['2018', 'Addition of articles 338B, 342A, and Added Clause 26C.\nModification of articles 338, 366.', '102nd', 'Constitutional status to National Commission for Backward Classes', 'Narendra Modi', 'Ram Nath Kovind'], ['2019', 'Amendment to Article 15, added Clause [6],\nAmendment to Article 16, added Clause [6].', '103rd', 'A maximum of 10% Reservation for Economically Weaker Sections (EWSs) of citizens of classes other than the classes mentioned in clauses (4) and (5) of Article 15, i.e. Classes other than socially and educationally backward classes of citizens or the Scheduled Castes and the Scheduled Tribes. Inserted Clause [6] under Article 15 as well as Inserted Clause [6] under Article 16.', 'Narendra Modi', 'Ram Nath Kovind'], ['2020', 'Amend article 334.', '104th', 'To extend the reservation of seats for SCs and STs in the Lok Sabha and states assemblies from Seventy years to Eighty years. Removed the reserved seats for the Anglo-Indian community in the Lok Sabha and state assemblies.', 'Narendra Modi', 'Ram Nath Kovind'], ['2021', 'Amended Article 338B, 342A and 366', '105th', 'To restore the power of the state governments to identify Other Backward Classes (OBCs) that are socially and educationally backward. This amendment annulled the Supreme Court judgement of 11 May 2021, which had empowered only the Central government for such identification.', 'Narendra Modi', 'Ram Nath Kovind']];

var result=[];

void getResults(String fro, String t){
  int from=int.parse(fro);
  int to=int.parse(t);
  for(int i=1;i<data.length;i++){
    if(int.parse(data[i][0])<=to && int.parse(data[i][0])>=from){
      result.add(data[i]);
    }
  }
  print(result);
}

class TimelineScreen extends StatefulWidget{
  const TimelineScreen({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState()=>_TimelineScreenState();
}

class _TimelineScreenState extends State<TimelineScreen>{
  final dateController1 = TextEditingController();
  final dateController2 = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is removed
    dateController1.dispose();
    dateController2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title: const Text('Timeline',style: TextStyle(fontWeight: FontWeight.bold),),
        //automaticallyImplyLeading: false,
        backgroundColor: const Color.fromRGBO(143, 148, 255, 1),
        actions: const [],
      ) ,

      // body: AnnotatedRegion<SystemUiOverlayStyle>(
      //   value:SystemUiOverlayStyle.light,
      //   child:GestureDetector(
      //     child:Stack(
      //         children:<Widget>[
      //           Container(
      //             height:double.infinity,
      //             width:double.infinity,
      //             decoration: const BoxDecoration(
      //                 gradient:LinearGradient(
      //                     begin: Alignment.topCenter,
      //                     end:Alignment.bottomCenter,
      //                     colors: [
      //                       Color.fromRGBO(143, 148, 251, .4),
      //                       Color.fromRGBO(143, 148, 251, .6),
      //                       Color.fromRGBO(143, 148, 251, 0.8),
      //                     ]
      //                 )
      //             ),
      //             child:SingleChildScrollView(
      //               physics: const AlwaysScrollableScrollPhysics(),
      //               padding: const EdgeInsets.symmetric(
      //                 horizontal: 15,
      //               ),
      //               child:Column(
      //                 mainAxisAlignment: MainAxisAlignment.center,
      //                 children: <Widget>[
      //                   const SizedBox(height: 60),
      //                   buildFromDate(),
      //                   const SizedBox(height: 50),
      //                   buildToDate(),
      //                   // const SizedBox(height: 30),
      //                   // buildObjectDetectionBtn(),
      //                   // const SizedBox(height: 30),
      //                   // buildCurrencyDetectionBtn()
      //                 ],
      //               ),
      //             ),
      //           )
      //         ]
      //     ),
      //   ),
      // ),

        body: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light,
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 8,
                child: FutureBuilder<SubmissionList>(
                  // future: futureInitAlbum,
                  builder: (context, snapshot) {
                      return Container(
                        decoration: const BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color.fromRGBO(143, 148, 251, .4),
                                  Color.fromRGBO(143, 148, 251, .6),
                                  Color.fromRGBO(143, 148, 251, 0.8),
                                ])),
                        child: submissionListViewBuilder(snapshot),
                      );
                  },
                ),
              )
            ],
          ),
        )
    );
  }
  Widget submissionListViewBuilder(AsyncSnapshot<SubmissionList> snapshot) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: result.length,
        itemBuilder: (BuildContext context, int index) {
            FutureBuilder<SubmissionList>(
              builder: (context, snapshot) {
                return Center(
                    child: Container(
                      decoration: const BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color(0x665ac18e),
                                Color(0x995ac18e),
                                Color(0xcc5ac18e),
                                Color(0xff5ac18e),
                              ])),
                      height: double.infinity,
                      width: double.infinity,
                      child: const Align(
                        alignment: Alignment.center,
                        child: CircularProgressIndicator(strokeWidth: 5.0,),
                      ),
                    )
                );
              },
            );
          return Card(
            child: ListTile(
              leading: const Icon(Icons.list),
              trailing: const Icon(Icons.keyboard_arrow_right),
              title: Text(result[index][0]),
              subtitle: Text(result[index][2]+" amendment"),
              onTap: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AmendmentDetails(date:result[index][0], no:result[index][2],art:result[index][1],obj:result[index][3],pm: result[index][4],presid: result[index][5]))),
            ),
          );
        });
  }
}