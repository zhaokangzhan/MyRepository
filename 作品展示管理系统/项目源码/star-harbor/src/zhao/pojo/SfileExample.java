package zhao.pojo;

import java.util.ArrayList;
import java.util.List;

public class SfileExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public SfileExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andIdIsNull() {
            addCriterion("id is null");
            return (Criteria) this;
        }

        public Criteria andIdIsNotNull() {
            addCriterion("id is not null");
            return (Criteria) this;
        }

        public Criteria andIdEqualTo(Integer value) {
            addCriterion("id =", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotEqualTo(Integer value) {
            addCriterion("id <>", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThan(Integer value) {
            addCriterion("id >", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("id >=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThan(Integer value) {
            addCriterion("id <", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThanOrEqualTo(Integer value) {
            addCriterion("id <=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdIn(List<Integer> values) {
            addCriterion("id in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotIn(List<Integer> values) {
            addCriterion("id not in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdBetween(Integer value1, Integer value2) {
            addCriterion("id between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotBetween(Integer value1, Integer value2) {
            addCriterion("id not between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andUuidIsNull() {
            addCriterion("uuid is null");
            return (Criteria) this;
        }

        public Criteria andUuidIsNotNull() {
            addCriterion("uuid is not null");
            return (Criteria) this;
        }

        public Criteria andUuidEqualTo(String value) {
            addCriterion("uuid =", value, "uuid");
            return (Criteria) this;
        }

        public Criteria andUuidNotEqualTo(String value) {
            addCriterion("uuid <>", value, "uuid");
            return (Criteria) this;
        }

        public Criteria andUuidGreaterThan(String value) {
            addCriterion("uuid >", value, "uuid");
            return (Criteria) this;
        }

        public Criteria andUuidGreaterThanOrEqualTo(String value) {
            addCriterion("uuid >=", value, "uuid");
            return (Criteria) this;
        }

        public Criteria andUuidLessThan(String value) {
            addCriterion("uuid <", value, "uuid");
            return (Criteria) this;
        }

        public Criteria andUuidLessThanOrEqualTo(String value) {
            addCriterion("uuid <=", value, "uuid");
            return (Criteria) this;
        }

        public Criteria andUuidLike(String value) {
            addCriterion("uuid like", value, "uuid");
            return (Criteria) this;
        }

        public Criteria andUuidNotLike(String value) {
            addCriterion("uuid not like", value, "uuid");
            return (Criteria) this;
        }

        public Criteria andUuidIn(List<String> values) {
            addCriterion("uuid in", values, "uuid");
            return (Criteria) this;
        }

        public Criteria andUuidNotIn(List<String> values) {
            addCriterion("uuid not in", values, "uuid");
            return (Criteria) this;
        }

        public Criteria andUuidBetween(String value1, String value2) {
            addCriterion("uuid between", value1, value2, "uuid");
            return (Criteria) this;
        }

        public Criteria andUuidNotBetween(String value1, String value2) {
            addCriterion("uuid not between", value1, value2, "uuid");
            return (Criteria) this;
        }

        public Criteria andTypeIsNull() {
            addCriterion("type is null");
            return (Criteria) this;
        }

        public Criteria andTypeIsNotNull() {
            addCriterion("type is not null");
            return (Criteria) this;
        }

        public Criteria andTypeEqualTo(String value) {
            addCriterion("type =", value, "type");
            return (Criteria) this;
        }

        public Criteria andTypeNotEqualTo(String value) {
            addCriterion("type <>", value, "type");
            return (Criteria) this;
        }

        public Criteria andTypeGreaterThan(String value) {
            addCriterion("type >", value, "type");
            return (Criteria) this;
        }

        public Criteria andTypeGreaterThanOrEqualTo(String value) {
            addCriterion("type >=", value, "type");
            return (Criteria) this;
        }

        public Criteria andTypeLessThan(String value) {
            addCriterion("type <", value, "type");
            return (Criteria) this;
        }

        public Criteria andTypeLessThanOrEqualTo(String value) {
            addCriterion("type <=", value, "type");
            return (Criteria) this;
        }

        public Criteria andTypeLike(String value) {
            addCriterion("type like", value, "type");
            return (Criteria) this;
        }

        public Criteria andTypeNotLike(String value) {
            addCriterion("type not like", value, "type");
            return (Criteria) this;
        }

        public Criteria andTypeIn(List<String> values) {
            addCriterion("type in", values, "type");
            return (Criteria) this;
        }

        public Criteria andTypeNotIn(List<String> values) {
            addCriterion("type not in", values, "type");
            return (Criteria) this;
        }

        public Criteria andTypeBetween(String value1, String value2) {
            addCriterion("type between", value1, value2, "type");
            return (Criteria) this;
        }

        public Criteria andTypeNotBetween(String value1, String value2) {
            addCriterion("type not between", value1, value2, "type");
            return (Criteria) this;
        }

        public Criteria andNameIsNull() {
            addCriterion("name is null");
            return (Criteria) this;
        }

        public Criteria andNameIsNotNull() {
            addCriterion("name is not null");
            return (Criteria) this;
        }

        public Criteria andNameEqualTo(String value) {
            addCriterion("name =", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotEqualTo(String value) {
            addCriterion("name <>", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameGreaterThan(String value) {
            addCriterion("name >", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameGreaterThanOrEqualTo(String value) {
            addCriterion("name >=", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameLessThan(String value) {
            addCriterion("name <", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameLessThanOrEqualTo(String value) {
            addCriterion("name <=", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameLike(String value) {
            addCriterion("name like", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotLike(String value) {
            addCriterion("name not like", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameIn(List<String> values) {
            addCriterion("name in", values, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotIn(List<String> values) {
            addCriterion("name not in", values, "name");
            return (Criteria) this;
        }

        public Criteria andNameBetween(String value1, String value2) {
            addCriterion("name between", value1, value2, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotBetween(String value1, String value2) {
            addCriterion("name not between", value1, value2, "name");
            return (Criteria) this;
        }

        public Criteria andAuthorIsNull() {
            addCriterion("author is null");
            return (Criteria) this;
        }

        public Criteria andAuthorIsNotNull() {
            addCriterion("author is not null");
            return (Criteria) this;
        }

        public Criteria andAuthorEqualTo(String value) {
            addCriterion("author =", value, "author");
            return (Criteria) this;
        }

        public Criteria andAuthorNotEqualTo(String value) {
            addCriterion("author <>", value, "author");
            return (Criteria) this;
        }

        public Criteria andAuthorGreaterThan(String value) {
            addCriterion("author >", value, "author");
            return (Criteria) this;
        }

        public Criteria andAuthorGreaterThanOrEqualTo(String value) {
            addCriterion("author >=", value, "author");
            return (Criteria) this;
        }

        public Criteria andAuthorLessThan(String value) {
            addCriterion("author <", value, "author");
            return (Criteria) this;
        }

        public Criteria andAuthorLessThanOrEqualTo(String value) {
            addCriterion("author <=", value, "author");
            return (Criteria) this;
        }

        public Criteria andAuthorLike(String value) {
            addCriterion("author like", value, "author");
            return (Criteria) this;
        }

        public Criteria andAuthorNotLike(String value) {
            addCriterion("author not like", value, "author");
            return (Criteria) this;
        }

        public Criteria andAuthorIn(List<String> values) {
            addCriterion("author in", values, "author");
            return (Criteria) this;
        }

        public Criteria andAuthorNotIn(List<String> values) {
            addCriterion("author not in", values, "author");
            return (Criteria) this;
        }

        public Criteria andAuthorBetween(String value1, String value2) {
            addCriterion("author between", value1, value2, "author");
            return (Criteria) this;
        }

        public Criteria andAuthorNotBetween(String value1, String value2) {
            addCriterion("author not between", value1, value2, "author");
            return (Criteria) this;
        }

        public Criteria andPnumberIsNull() {
            addCriterion("pnumber is null");
            return (Criteria) this;
        }

        public Criteria andPnumberIsNotNull() {
            addCriterion("pnumber is not null");
            return (Criteria) this;
        }

        public Criteria andPnumberEqualTo(String value) {
            addCriterion("pnumber =", value, "pnumber");
            return (Criteria) this;
        }

        public Criteria andPnumberNotEqualTo(String value) {
            addCriterion("pnumber <>", value, "pnumber");
            return (Criteria) this;
        }

        public Criteria andPnumberGreaterThan(String value) {
            addCriterion("pnumber >", value, "pnumber");
            return (Criteria) this;
        }

        public Criteria andPnumberGreaterThanOrEqualTo(String value) {
            addCriterion("pnumber >=", value, "pnumber");
            return (Criteria) this;
        }

        public Criteria andPnumberLessThan(String value) {
            addCriterion("pnumber <", value, "pnumber");
            return (Criteria) this;
        }

        public Criteria andPnumberLessThanOrEqualTo(String value) {
            addCriterion("pnumber <=", value, "pnumber");
            return (Criteria) this;
        }

        public Criteria andPnumberLike(String value) {
            addCriterion("pnumber like", value, "pnumber");
            return (Criteria) this;
        }

        public Criteria andPnumberNotLike(String value) {
            addCriterion("pnumber not like", value, "pnumber");
            return (Criteria) this;
        }

        public Criteria andPnumberIn(List<String> values) {
            addCriterion("pnumber in", values, "pnumber");
            return (Criteria) this;
        }

        public Criteria andPnumberNotIn(List<String> values) {
            addCriterion("pnumber not in", values, "pnumber");
            return (Criteria) this;
        }

        public Criteria andPnumberBetween(String value1, String value2) {
            addCriterion("pnumber between", value1, value2, "pnumber");
            return (Criteria) this;
        }

        public Criteria andPnumberNotBetween(String value1, String value2) {
            addCriterion("pnumber not between", value1, value2, "pnumber");
            return (Criteria) this;
        }

        public Criteria andMoneyIsNull() {
            addCriterion("money is null");
            return (Criteria) this;
        }

        public Criteria andMoneyIsNotNull() {
            addCriterion("money is not null");
            return (Criteria) this;
        }

        public Criteria andMoneyEqualTo(String value) {
            addCriterion("money =", value, "money");
            return (Criteria) this;
        }

        public Criteria andMoneyNotEqualTo(String value) {
            addCriterion("money <>", value, "money");
            return (Criteria) this;
        }

        public Criteria andMoneyGreaterThan(String value) {
            addCriterion("money >", value, "money");
            return (Criteria) this;
        }

        public Criteria andMoneyGreaterThanOrEqualTo(String value) {
            addCriterion("money >=", value, "money");
            return (Criteria) this;
        }

        public Criteria andMoneyLessThan(String value) {
            addCriterion("money <", value, "money");
            return (Criteria) this;
        }

        public Criteria andMoneyLessThanOrEqualTo(String value) {
            addCriterion("money <=", value, "money");
            return (Criteria) this;
        }

        public Criteria andMoneyLike(String value) {
            addCriterion("money like", value, "money");
            return (Criteria) this;
        }

        public Criteria andMoneyNotLike(String value) {
            addCriterion("money not like", value, "money");
            return (Criteria) this;
        }

        public Criteria andMoneyIn(List<String> values) {
            addCriterion("money in", values, "money");
            return (Criteria) this;
        }

        public Criteria andMoneyNotIn(List<String> values) {
            addCriterion("money not in", values, "money");
            return (Criteria) this;
        }

        public Criteria andMoneyBetween(String value1, String value2) {
            addCriterion("money between", value1, value2, "money");
            return (Criteria) this;
        }

        public Criteria andMoneyNotBetween(String value1, String value2) {
            addCriterion("money not between", value1, value2, "money");
            return (Criteria) this;
        }

        public Criteria andLinkPathIsNull() {
            addCriterion("link_path is null");
            return (Criteria) this;
        }

        public Criteria andLinkPathIsNotNull() {
            addCriterion("link_path is not null");
            return (Criteria) this;
        }

        public Criteria andLinkPathEqualTo(String value) {
            addCriterion("link_path =", value, "linkPath");
            return (Criteria) this;
        }

        public Criteria andLinkPathNotEqualTo(String value) {
            addCriterion("link_path <>", value, "linkPath");
            return (Criteria) this;
        }

        public Criteria andLinkPathGreaterThan(String value) {
            addCriterion("link_path >", value, "linkPath");
            return (Criteria) this;
        }

        public Criteria andLinkPathGreaterThanOrEqualTo(String value) {
            addCriterion("link_path >=", value, "linkPath");
            return (Criteria) this;
        }

        public Criteria andLinkPathLessThan(String value) {
            addCriterion("link_path <", value, "linkPath");
            return (Criteria) this;
        }

        public Criteria andLinkPathLessThanOrEqualTo(String value) {
            addCriterion("link_path <=", value, "linkPath");
            return (Criteria) this;
        }

        public Criteria andLinkPathLike(String value) {
            addCriterion("link_path like", value, "linkPath");
            return (Criteria) this;
        }

        public Criteria andLinkPathNotLike(String value) {
            addCriterion("link_path not like", value, "linkPath");
            return (Criteria) this;
        }

        public Criteria andLinkPathIn(List<String> values) {
            addCriterion("link_path in", values, "linkPath");
            return (Criteria) this;
        }

        public Criteria andLinkPathNotIn(List<String> values) {
            addCriterion("link_path not in", values, "linkPath");
            return (Criteria) this;
        }

        public Criteria andLinkPathBetween(String value1, String value2) {
            addCriterion("link_path between", value1, value2, "linkPath");
            return (Criteria) this;
        }

        public Criteria andLinkPathNotBetween(String value1, String value2) {
            addCriterion("link_path not between", value1, value2, "linkPath");
            return (Criteria) this;
        }

        public Criteria andUploadTimeIsNull() {
            addCriterion("upload_time is null");
            return (Criteria) this;
        }

        public Criteria andUploadTimeIsNotNull() {
            addCriterion("upload_time is not null");
            return (Criteria) this;
        }

        public Criteria andUploadTimeEqualTo(String value) {
            addCriterion("upload_time =", value, "uploadTime");
            return (Criteria) this;
        }

        public Criteria andUploadTimeNotEqualTo(String value) {
            addCriterion("upload_time <>", value, "uploadTime");
            return (Criteria) this;
        }

        public Criteria andUploadTimeGreaterThan(String value) {
            addCriterion("upload_time >", value, "uploadTime");
            return (Criteria) this;
        }

        public Criteria andUploadTimeGreaterThanOrEqualTo(String value) {
            addCriterion("upload_time >=", value, "uploadTime");
            return (Criteria) this;
        }

        public Criteria andUploadTimeLessThan(String value) {
            addCriterion("upload_time <", value, "uploadTime");
            return (Criteria) this;
        }

        public Criteria andUploadTimeLessThanOrEqualTo(String value) {
            addCriterion("upload_time <=", value, "uploadTime");
            return (Criteria) this;
        }

        public Criteria andUploadTimeLike(String value) {
            addCriterion("upload_time like", value, "uploadTime");
            return (Criteria) this;
        }

        public Criteria andUploadTimeNotLike(String value) {
            addCriterion("upload_time not like", value, "uploadTime");
            return (Criteria) this;
        }

        public Criteria andUploadTimeIn(List<String> values) {
            addCriterion("upload_time in", values, "uploadTime");
            return (Criteria) this;
        }

        public Criteria andUploadTimeNotIn(List<String> values) {
            addCriterion("upload_time not in", values, "uploadTime");
            return (Criteria) this;
        }

        public Criteria andUploadTimeBetween(String value1, String value2) {
            addCriterion("upload_time between", value1, value2, "uploadTime");
            return (Criteria) this;
        }

        public Criteria andUploadTimeNotBetween(String value1, String value2) {
            addCriterion("upload_time not between", value1, value2, "uploadTime");
            return (Criteria) this;
        }

        public Criteria andDawnloadCountIsNull() {
            addCriterion("dawnload_count is null");
            return (Criteria) this;
        }

        public Criteria andDawnloadCountIsNotNull() {
            addCriterion("dawnload_count is not null");
            return (Criteria) this;
        }

        public Criteria andDawnloadCountEqualTo(Integer value) {
            addCriterion("dawnload_count =", value, "dawnloadCount");
            return (Criteria) this;
        }

        public Criteria andDawnloadCountNotEqualTo(Integer value) {
            addCriterion("dawnload_count <>", value, "dawnloadCount");
            return (Criteria) this;
        }

        public Criteria andDawnloadCountGreaterThan(Integer value) {
            addCriterion("dawnload_count >", value, "dawnloadCount");
            return (Criteria) this;
        }

        public Criteria andDawnloadCountGreaterThanOrEqualTo(Integer value) {
            addCriterion("dawnload_count >=", value, "dawnloadCount");
            return (Criteria) this;
        }

        public Criteria andDawnloadCountLessThan(Integer value) {
            addCriterion("dawnload_count <", value, "dawnloadCount");
            return (Criteria) this;
        }

        public Criteria andDawnloadCountLessThanOrEqualTo(Integer value) {
            addCriterion("dawnload_count <=", value, "dawnloadCount");
            return (Criteria) this;
        }

        public Criteria andDawnloadCountIn(List<Integer> values) {
            addCriterion("dawnload_count in", values, "dawnloadCount");
            return (Criteria) this;
        }

        public Criteria andDawnloadCountNotIn(List<Integer> values) {
            addCriterion("dawnload_count not in", values, "dawnloadCount");
            return (Criteria) this;
        }

        public Criteria andDawnloadCountBetween(Integer value1, Integer value2) {
            addCriterion("dawnload_count between", value1, value2, "dawnloadCount");
            return (Criteria) this;
        }

        public Criteria andDawnloadCountNotBetween(Integer value1, Integer value2) {
            addCriterion("dawnload_count not between", value1, value2, "dawnloadCount");
            return (Criteria) this;
        }

        public Criteria andMoreLinkIsNull() {
            addCriterion("more_link is null");
            return (Criteria) this;
        }

        public Criteria andMoreLinkIsNotNull() {
            addCriterion("more_link is not null");
            return (Criteria) this;
        }

        public Criteria andMoreLinkEqualTo(String value) {
            addCriterion("more_link =", value, "moreLink");
            return (Criteria) this;
        }

        public Criteria andMoreLinkNotEqualTo(String value) {
            addCriterion("more_link <>", value, "moreLink");
            return (Criteria) this;
        }

        public Criteria andMoreLinkGreaterThan(String value) {
            addCriterion("more_link >", value, "moreLink");
            return (Criteria) this;
        }

        public Criteria andMoreLinkGreaterThanOrEqualTo(String value) {
            addCriterion("more_link >=", value, "moreLink");
            return (Criteria) this;
        }

        public Criteria andMoreLinkLessThan(String value) {
            addCriterion("more_link <", value, "moreLink");
            return (Criteria) this;
        }

        public Criteria andMoreLinkLessThanOrEqualTo(String value) {
            addCriterion("more_link <=", value, "moreLink");
            return (Criteria) this;
        }

        public Criteria andMoreLinkLike(String value) {
            addCriterion("more_link like", value, "moreLink");
            return (Criteria) this;
        }

        public Criteria andMoreLinkNotLike(String value) {
            addCriterion("more_link not like", value, "moreLink");
            return (Criteria) this;
        }

        public Criteria andMoreLinkIn(List<String> values) {
            addCriterion("more_link in", values, "moreLink");
            return (Criteria) this;
        }

        public Criteria andMoreLinkNotIn(List<String> values) {
            addCriterion("more_link not in", values, "moreLink");
            return (Criteria) this;
        }

        public Criteria andMoreLinkBetween(String value1, String value2) {
            addCriterion("more_link between", value1, value2, "moreLink");
            return (Criteria) this;
        }

        public Criteria andMoreLinkNotBetween(String value1, String value2) {
            addCriterion("more_link not between", value1, value2, "moreLink");
            return (Criteria) this;
        }

        public Criteria andActiveIsNull() {
            addCriterion("active is null");
            return (Criteria) this;
        }

        public Criteria andActiveIsNotNull() {
            addCriterion("active is not null");
            return (Criteria) this;
        }

        public Criteria andActiveEqualTo(String value) {
            addCriterion("active =", value, "active");
            return (Criteria) this;
        }

        public Criteria andActiveNotEqualTo(String value) {
            addCriterion("active <>", value, "active");
            return (Criteria) this;
        }

        public Criteria andActiveGreaterThan(String value) {
            addCriterion("active >", value, "active");
            return (Criteria) this;
        }

        public Criteria andActiveGreaterThanOrEqualTo(String value) {
            addCriterion("active >=", value, "active");
            return (Criteria) this;
        }

        public Criteria andActiveLessThan(String value) {
            addCriterion("active <", value, "active");
            return (Criteria) this;
        }

        public Criteria andActiveLessThanOrEqualTo(String value) {
            addCriterion("active <=", value, "active");
            return (Criteria) this;
        }

        public Criteria andActiveLike(String value) {
            addCriterion("active like", value, "active");
            return (Criteria) this;
        }

        public Criteria andActiveNotLike(String value) {
            addCriterion("active not like", value, "active");
            return (Criteria) this;
        }

        public Criteria andActiveIn(List<String> values) {
            addCriterion("active in", values, "active");
            return (Criteria) this;
        }

        public Criteria andActiveNotIn(List<String> values) {
            addCriterion("active not in", values, "active");
            return (Criteria) this;
        }

        public Criteria andActiveBetween(String value1, String value2) {
            addCriterion("active between", value1, value2, "active");
            return (Criteria) this;
        }

        public Criteria andActiveNotBetween(String value1, String value2) {
            addCriterion("active not between", value1, value2, "active");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}