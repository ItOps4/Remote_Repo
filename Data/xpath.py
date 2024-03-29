# Common
Input_Username = '//input[@id="auth-email-id"]'
Input_Password = '//input[@id="auth-password"]'
BTN_Login = '//p[text()="Sign In"]/parent::button'

# Common Xpath
BTN_Cancel = '//p[text()="Cancel"]/parent::button'
BTN_Save = '//p[text()="Save"]/parent::button'
BTN_Confirm = '//p[text()="Confirm"]/parent::button'
TXT_NO_DATA = '//p[text()="No records to display"]'
Input_Created_Data = '//td[@id="custom-id-{name}"]/parent::tr'
BTN_ADD = '//p[text()="Add"]/parent::button'
BTN_UPDATE = '//p[text()="Update"]/parent::button'


# Portfolio_Management
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
BTN_Portfolio_Kebab = '//div[@id="portfolio-more-btn-{name}"]/../..'
BTN_Portfolio_delete = '//li[@id="portfolio-delete-{name}"]'
BTN_Portfolio_Edit = '//li[@id="portfolio-edit-{name}"]'
Input_Portfolio_Search = '//input[@id="portfolio-search-input"]'
CHBOX_portfolio = '//td[@id="custom-id-{checkbox_name}"]/parent::tr/td[1]/span/input'

# Finance_Configuration
Icon_SystemSettings = '//span[@id="icon-System Settings"]'
BTN_Add_Category = '//button[@id="finance-config-add-category"]'    
Input_Category = '//input[@id="finance-config-category-name"]'
Input_Category_Description = '//textarea[@id="finance-config-description"]'
Input_Search_FinanceConfiguration = '//input[@id="finance-config-search-input"]'
Navigate_Category = '//td[@id="custom-id-{name}"]/parent::tr'
BTN_Category_Kebab = '//div[@id="finance-config-more-btn-{name}"]'
BTN_Category_Edit = '//li[@id="finance-config-edit-{name}"]'
BTN_Category_Delete = '//li[@id="finance-config-delete-{name}"]'

# Finance_Customize_Budget
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
Restore_cancel_btn = '//button[@id="recycbin-restore-cancel-btn"]'
Restore_confirm_btn = '//button[@id="recycbin-restore-confirm-btn"]'
name_profile ='//td[@id="custom-id-gayathri  portfolio"]'

# Product_Squad_Role
TAB_Product_Squad_Role = '//div[@id="system-settings-product-squad-roles"]'
BTN_Add_Role = '//button[@id="product-squad-add-role"]'
Input_Product_Squad_Role = '//input[@id="product-squad-role-name"]'
Input_Product_Squad_Role_Description = '//textarea[@id="product-squad-role-description"]'
TXT_Product_Squad_Role_NO_DATA = '//p[text()="No records to display"]'
Input_Search_Product_Squad_Role = '//input[@id="product-squad-roles-search-input"]'
Navigate_Product_Squad_Role = '//td[@id="custom-id-{name}"]/parent::tr'
BTN_Product_Squad_Role_Kebab = '//div[@id="product-squad-role-more-btn-{name}"]'
BTN_Product_Squad_Role_Edit = '//li[@id="product-squad-role-edit-{name}"]'
BTN_Product_Squad_Role_Delete = '//li[@id="product-squad-role-delete-{name}"]'

