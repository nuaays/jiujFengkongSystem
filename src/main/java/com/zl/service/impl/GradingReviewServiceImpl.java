package com.zl.service.impl;

import com.zl.dao.ScorecardMapper;
import com.zl.pojo.*;
import com.zl.service.GradingReviewService;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class GradingReviewServiceImpl implements GradingReviewService {
    @Autowired
    ScorecardMapper scorecardMapper;
    @Override
    public ScoringRules findOneAndCustomer() {
        List<Scorecard> scorecardList = scorecardMapper.findAll();

        ArrayList<Age> ages = new ArrayList<>();
        ArrayList<Household> households = new ArrayList<>();
        ArrayList<Sex> sexes = new ArrayList<>();
        ArrayList<Educational> educationals = new ArrayList<>();
        ArrayList<Occupation> occupations = new ArrayList<>();
        ArrayList<Position> positions = new ArrayList<>();
        ArrayList<WorkingHours> workingHours1 = new ArrayList<>();
        ArrayList<Marital> maritals = new ArrayList<>();
        ArrayList<Property> properties = new ArrayList<>();
        ArrayList<Possession> possessions = new ArrayList<>();
        ArrayList<Income> incomes = new ArrayList<>();
        ArrayList<PerCapitaAnnual> perCapitaAnnuals = new ArrayList<>();
        ArrayList<DebtRatio> debtRatios = new ArrayList<>();
        ArrayList<Insurance> insurances = new ArrayList<>();
        ArrayList<GeneralImpression> generalImpressions = new ArrayList<>();
        ArrayList<Record> records = new ArrayList<>();
        ArrayList<Cumulative> cumulatives = new ArrayList<>();

        for (Scorecard scorecard : scorecardList) {
//            年龄
            if (StringUtils.equals(scorecard.getParentid(),"11")){
                Age age = new Age();
                age.setId(scorecard.getId());
                age.setName(scorecard.getChildname());
                age.setFraction(scorecard.getGoal());
                ages.add(age);
                continue;
            }
//            户籍
            if (StringUtils.equals(scorecard.getParentid(),"12")){
                Household household = new Household();
                household.setId(scorecard.getId());
                household.setName(scorecard.getChildname());
                household.setFraction(scorecard.getGoal());
                households.add(household);
                continue;
            }
//            性别
            if (StringUtils.equals(scorecard.getParentid(),"13")){
                Sex sex = new Sex();
                sex.setId(scorecard.getId());
                sex.setName(scorecard.getChildname());
                sex.setFraction(scorecard.getGoal());
                sexes.add(sex);
                continue;
            }
//            教育程度
            if (StringUtils.equals(scorecard.getParentid(),"14")){
                Educational educational = new Educational();
                educational.setId(scorecard.getId());
                educational.setName(scorecard.getChildname());
                educational.setFraction(scorecard.getGoal());
                educationals.add(educational);
                continue;
            }
//            职业单位
            if (StringUtils.equals(scorecard.getParentid(),"15")){
                Occupation occupation = new Occupation();
                occupation.setId(scorecard.getId());
                occupation.setName(scorecard.getChildname());
                occupation.setFraction(scorecard.getGoal());
                occupations.add(occupation);
                continue;
            }
//            职位或职称/执业资
            if (StringUtils.equals(scorecard.getParentid(),"16") || StringUtils.equals(scorecard.getParentid(),"17")){
                Position position = new Position();
                position.setId(scorecard.getId());
                position.setName(scorecard.getChildname());
                position.setFraction(scorecard.getGoal());
                positions.add(position);
                continue;
            }
//              现单位工作时间
            if (StringUtils.equals(scorecard.getParentid(),"18")){
                WorkingHours workingHours = new WorkingHours();
                workingHours.setId(scorecard.getId());
                workingHours.setName(scorecard.getChildname());
                workingHours.setFraction(scorecard.getGoal());
                workingHours1.add(workingHours);
                continue;
            }
//            婚姻状况
            if (StringUtils.equals(scorecard.getParentid(),"19")){
                Marital marital = new Marital();
                marital.setId(scorecard.getId());
                marital.setName(scorecard.getChildname());
                marital.setFraction(scorecard.getGoal());
                maritals.add(marital);
                continue;
            }
//              现住房产权性质
            if (StringUtils.equals(scorecard.getParentid(),"51")){
                Property property = new Property();
                property.setId(scorecard.getId());
                property.setName(scorecard.getChildname());
                property.setFraction(scorecard.getGoal());
                properties.add(property);
                continue;
            }
//            拥有固定资产
            if (StringUtils.equals(scorecard.getParentid(),"61")){
                Possession possession = new Possession();
                possession.setId(scorecard.getId());
                possession.setName(scorecard.getChildname());
                possession.setFraction(scorecard.getGoal());
                possessions.add(possession);
                continue;
            }
//            个人年收入
            if (StringUtils.equals(scorecard.getParentid(),"71")){
                Income income = new Income();
                income.setId(scorecard.getId());
                income.setName(scorecard.getChildname());
                income.setFraction(scorecard.getGoal());
                incomes.add(income);
                continue;
            }
//            家庭人均年收入
            if (StringUtils.equals(scorecard.getParentid(),"81")){
                PerCapitaAnnual perCapitaAnnual = new PerCapitaAnnual();
                perCapitaAnnual.setId(scorecard.getId());
                perCapitaAnnual.setName(scorecard.getChildname());
                perCapitaAnnual.setFraction(scorecard.getGoal());
                perCapitaAnnuals.add(perCapitaAnnual);
                continue;
            }
//            负债比率
            if (StringUtils.equals(scorecard.getParentid(),"91")){
                DebtRatio debtRatio = new DebtRatio();
                debtRatio.setId(scorecard.getId());
                debtRatio.setName(scorecard.getChildname());
                debtRatio.setFraction(scorecard.getGoal());
                debtRatios.add(debtRatio);
                continue;
            }
//            保险
            if (StringUtils.equals(scorecard.getParentid(),"10")){
                Insurance insurance = new Insurance();
                insurance.setId(scorecard.getId());
                insurance.setName(scorecard.getChildname());
                insurance.setFraction(scorecard.getGoal());
                insurances.add(insurance);
                continue;
            }
//            总体印象
            if (StringUtils.equals(scorecard.getParentid(),"100")){
                GeneralImpression generalImpression = new GeneralImpression();
                generalImpression.setId(scorecard.getId());
                generalImpression.setName(scorecard.getChildname());
                generalImpression.setFraction(scorecard.getGoal());
                generalImpressions.add(generalImpression);
                continue;
            }
//            个人贷款记录年限
            if (StringUtils.equals(scorecard.getParentid(),"1000")){
                Record record = new Record();
                record.setId(scorecard.getId());
                record.setName(scorecard.getChildname());
                record.setFraction(scorecard.getGoal());
                records.add(record);
                continue;
            }
//            个人贷款累计有效违约率
            if (StringUtils.equals(scorecard.getParentid(),"1001")){
                Cumulative cumulative = new Cumulative();
                cumulative.setId(scorecard.getId());
                cumulative.setName(scorecard.getChildname());
                cumulative.setFraction(scorecard.getGoal());
                cumulatives.add(cumulative);
                continue;
            }

        }
        ScoringRules scoringRules = new ScoringRules();
        scoringRules.setAges(ages);
        scoringRules.setHouseholds(households);
        scoringRules.setSexs(sexes);
        scoringRules.setEducationals(educationals);
        scoringRules.setOccupations(occupations);
        scoringRules.setPositions(positions);
        scoringRules.setWorkingHours(workingHours1);
        scoringRules.setMaritals(maritals);
        scoringRules.setProperties(properties);
        scoringRules.setPossessions(possessions);
        scoringRules.setIncomes(incomes);
        scoringRules.setPerCapitaAnnuals(perCapitaAnnuals);
        scoringRules.setDebtRatios(debtRatios);
        scoringRules.setInsurances(insurances);
        scoringRules.setGeneralImpressions(generalImpressions);
        scoringRules.setRecords(records);
        scoringRules.setCumulatives(cumulatives);
        return scoringRules;
    }
}
