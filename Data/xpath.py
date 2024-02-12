# Common
Input_Username = '//input[@id="auth-email-id"]'
Input_Password = '//input[@id="auth-password"]'
BTN_Login = '//p[text()="Sign In"]/parent::button'
BTN_Cancel = '//p[text()="Cancel"]/parent::button'
BTN_Save = '//p[text()="Save"]/parent::button'
BTN_Confirm = '//p[text()="Confirm"]/parent::button'



# PROD-4 Portfolio managemet
BTN_Create_Portfolio = '//button[@id="portfolio-create-btn"]'
Input_Portfolio = '//input[@id="portfolio-management-portfolio-name"]'
Input_error_name  = '//p[@id="Name-input-box-name-field-err-msg"]'
Input_error_description    =  '//div[text()="Description is required"]'
Input_Portfolio_Description = '//textarea[@id="portfolio-management-portfolio-description"]'
BTN_Portfolio_Man_Menu='//span[@id="icon-Portfolio Management"]/ancestor::a'    
Input_Portfolio_Manager = '//div[@id="portfolio-management-manager"]'
Drop_Down_Manager = '//li[text()="Iyyappan"]'
Input_Search_Manager = '//input[@id="search-field"]'
BTN_Portfolio_CUSTOM = '//td[@id="custom-id-{name}"]'
BTN_Portfolio_more = '//div[@id="portfolio-more-btn-{name}"]/../..'
BTN_Portfolio_delete = '//li[@id="portfolio-delete-{name}"]'
BTN_Portfolio_Edit = '//li[@id="portfolio-edit-{name}"]'
Input_Portfolio_Search = '//input[@id="portfolio-search-input"]'
CHBOX_portfolio = '//td[@id="custom-id-{checkbox_name}"]/parent::tr/td[1]/span/input'
TXT_Portfolio_No_Data = '//p[text()="No records to display"]'
# Portfolio_Name = '//td[@id="custom-id-{name}"]'

# PROD-5 Finance Configuration
Icon_SystemSettings = '//span[@id="icon-System Settings"]'
BTN_Add_Category = '//button[@id="finance-config-add-category"]'    
Input_Category_name = '//input[@id="finance-config-category-name"]'
Input_Category_Description = '//textarea[@id="finance-config-description"]'
Search_FinanceConfiguration = '//input[@id="finance-config-search-input"]'
TXT_Category_NO_DATA = '//p[text()="No records to display"]'
Category_name = '//td[@id="custom-id-{name}"]/parent::tr'
BTN_Category_More = '//div[@id="finance-config-more-btn-{name}"]'
BTN_Category_Edit = '//li[@id="finance-config-edit-{name}"]'
BTN_Category_Delete = '//li[@id="finance-config-delete-{name}"]'


#PROD-7 Finance Customize Budget
BTN_System_setting = '//span[@id="icon-System Settings"]'
BTN_Finance_custom_budget = '//p[@id="tabs-name-Finance Customize Budget"]'
BTN_New_finance = '//button[@id="customize-finance-add-new-budget"]'
INPUT_Budget = '//input[@id="customize-budget-name"]'
INPUT_budget_Description = '//textarea[@id="customize-budget-description"]'
INPUT_budget_search = '//input[@id="customize-finance-budget-search-input"]'
INPUT_created_budget= '//td[@id="custom-id-{name}"]'
BTN_Budget_more_icon = '//div[@id="finance-budget-action-{name}"]'
BTN_Edit_budget = '//li[@id="fin-budget-row-edit-{name}"]'
BTN_Delete_budget = '//li[@id="fin-budget-row-delete-{name}"]'


# TC05 
Recycle_bin_btn = '//div[@id="system-settings-recycle-bin"]'
Restore_btn = '//button[@id="recycle-bin-restore"]'
name_profile ='//td[@id="custom-id-gayathri  portfolio"]'

# PROD-8 Product Squad Role
Tab_Product_Squad_Role = '//div[@id="system-settings-product-squad-roles"]'
BTN_Add_Role = '//button[@id="product-squad-add-role"]'
Input_Product_Squad_Role_name = '//input[@id="product-squad-role-name"]'
Input_Product_Squad_Role_Description = '//textarea[@id="product-squad-role-description"]'
Search_Product_Squad_Role = '//input[@id="product-squad-roles-search-input"]'
TXT_Product_Squad_Role_NO_DATA = '//p[text()="No records to display"]'
Product_Squad_Role_name = '//td[@id="custom-id-{name}"]/parent::tr'
BTN_Product_Squad_Role_Kebab = '//div[@id="product-squad-role-more-btn-{name}"]'
BTN_Product_Squad_Role_Edit = '//li[@id="product-squad-role-edit-{name}"]'
BTN_Product_Squad_Role_Delete = '//li[@id="product-squad-role-delete-{name}"]'