# PRODUCT_PLATFORM_OKR_SQUAD
BTN_prod_OKR = '//div[@id="product-okrs"]'
BTN_Add_OKR_platform = '//button[@id="create-okr-nullstate-btn"]'
INPUT_OKR_PLATFORM = '//input[@id="okr-name"]'
INPUT_start_date = '//p[@id="okr-edit-start-date"]/parent::div/descendant::input'
INPUT_END_date = '//p[@id="okr-edit-end-date"]/parent::div/descendant::input'
INPUT_assign_to = '//div[@id="okr-owner"]'
INPT_okr_owner = '//li[@id="Iyyappan"]'
INPT_link_SO = '//div[@id="okr-SO"]'
INPUT_strat_out_name = '//li[@id="{name}"]'
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
BTN_BACKARROW_OKR = '//i[@id="back-to-okr-{name}"]'
TAB_squad = '//div[@id="product-squad"]'
BTN_ADD_SQUAD ='//button[@id="add-squad-btn"]'
INPUT_SQUAD = '//input[@id="squad-name"]'
INPUT_SQUAD_LEAD = '//div[@id="squad-lead"]'
BTN_NEXT = '//button[@id="create-squad-next"]'
Label_1 = '//input[@id="checkbox-laragon"]'
product_mem = '//td[@id="custom-id-Laragon"]'
BTN_BACK = '//button[@id="create-squad-step-2-back"]'
BTN_squad_CANCEL = '//button[@id="create-squad-cancel"]'
Portfolio_Click = '//td[@id="custom-id-{name}"]'
INPUT_search_squad_member = '//input[@id="ppg-product-squad-member-input-search"]'
TXT_create_new_squad = '//p[@id="popup-header-Create New Squad"]'
BTN_more_squad_details = '//div[@id="product-squad-details-more-btn-{name}"]'
BTN_EDIT_squad_details = '//li[@id="{name}-product-squad-details-edit"]'
INPUT_ALLOCATION = '//input[@id="product-edit-squad-allocation"]'
INPUT_SELECT_ROLE = '//div[@id="product-edit-squad-role"]'
select_role_data ='//li[@id="deveops squad"]'
BTN_BACKARROW_squad = '//div[@id="back-to-squad"]'
INPUT_SEARCH_SQUAD ='//input[@id="ppg-product-squad-input-search"]'
BTN_MORE_product_squad = '//div[@id="product-squad-more-btn-{name}"]'
BTN_EDIT_product_squad = '//li[@id="product-squad-edit-{name}"]'
TAB_product_member = '//div[@id="product-member"]'
BTN_product_member = '//button[@id="ppg-product-squad-add-sqaud-member"]'
CHECKBOX_label = '//li[@id="label-iyyappan"]'
TXT_product_member = '//p[@id="popup-header-Add Product Members"]'
INPUT_SEARCH_P_MEMBER = '//input[@id="ppg-product-squad-member-input-search"]'
BTN_more_product_member = '//div[@id="more-btn-Iyyappan"]'
BTN_EDIT_product_member = '//li[@id="{name}-product-squad-member-edit"]'
BTN_DELETE_SQUAD_MEMBER = '//li[@id="{name}-product-squad-member-delete"]'
BTN_DELETE_SQUAD_PRODUCT = '//li[@id="product-squad-delete-{name}"]'
TAB_SQUAD1 ='(//div[@id="product-squad"])[2]'

# PPG
TAB_PPG = '//a[@id="PPG-tabs"]'
BTN_Add_PPG = '//p[text()="Add PPG"]/ancestor::button'
BTN_Create_PPG = '//button[@id="ppg-create"]'
Input_PPG_name = '//input[@id="ppg-name"]'
Input_PPG_Description = '//textarea[@id="ppg-description"]'
BTN_PPG_Owner = '//div[@id="ppg-owner"]'
Input_Search_Owner = '//input[@id="search-field"]'
BTN_Select_Owner = '//li[@id="{name}"]'
Input_PPG_Type = '//div[@id="ppg-type"]'
Input_Type_Platform = '//li[@id="Platform"]'
Input_Type_Product = '//li[@id="Product"]'
BTN_PPG_Kebab = '//div[@id="ppg-more-btn-{name}"]'
BTN_PPG_Edit = '//li[@id="ppg-edit-{name}"]'
BTN_PPG_Delete = '//li[@id="ppg-delete-{name}"]'
Input_Search_PPG = '//input[@id="ppg-product/platform-search-input"]'
Navigate_PPG = '//td[@id="custom-id-{name}"]'
TAB_Product_Platform = '//a[@id="Products/Platforms-tabs"]'
# Product/Platform
BTN_Add_Product_Platform = '//button[@id="add-product-platform"]'
Input_Product_Platform = '//input[@id="product-platform-name"]'
Input_Product_Platform_Description = '//textarea[@id="product-platform-description"]'
Input_Product_Platform_Owner = '//div[@id="product-platform-owner"]'
BTN_Search_Product_Platform_Owner = '//input[@id="search-field"]'
Drop_Down_Product_Platform_Type = '//div[@id="product-platform-type"]'
BTN_Product_Platform_Kebab = '//div[@id="product-platform-more-btn-{name}"]'
BTN_Product_Platform_Edit = '//li[@id="product-platform-edit-{name}"]'
Input_Search_Product_Platform = '//input[@id="product-platform-search-field"]'
BTN_Product_Platform_Delete = '//li[@id="product-platform-delete-{name}"]'
Bread_Crums = '//p[@id="breadcrums-{name}"]'
BreadCrums_Portfolio = '//p[@id="breadcrums-Portfolio Management"]'

