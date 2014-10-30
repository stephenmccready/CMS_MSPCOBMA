SELECT Rtrim([CAN]) As [CAN]
      ,Rtrim([BIC]) As [BIC]
	  ,Cast(Case  When [DeleteIndicator] = 'D' Then 'Occurrence in process of deletion'
	       End As VarChar(33)) As [DeleteIndicator] 
      ,Cast(Case  When [ValidityIndicator] = 'Y' Then 'Beneficiary has MSP Coverage       '
	              When [ValidityIndicator] = 'N' Then 'Beneficiary does not have MSP Coverage'
		    End As VarChar(38)) As [ValidityIndicator] 
      ,Cast(Case  When [MSPCode] = 'A' Then 'Working Aged                   '
	              When [MSPCode] = 'B' Then 'ESRD                           '
			      When [MSPCode] = 'D' Then 'No-Fault                       ' 
			      When [MSPCode] = 'E' Then 'Workers’ Compensation          '
				  When [MSPCode] = 'F' Then 'Federal (Public Health)        '
			      When [MSPCode] = 'G' Then 'Disabled                       '
			      When [MSPCode] = 'H' Then 'Black Lung                     '
				  When [MSPCode] = 'I' Then 'Veterans                       '
			      When [MSPCode] = 'L' Then 'Liability                      '
			      When [MSPCode] = 'W' Then 'Worker’s Compensation Set Aside'
				 
			Else                            'Unknown                        '     
			End As VarChar(31)) As [MSPCode] 
      ,Rtrim([ContractorNumber]) As [ContractorNumber]
	  ,Cast(Case	When [DataEntryAdded] = '        ' Then '          '
	        When [DataEntryAdded] = '00000000' Then '          '
		  	Else SubString([DataEntryAdded],1,4) +'-'+ SubString([DataEntryAdded],5,2)+'-'+SubString([DataEntryAdded],7,2) End As VarChar(10)) As [DataEntryAdded] 
      ,Rtrim([UpdatingContractor]) As [UpdatingContractor]
	  ,Cast(Case	When [MaintenanceDate] = '        ' Then '          '
	        When [MaintenanceDate] = '00000000' Then '          '
		  	Else SubString([MaintenanceDate],1,4) +'-'+ SubString([MaintenanceDate],5,2)+'-'+SubString([MaintenanceDate],7,2) End As VarChar(10)) As [MaintenanceDate] 
      ,Rtrim([CWFOccurrenceNumber]) As [CWFOccurrenceNumber]
      ,Rtrim([InsurerType]) As [InsurerType]
      ,Rtrim([InsurersName]) As [InsurersName]
      ,Rtrim([InsurersAddress-1]) As [InsurersAddress_1]
      ,Rtrim([InsurersAddress-2]) As [InsurersAddress_2]
      ,Rtrim([InsurersCity]) As [InsurersCity]
      ,Rtrim([InsurersStateCode]) As [InsurersStateCode]
      ,Rtrim([InsurersZipCode]) As [InsurersZipCode]
      ,Rtrim([PolicyNumber]) As [PolicyNumber]
	  ,Cast(Case	When [MSPEffective Date] = '        ' Then '          '
	        When [MSPEffective Date] = '00000000' Then '          '
		  	Else SubString([MSPEffective Date],1,4) +'-'+ SubString([MSPEffective Date],5,2)+'-'+SubString([MSPEffective Date],7,2) End As VarChar(10)) As [MSPEffective Date] 
      ,Cast(Case	When [MSPTermination] = '        ' Then '          '
	        When [MSPTermination] = '00000000' Then '          '
		  	Else SubString([MSPTermination],1,4) +'-'+ SubString([MSPTermination],5,2)+'-'+SubString([MSPTermination],7,2) End As VarChar(10)) As [MSPTermination] 
      ,Cast(Case  When [PatientRelationship] = '01' Then 'Patient is Ins                                               '
	              When [PatientRelationship] = '02' Then 'Spouse                                                       '
			      When [PatientRelationship] = '03' Then 'Natural Child, Insured has Financial Responsibility          ' 
			      When [PatientRelationship] = '04' Then 'Natural Child, Insured does not have Financial Responsibility'
				  When [PatientRelationship] = '05' Then 'Step Child                                                   '
			      When [PatientRelationship] = '06' Then 'Foster Child                                                 '
			      When [PatientRelationship] = '07' Then 'Ward of the Court                                            '
				  When [PatientRelationship] = '08' Then 'Employee                                                     '
			      When [PatientRelationship] = '09' Then 'Unknown                                                      '
			      When [PatientRelationship] = '10' Then 'Handicapped Dependent                                        '
				  When [PatientRelationship] = '11' Then 'Organ Donor                                                  '
			      When [PatientRelationship] = '12' Then 'Cadaver Donor                                                '
			      When [PatientRelationship] = '13' Then 'Grandchild                                                   ' 
				  When [PatientRelationship] = '14' Then 'Niece/Nephew                                                 '
			      When [PatientRelationship] = '15' Then 'Injured Plaintiff                                            '
			      When [PatientRelationship] = '16' Then 'Sponsored Dependent                                          '
				  When [PatientRelationship] = '17' Then 'Minor Dependent of a Minor Dependent                         '
			      When [PatientRelationship] = '18' Then 'Parent                                                       '
			      When [PatientRelationship] = '19' Then 'Grandparent dependent                                        '
				  When [PatientRelationship] = '20' Then 'Life Partner                                                 '
			Else                                         'Unknown                                                      '     
			End As VarChar(61)) As [PatientRelationship] 
      ,Rtrim([SubscriberFirstName]) As [SubscriberFirstName] 
      ,Rtrim([SubscriberLastNamePolicyholder]) As [SubscriberLastNamePolicyholder]
      ,Rtrim([EmployeeIDNumber]) As [EmployeeIDNumber]
      ,Cast(Case  When SubString([SourceCode],1,1) = 'A' Then 'PatientClaim Processing                    '
	        When SubString([SourceCode],1,1) = 'B' Then 'IRS/SSA/CMS Data Match                     '
			When SubString([SourceCode],1,1) = 'C' Then 'First Claim Development                    '
			When SubString([SourceCode],1,1) = 'D' Then 'IRS/SSA/CMS Data Match II                  '
			When SubString([SourceCode],1,1) = 'E' Then 'Black Lung (DOL)                           '
			When SubString([SourceCode],1,1) = 'F' Then 'Veterans (VA)                              '
			When SubString([SourceCode],1,1) = 'G' Then 'Other Data Matches                         '
			When SubString([SourceCode],1,1) = 'H' Then 'Worker’s Compensation                      '
			When SubString([SourceCode],1,1) = 'I' Then 'Notified by Beneficiary                    '
			When SubString([SourceCode],1,1) = 'J' Then 'Notified by Provider                       '
			When SubString([SourceCode],1,1) = 'K' Then 'Notified by Insurer                        '
			When SubString([SourceCode],1,1) = 'L' Then 'Notified by Employer                       '
			When SubString([SourceCode],1,1) = 'M' Then 'Notified by Attorney                       '
			When SubString([SourceCode],1,1) = 'N' Then 'Notified by Group Health Plan/Primary Payer'
			When SubString([SourceCode],1,1) = 'O' Then 'Initial Enrollment Questionnaire           '
			When SubString([SourceCode],1,1) = 'P' Then 'HMO Rate Cell Adjustment                   '
			When SubString([SourceCode],1,1) = 'Q' Then 'Voluntary Insurer Reporting                '
			When SubString([SourceCode],1,1) = 'R' Then 'Office of Personnel Management Data Match  '
			When SubString([SourceCode],1,1) = 'S' Then 'Miscellaneous Reporting                    '
			When SubString([SourceCode],1,1) = 'T' Then 'IRS/SSA/CMS Data Match III                 '
			When SubString([SourceCode],1,1) = 'U' Then 'IRS/SSA/CMS Data Match IV                  '
			When SubString([SourceCode],1,1) = 'V' Then 'IRS/SSA/CMS Data Match V                   '
			When SubString([SourceCode],1,1) = 'W' Then 'IRS/SSA/CMS Data Match VI                  '
			When SubString([SourceCode],1,1) = 'X' Then 'Self reports                               '
			When SubString([SourceCode],1,1) = 'Y' Then '411.25                                     '
			When [SourceCode] = ' ' Then                'Unknown                                    '
			When SubString([SourceCode],2,1) = '0' Then 'COB Contractor                             '
			When SubString([SourceCode],2,1) = '1' Then 'Initial Enrollment questionnaire           '
			When SubString([SourceCode],2,1) = '2' Then 'IRS/SSA/CMS/data match                     '
			When SubString([SourceCode],2,1) = '3' Then 'HMO Rate cell                              '
			When SubString([SourceCode],2,1) = '4' Then 'Litigation settlement                      '
			When SubString([SourceCode],2,1) = '5' Then 'Employer Voluntary Reporting               '
			When SubString([SourceCode],2,1) = '6' Then 'Insurer Voluntary Reporting                '
			When SubString([SourceCode],2,1) = '7' Then 'First claim development                    '
			When SubString([SourceCode],2,1) = '8' Then 'Trauma Code development                    '
			When SubString([SourceCode],2,1) = '9' Then 'Secondary claims investigation             '
			Else                                        'Unknown                                    '
		  	End As VarChar(43)) As [SourceCode] 
	  ,Cast(Case  When [EmployeeDataCode] = 'P' Then 'Patient'
	        When [EmployeeDataCode] = 'S' Then 'Spouse '
			When [EmployeeDataCode] = 'M' Then 'Mother '
			When [EmployeeDataCode] = 'F' Then 'Father '
		  	End As VarChar(7)) As [EmployeeDataCode] 
      ,Rtrim([EmployerName]) As [EmployerName]
      ,Rtrim([EmployersAddress1]) As [EmployersAddress1]
      ,Rtrim([EmployersAddress2]) As [EmployersAddress2]
      ,Rtrim([EmployersCity]) As [EmployersCity]
      ,Rtrim([EmployersState]) As [EmployersState]
	  ,Cast(Case  When SubString([EmployersZipCode],6,4) = '    ' Then [EmployersZipCode]
	        When SubString([EmployersZipCode],6,4) = '0000' Then SubString([EmployersZipCode],1,5)+'    '
			When [EmployersZipCode] = '000000000' Then '          '
			When SubString([EmployersZipCode],6,4) <> '0000'AND SubString([EmployersZipCode],6,4) <> '    ' Then SubString([EmployersZipCode],1,5)+'-'+SubString([EmployersZipCode],6,4)
		  	End As VarChar(10)) As [EmployersZipCode] 
      ,Rtrim([InsuranceGroupNumber]) As [InsuranceGroupNumber]
      ,Rtrim([InsuranceGroup]) As [InsuranceGroup]
	  ,Cast(Case	When [PrepaidHealthPlanDate] = '        ' Then '          '
	        When [PrepaidHealthPlanDate] = '00000000' Then '          '
		  	Else SubString([PrepaidHealthPlanDate],1,4) +'-'+ SubString([PrepaidHealthPlanDate],5,2)+'-'+SubString([PrepaidHealthPlanDate],7,2) End As VarChar(10)) As [PrepaidHealthPlanDate] 
      ,Rtrim([RemarksCode-1]) As [RemarksCode_1]
      ,Rtrim([RemarksCode-2]) As [RemarksCode_2]
      ,Rtrim([RemarksCode-3]) As [RemarksCode_3]
      ,Rtrim([DiagnosisCodeIndicator]) As [DiagnosisCodeIndicator]
      ,Rtrim([DiagnosisCode]) As [DiagnosisCode]
      ,Rtrim([DiagnosisCodeOccurrence2]) As [DiagnosisCodeOccurrence2]
      ,Rtrim([DiagnosisCodeOccurrence3]) As [DiagnosisCodeOccurrence3]
      ,Rtrim([DiagnosisCodeOccurrence4]) As [DiagnosisCodeOccurrence4]
      ,Rtrim([DiagnosisCodeOccurrence5]) As [DiagnosisCodeOccurrence5]
      ,Rtrim([DiagnosisCodeOccurrence6]) As [DiagnosisCodeOccurrence6]
      ,Rtrim([DiagnosisCodeOccurrence7]) As [DiagnosisCodeOccurrence7]
      ,Rtrim([DiagnosisCodeOccurrence8]) As [DiagnosisCodeOccurrence8]
      ,Rtrim([DiagnosisCodeOccurrence9]) As [DiagnosisCodeOccurrence9]
      ,Rtrim([DiagnosisCodeOccurrence10]) As [DiagnosisCodeOccurrence10]
      ,Rtrim([DiagnosisCodeOccurrence11]) As [DiagnosisCodeOccurrence11]
      ,Rtrim([DiagnosisCodeOccurrence12]) As [DiagnosisCodeOccurrence12]
      ,Rtrim([DiagnosisCodeOccurrence13]) As [DiagnosisCodeOccurrence13]
      ,Rtrim([DiagnosisCodeOccurrence14]) As [DiagnosisCodeOccurrence14]
      ,Rtrim([DiagnosisCodeOccurrence15]) As [DiagnosisCodeOccurrence15]
      ,Rtrim([DiagnosisCodeOccurrence16]) As [DiagnosisCodeOccurrence16]
      ,Rtrim([DiagnosisCodeOccurrence17]) As [DiagnosisCodeOccurrence17]
      ,Rtrim([DiagnosisCodeOccurrence18]) As [DiagnosisCodeOccurrence18]
      ,Rtrim([DiagnosisCodeOccurrence19]) As [DiagnosisCodeOccurrence19]
      ,Rtrim([DiagnosisCodeOccurrence20]) As [DiagnosisCodeOccurrence20]
      ,Rtrim([DiagnosisCodeOccurrence21]) As [DiagnosisCodeOccurrence21]
      ,Rtrim([DiagnosisCodeOccurrence22]) As [DiagnosisCodeOccurrence22]
      ,Rtrim([DiagnosisCodeOccurrence23]) As [DiagnosisCodeOccurrence23]
      ,Rtrim([DiagnosisCodeOccurrence24]) As [DiagnosisCodeOccurrence24]
      ,Rtrim([DiagnosisCodeOccurrence25]) As [DiagnosisCodeOccurrence25]
      ,Rtrim([PayerID]) As [PayerID]
	  ,Cast(Case	When SubString([MSPDataOccurrenceNumber2],2,1) <> ' ' Then 'Y'
	        Else 'N' 
	        End As VarChar(1)) As [MSPData2Ind] 
	  ,Cast(Case	When SubString([MSPDataOccurrenceNumber3],2,1) <> ' ' Then 'Y'
	        Else 'N' 
	        End As VarChar(1)) As [MSPData3Ind] 
	  ,Cast(Case	When SubString([MSPDataOccurrenceNumber4],2,1) <> ' ' Then 'Y'
	        Else 'N' 
	        End As VarChar(1)) As [MSPData4Ind] 
	  ,Cast(Case	When SubString([MSPDataOccurrenceNumber5],2,1) <> ' ' Then 'Y'
	        Else 'N' 
	        End As VarChar(1)) As [MSPData5Ind] 
      ,Cast(Case	When SubString([MSPDataOccurrenceNumber6],2,1) <> ' ' Then 'Y'
	        Else 'N' 
	        End As VarChar(1)) As [MSPData6Ind] 
	  ,Cast(Case	When SubString([MSPDataOccurrenceNumber7],2,1) <> ' ' Then 'Y'
	        Else 'N' 
	        End As VarChar(1)) As [MSPData7Ind] 
	  ,Cast(Case	When SubString([MSPDataOccurrenceNumber8],2,1) <> ' ' Then 'Y'
	        Else 'N' 
	        End As VarChar(1)) As [MSPData8Ind] 
	  ,Cast(Case	When SubString([MSPDataOccurrenceNumber9],2,1) <> ' ' Then 'Y'
	        Else 'N' 
	        End As VarChar(1)) As [MSPData9Ind] 
      ,Cast(Case	When SubString([MSPDataOccurrenceNumber10],2,1) <> ' ' Then 'Y'
	        Else 'N' 
	        End As VarChar(1)) As [MSPData10Ind] 
	  ,Cast(Case	When SubString([MSPDataOccurrenceNumber11],2,1) <> ' ' Then 'Y'
	        Else 'N' 
	        End As VarChar(1)) As [MSPData11Ind] 
	  ,Cast(Case	When SubString([MSPDataOccurrenceNumber12],2,1) <> ' ' Then 'Y'
	        Else 'N' 
	        End As VarChar(1)) As [MSPData12Ind] 
	  ,Cast(Case	When SubString([MSPDataOccurrenceNumber13],2,1) <> ' ' Then 'Y'
	        Else 'N' 
	        End As VarChar(1)) As [MSPData13Ind] 
      ,Cast(Case	When SubString([MSPDataOccurrenceNumber14],2,1) <> ' ' Then 'Y'
	        Else 'N' 
	        End As VarChar(1)) As [MSPData14Ind] 
	  ,Cast(Case	When SubString([MSPDataOccurrenceNumber15],2,1) <> ' ' Then 'Y'
	        Else 'N' 
	        End As VarChar(1)) As [MSPData15Ind] 
	  ,Cast(Case	When SubString([MSPDataOccurrenceNumber16],2,1) <> ' ' Then 'Y'
	        Else 'N' 
	        End As VarChar(1)) As [MSPData16Ind] 
	  ,Cast(Case	When SubString([MSPDataOccurrenceNumber17],2,1) <> ' ' Then 'Y'
	        Else 'N' 
	        End As VarChar(1)) As [MSPData17Ind] 
      ,Rtrim([DataImported]) As [DataImported]
      ,Rtrim([FileName]) As [FileName]
  FROM [dbo].[tbl_MSPCOBMA_Detail]
  Where [FileName]=@filename
  and [BIC] <> ''