#PROD-6 PRODUCT/PLATFORM OKR and SQUAD

BTN_prod_OKR = '//div[@id="product-okrs"]'
BTN_Add_OKR = '//button[@id="create-okr-nullstate-btn"]'
INPUT_OKR_name = '//input[@id="okr-name"]'
INPUT_start_date = '//p[@id="okr-start-date"]/parent::div/descendant::input'
INPUT_END_date = '//p[@id="okr-end-date"]/parent::div/descendant::input'
INPUT_assign_to = '//div[@id="okr-owner"]'
INPT_okr_owner = '//li[@id="Neeraj Patel"]'
INPT_link_SO = '//div[@id="okr-SO"]'
INPUT_strat_out_name = '//li[@id="delt so"]'
BTN_okr_search = '//input[@id="okr-search-input"]'
BTN_add_result = '//button[@id="okr-add-result-{name}"]'
BTN_more_OKR = '//div[@id="okr-more-btn-{name}"]'
BTN_EDIT_OKR = '//li[@id="okr-edit-{name}"]'
BTN_DELETE_OKR = '//li[@id="okr-delete-{name}"]'
INPUT_key_result_name = '//input[@id="keyresult-key-result"]'
INPUT_Key_result_description ='//textarea[@id="keyresult-description"]'
INPUT_baseline ='//input[@id="keyresult-basline"]'
INPUT_unit_of_measure = '//input[@id="keyresult-uom"]'
INPUT_ASSign_TO_key = '//div[@id="keyresult-assign-to"]'
BTN_more_keyresult = '//div[@id="keyresult-more-btn-{name}"]'
BTN_EDIT_keyresult = '//li[@id="keyresult-edit-{name}"]'
BTN_OVERVIEW_edit = '//button[@id="okr-overview-edit-btn"]'
BTN_BACKARROW_KEY_OVERVIEW = '//i[@id="back-to-result-undefined"]'
BTN_DELETE_result= '//li[@id="keyresult-delete-{name}"]'
BTN_BACKARROW_OKR = '//i[@id="back-to-okr-PROD_6_okr1"]'

# PROD-14 PPG-Product/Platform
Portfolio_Click = '//td[@id="custom-id-{name}"]'
TAB_PPG = '//a[@id="PPG-tabs"]'
BTN_Add_PPG = '//p[text()="Add PPG"]/ancestor::button'
BTN_Create_PPG = '//button[@id="ppg-create"]'
Input_PPG_name = '//input[@id="ppg-name"]'
Input_PPG_Description = '//textarea[@id="ppg-description"]'
Input_PPG_Owner = '//div[@id="ppg-owner"]'
Input_Search_Owner = '//input[@id="search-field"]'
Select_Owner = '//li[@id="{name}"]'
Input_PPG_Type = '//div[@id="ppg-type"]'
Input_Type_Platform = '//li[@id="Platform"]'
Input_Type_Product = '//li[@id="Product"]'
BTN_PPG_Kebab = '//div[@id="ppg-more-btn-{name}"]'
BTN_PPG_Edit = '//li[@id="ppg-edit-{name}"]'
BTN_PPG_Delete = '//li[@id="ppg-delete-{name}"]'
Search_PPG = '//input[@id="ppg-product/platform-search-input"]'
PPG_Click = '//td[@id="custom-id-{name}"]'
TAB_Product_Platform = '//a[@id="Products/Platforms-tabs"]'

# PROD-14 Product/Platform
BTN_Add_Product_Platform = '//button[@id="add-product-platform"]'
Input_Product_Platform_name = '//input[@id="product-platform-name"]'
Input_Product_Platform_Description = '//textarea[@id="product-platform-description"]'
Input_Product_Platform_Owner = '//div[@id="product-platform-owner"]'
Search_Product_Platform_Owner = '//input[@id="search-field"]'
Input_Product_Platform_Type = '//div[@id="product-platform-type"]'
BTN_Product_Platform_Kebab = '//div[@id="product-platform-more-btn-{name}"]'
BTN_Product_Platform_Edit = '//li[@id="product-platform-edit-{name}"]'
Search_Product_Platform = '//input[@id="product-platform-search-field"]'
BTN_Product_Platform_Delete = '//li[@id="product-platform-delete-{name}"]'
Bread_Crums = '//p[@id="breadcrums-{name}"]'
Portfolio_BreadCrums = '//p[@id="breadcrums-Portfolio Management"]'