# Strategic outcome
INPUT_Search_Portfolio = "//input[@id='portfolio-search-input']"
Icon_Portfolio_Management = '//span[@id="icon-Portfolio Management"]'
Strategic_outcome_Tab = "//a[@id='Strategic Outcome-tabs']"
BTN_Add_Strategic_outcome = "//button[@id='create-strategic-outcome-nullstate-btn']"
INPUT_Search_Strategic_Outcome = "//input[@id='strategic-outcome-search']"
INPUT_Strategic_Outcome_Name = "//input[@id='strategy-outcome-name']"
INPUT_Strategic_Outcome_Description = "//textarea[@id='strategy-outcome-description']"
INPUT_SO_Start_Date =  '//p[@id="strategy-outcome-start-date"]/parent::div/descendant::input'
INPUT_SO_End_Date ='//p[@id="strategy-outcome-end-date"]/parent::div/descendant::input'
Drop_Down_Select_Manager = "//div[@id='strategy-outcome-assign-to']"
Drop_Down_Input_Select_Manager = "//input[@id='search-field']"
BTN_Add_Strategic_Cancel = "//button[@id='strategic-outcome-create-cancel-btn']"
BTN_Add_Strategic_Save = "//button[@id='strategic-outcome-create-save-btn']"
BTN_More_Portfolio = "//div[@id='portfolio-more-btn-{name}']"
BTN_Portfolio_more_Edit = "//p[contains(text(),'Edit')]"
BTN_More_SO ="//div[@id='strategic-outcome-more-btn-{name}']"
BTN_Add_OKR = '//button[@id="add-okr-{name}"]'
BTN_Create_OKR_Cancel = "//button[@id='okr-create-cancel-btn']"
BTN_Create_OKR_Save = "//button[@id='okr-create-save-btn']"
INPUT_OKR_name = "//input[@id='okr-objective-key']"
INPUT_OKR_Description = "//textarea[@id='okr-description']"
INPUT_OKR_Start_Date = '//p[@id="okr-start-date"]/parent::div/descendant::input'
INPUT_OKR_End_Date = '//p[@id="okr-end-date"]/parent::div/descendant::input'
Drop_Down_Add_Under = "//div[@id='okr-ppg']"
Drop_Down_Select_ppg = "//li[@id='ppg']"
Drop_Down_Select_product = "//li[@id='product']"
Drop_Down_Assign_To= "//div[@id='okr-assign-to']"
Drop_Down_INPUT_Search_Member = "//input[@id='search-field']"
Drop_Down_Select_ppg_name= "//li[@id='PROD_12_PPG_name']"
BTN_OKR_Cancel = "//p[contains(text(),'Cancel')]"
BTN_OKR_Save = "//p[contains(text(),'Save')]"
BTN_More_OKR = "//div[@id='okr-more-btn-{name}']"
BTN_More_Edit_OKR = "//p[contains(text(),'Edit')]"
BTN_More_Delete_OKR = "//p[contains(text(),'Delete')]"
BTN_OKR_Delete_Cancel = "//button[@id='common-delete-cancel-btn']"
BTN_OKR_Delete_Confirm = "//button[@id='common-delete-confirm-btn']"
INPUT_Edit_OKR_Name = "//input[@id='okr-objective-key']"
INPUT_Edit_OKR_Description = "//textarea[@id='okr-description']"
INPUT_Edit_OKR_Start_Date = "//input[@id=':r2p:']"
INPUT_Edit_OKR_End_Date = "//input[@id=':r2s:']"
Drop_Down_Edit_Add_Under = "//div[@id='okr-ppg']"
Drop_Down_Edit_Select_ppg = "//li[@id='ppg']"
Drop_Down_Edit_Select_product = "//li[@id='product']"
Drop_Down_Select_Product_Platform = "//div[@id='okr-product']"
BTN_OKR_Edit_Cancel = "//button[@id='okr-edit-cancel-btn']"
BTN_OKR_Edit_Save = "//button[@id='okr-edit-save-btn']"
BTN_Strategic_Expand = "//tbody/tr[1]/td[1]/span[1]/button[1]/*[1]" #id required
BTN_Strategic_Outcome_more = "//div[@id='so-more-btn-{name}']"
BTN_Strategic_Outcome_more_Edit = "//p[contains(text(),'Edit')]"
BTN_Strategic_Outcome_more_Delete = "//p[contains(text(),'Delete')]"
INPUT_Edit_Strategic_Outcome_Name = "//input[@id='strategy-outcome-name']"
INPUT_Edit_Strategic_Outcome_Description = "//textarea[@id='strategy-outcome-description']"
BTN_Edit_Strategic_Cancel = "//button[@id='strategic-outcome-edit-cancel-btn']"
BTN_Edit_Strategic_Save = "//button[@id='strategic-outcome-edit-save-btn']"
BTN_Edit_Portfolio_Cancel = "//button[@id='portfolio-edit-cancel-btn']"
BTN_Edit_Portfolio_Save = "//button[@id='portfolio-edit-save-btn']"
Breadcrums_Portfolio_Management = "//p[@id='breadcrums-Portfolio Management']"
Drop_Down_Edit_Assign_To = "//div[@id='strategy-outcome-assign-to']"
Drop_Down_INPUT_Edit_Search_Member = "//input[@id='search-field']"
BTN_OKR_Delete = "//p[contains(text(),'Delete')]"
BTN_Strategic_Delete_Cancel = "//button[@id='common-delete-cancel-btn']"
BTN_Strategic_Delete_Confirm ="//button[@id='common-delete-confirm-btn']"
BTN_Create_OKR = "//button[@id='so-okr-add-okr-btn']"
BTN_OKR_Expand = "//tbody/tr[1]/td[1]/span[1]/button[1]/*[1]" #id required
BTN_Add_Result = "//button[@id='okr-add-result-{name}']"
BTN_Add_Key_Results = "//button[@id='create-sc-keyResultNullState-btn']"
INPUT_Search_Key_Results = "//input[@id='keyresult-search-input']"
BTN_More_Key_Results ="//div[@id='keyresult-more-btn-{name}']"
INPUT_Search_OKR = "//input[@id='okr-search-input']"
INPUT_Key_Result_Name = "//input[@id='keyresult-key-result']"
INPUT_Key_Result_Description = "//textarea[@id='keyresult-description']"
INPUT_Key_Result_Baseline = "//input[@id='keyresult-basline']"
INPUT_Key_Result_Unit = "//input[@id='keyresult-uom']"
INPUT_Key_Result_Dropdown = "//div[@id='keyresult-assign-to']"
INPUT_Key_Result_Dropdown_Input = "//input[@id='search-field']"
BTN_Key_Result_Cancel = "//p[contains(text(),'Cancel')]"
BTN_Key_Result_Edit_Cancel = "//button[@id='keyresult-edit-cancel']"
BTN_Key_Result_Edit_Save = "//button[@id='keyresult-edit-save']"
BTN_Key_Result_Save = "//p[contains(text(),'Save')]"
BTN_Key_Result_Edit = "//p[contains(text(),'Edit')]"
BTN_Key_Result_Delete = "//p[contains(text(),'Delete')]"
BTN_Key_Result_Delete_Cancel = "//button[@id='common-delete-cancel-btn']"
BTN_Key_Result_Delete_Confirm = "//button[@id='common-delete-confirm-btn']"
Drop_Down_LI_Iyyappan = "//li[@id='Iyyappan']"
Back_to_SO = '//i[@id="back-to-so-{name}"]'
Back_to_OKR = '//i[@id="back-to-okr-{name}"]'
Radio_SO_Active = '//p[text()="Active"]'
Radio_SO_Inactive = '//p[text()="Inactive"]'
Radio_OKR_Active = '//p[text()="Active"]'
Radio_OKR_Inactive = '//p[text()="Inactive"]'
Radio_key_Result_Active = '//p[text()="Active"]'
Radio_Key_Result_Inactive = '//p[text()="Inactive"]'
OBJ_KEY_RES_NAME = "//td[@id='custom-id-{name}']"
Portfolio_Name = '//td[@id="custom-id-{name}"]'

# Edit Key Result- Advance Settings
BTN_EK_Add_Quarter = "//button[@id='keyresult-details-add-quarter']"
Drop_Down_EK_Year = "//div[@id='keyresult-details-year_0']"
INPUT_EK_Year = "//input[@id='search-field']"
EK_Select_Year = "//li[@id='2024']"
Drop_Down_EK_Quarter = "//div[@id='keyresult-details-quarter_0']"
INPUT_EK_Quarter = "//input[@id='search-field']"
EK_Select_Quarter = "//li[@id='Quarter 1']"
INPUT_EK_Target= "//input[@id='keyresult-details-target_0']"
INPUT_EK_Actual = "//input[@id='keyresult-details-actual_0']"

# Portfolio_User_Access
Settings_Tab = '//a[@id="Settings-tabs"]'
User_Access_Tab = "//p[@id='tabs-name-User Access']"
BTN_Add_User = "//button[@id=' Portfolio-setting-add-user-access']"
INPUT_Search_Add_User= "//input[@id='search-field']"
INPUT_Search_User_Access = "//input[@id=' Portfolio-user-access-input-search']"
Drop_Down_Select_Name = "//li[@id='label-iyyappan']"
Drop_Down_Search_Add_user = "//input[@id='checkbox-{name}']"
BTN_Add_user_Cancel = "//button[@id='useraccess-cancel-btn']" 
BTN_Add_user_Save = "//button[@id='useraccess-save-btn']"
TXT_Header_Add_User = "//p[@id='popup-header-Add Users']"
BTN_More_UA = "//div[@id=' Portfolio-useraccess-more-btn-{name}']"
BTN_Assign_Role = "//li[@id=' Portfolio-useraccess-assgin-role-{name}']"
BTN_Assign_Role_Admin = "//li[@id=' Portfolio-useraccess-assgin-role-admin-{name}']"
BTN_Assign_Role_Viewer = "//li[@id=' Portfolio-useraccess-assgin-role-viewer-{name}']"
UA_More_Delete = "//li[@id=' Portfolio-useraccess-delete-{name}']"

# Product_Roadmap
Roadmap_Tab = "//p[@id='tabs-name-Road Map']"
INPUT_Search_Roadmap = "//input[@id='roadmap-search-input']"
BTN_Add_Road_Map = "//button[@id='roadmap-nullstate-btn']"
DropDown_Select_Create_New_Roadmap = "//li[@id='Create-New-Roadmap']"
INPUT_Create_Roadmap = '//input[@id="portfolio-management-roadmap-name"]'
Navigate_Roadmap = '//td[@id="custom-id-{name}"]'
Dropdown_Link_Roadmap = "//li[@id='Link-Roadmap']"
Dropdown_Attach_Roadmap = "//li[@id='Attach-Roadmap']"
BTN_Add_Category_Roadmap = "//button[@id='add-category-roadmap-btn']"
# BTN_Add_Milestone = "//button[@id='add-milestone-roadmap-btn']"
INPUT_Category_Name = "//input[@id='road-map-tg-add-category-name']"
CHOOSE_COLOR_Purple = "//div[@id='road-map-tg-tl-add-category-color-#A38EF4']"
CHOOSE_COLOR_Pink = "//div[@id='road-map-tg-tl-add-category-color-#FBB6F0']"
Dropdown_default_Daily = "//div[@id='roadmap-view-dp']"
Dropdown_Yearly = "//li[@id='Yearly']"
Dropdown_Quartly = "//li[@id='Quarter']"
Dropdown_Monthly = "//li[@id='Monthly']"
Dropdown_Weekly = "//li[@id='Weekly']"
Dropdown_Daily = "//li[@id='Daily']"
# BTN_Add_Milestone = "//button[@id='roadmap-add-milestone']"
INPUT_Milestone_Name = "//input[@id='road-map-tg-add-milestone-name']"
Dropdown_Milestone_Select_Type = "//div[@id='road-map-tg-add-milestone-release']"
Dropdown_Minor_Release = "//li[@id='Minor Release']"
Dropdown_Major_Release = "//li[@id='Major Release']"
ICON_Milestone_Minor = "//span[@id='roadmap-milestone-release-{name}']"
BTN_Add_Icon = "//div[@id='road-map-tg-cat-group-add-{name}']"
BTN_Edit_Icon = "//div[@id='road-map-tg-cat-group-edit-{name}']"
BTN_Delete_Icon = "//div[@id='road-map-tg-cat-group-delete-{name}']"
Task_Name = "//input[@id='road-sc-task-roadmap-name']"
BTN_Roadmap_Back_btn = "//i[@id='roadmap-scheduler-backaButton-arrow']"
Breadcrums_Product = "//p[@id='breadcrums-Sample Product']"
Breadcrums_PPG = "//p[@id='breadcrums-Sample PPG']"
Breadcrums_portfolio = "//p[@id='breadcrums-NARESH S']"
Breadcrums_Portfolio_Management = "//p[@id='breadcrums-Portfolio Management']"
Mouse_over_category = '//p[@id="roadmap-category-{name}"]'
BTN_Kebab_Roadmap = "//div[@id='roadmap-action-{name}']"
BTN_More_Edit_Roadmap = '//li[@id="roadmap-edit-{name}"]'
BTN_More_Delete_Roadmap ='//li[@id="roadmap-delete-{name}"]' 
# roadmap
BTN_ROADMAP_ADD_CATEGORY = '//button[@id="roadmap-add-category"]'
BTN_ROADMAP_EDIT_CATEGORY = '//div[@id="road-map-tg-cat-group-edit-{name1}"]'
BTN_ROADMAP_ADD = '//div[@id="road-map-tg-cat-group-add-{name}"]'
BTN_ROADMAP_EDIT_TASK = '//div[@id="roadmap-items-task-{name2}"]'
BTN_ROADMAP_DELETE ='//div[@id="road-map-tg-cat-group-delete-{name}"]'
INPUT_CATEGORY_NAME = '//input[@id="road-map-tg-add-category-name"]'
INPUT_CHOOSE_COLOR = '//div[@id="road-map-tg-tl-add-category-color-{color}"]'
INPUT_TASK_NAME = '//input[@id="road-sc-task-roadmap-name"]'
INPUT_TASK_START_DATE = '//div[@id="road-sc-task-start-date"]/parent::div/descendant::input'
INPUT_TASK_END_DATE = '//div[@id="road-sc-task-end-date"]/parent::div/descendant::input'
BTN_ADD_MILESTONE = '//button[@id="roadmap-add-milestone"]'
BTN_EDIT_MILESTONE = '//span[@id="roadmap-milestone-release-{name}"]'
INPUT_MILESTONE_DATE = '//div[@id="road-map-tg-add-milestone-date"]/parent::div/descendant::input'

# Portfolio-Finance Settings
TAB_Finance_Settings = '//div[@id="portfolio-setting-Finance SettingsFinance Area"]'
BTN_New_Area = '//button[@id="finance-area-add-area"]'
Financial_Area = '//div[@id="portfoilo-finacial-area-name"]'
DD_Financial_Area = '//li[@id="{name} - Capital"]'
TXT_Financial_Area_Des = '//textarea[@id="portfoilo-finacial-area-description"]'
Search_Financial_Cat = '//input[@id="search-field"]'
Select_Financial_Cat = '//li[@id="label-{name}"]'
BTN_Add_Categories = '//button[@id="portfolio-finance-area-add-category-{name} - Capital"]'
Kebab_Financial_Area = '//div[@id="portfolio-finance-area-action-{name} - Capital"]'
BTN_Financial_Area_Edit = '//li[@id="portfolio-finance-area-edit-{name} - Capital"]'
BTN_Financial_Area_Detele = '//li[@id="portfolio-finance-area-delete-{name} - Capital"]'
Search_Financial_Area = '//input[@id="portfolio-settings-finance-area-search"]'
# PPG Finance
Navigate_PPG = '//td[@id="custom-id-{name}"]'
TAB_PPG_Finance  = '//a[@id="Finance-tabs"]'
BTN_Add_Schedule_PPG = '//button[@id="create-ppg-finace-null-state"]'
Input_Schedule_PPG = '//input[@id="ppg-finance-schedule-name"]'
Input_Sch_Des_PPG = '//input[@id="ppg-finance-schedule-description"]'
Input_Sch_Date_PPG = '//input[@placeholder="YYYY"]'
Navigate_Schedule = '//button[@id="vertical-tab-1"]'
BTN_Add_Data_sch_PPG = '//button[@id="product-finance-add-data"]'
Input_Des_AD_Sch_PPG = '//input[@id="ppg-finance-add-data-description"]'
DD_FA_AD_Sch_PPG = '//div[@id="ppg-finance-add-data-financial-area"]'
Select_FA_AD_Sch = '//li[@id="{name} - Capital"]'
DD_Build_run = '//div[@id="ppg-finance-add-data-build"]'
Select_Build_run = '//li[@id="{name}"]'
DD_Category_AD_Sch_PPG = '//div[@id="ppg-finance-add-data-category"]'
Select_Category_AD_Sch = '//li[@id="{name}"]'
DD_Spend_Type_AD_Sch_PPG = '//div[@id="ppg-finance-add-data-spend-type"]'
Select_Spend_Type_AD_Sch = '//li[@id="{name}"]'
Kebab_AD_Sch_PPG = '//div[@id="latest-thinking-more-btn-0"]'
# Product Finance 
Navigate_Product = '//td[@id="custom-id-{name}"]'
TAB_Product_Finance = '//div[@id="product-finance"]'
BTN_Add_Schedule_Product = '//button[@id="product-finance-nullstate-addnewdata"]'
Input_Schedule_Product = '//input[@id="ppg-product-finance-schedule-name"]'
Input_Sch_Des_Product = '//input[@id="ppg-product-finance-schedule-description"]'
BTN_Add_Data_Product_Sch  = '//button[@id="product-finance-add-data"]'
Input_Des_AD_Sch_Product = '//input[@id="ppg-product-finance-add-data-description"]'
DD_FA_AD_Sch_Product = '//div[@id="ppg-product-finance-add-data-financial-area"]'
DD_Build_run_Product = '//div[@id="ppg-product-finance-add-data-build"]'
DD_Category_AD_Sch_Product = '//div[@id="ppg-product-finance-add-data-category"]'
DD_Squad_AD_Sch_Product = '//div[@id="ppg-product-finance-add-data-squad"]'
Select_Squad_AD_Sch_Product = '//li[@id="{name}"]'
DD_Spend_Type_AD_Sch_Product = '//div[@id="ppg-product-finance-add-data-spend-type"]'
Kebab_AD_Sch_Product_PPG = '//div[@id="latest-thinking-more-btn-0"]'
BTN_Edit_AD_Sch_Product_PPG = '//li[@id="edit-latest-thinking-{name}-0"]'

