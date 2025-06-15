namespace go education
include "common/base.thrift"



service educationservice {
  // 创建主体
  CreateAppResp CreateApp(1:CreateAppReq req)(
     api.post = '/education/CreateApp'
     api.serializer = 'json'
  );
  // 登录
  LoginResp Login(1:LoginReq req)(
     api.post = '/education/Login'
     api.serializer = 'json'
  );
  // 创建用户
  CreateUserResp CreateUser(1:CreateUserReq req)(
     api.post = '/education/CreateUser'
     api.serializer = 'json'
  );
  // 创建角色
  CreateRoleResp CreateRole(1:CreateRoleReq req)(
     api.post = '/education/CreateRole'
     api.serializer = 'json'
  );
  // 删除用户
  DeleteUserResp DeleteUser (1:DeleteUserReq req)(
     api.post = '/education/DeleteUser'
     api.serializer = 'json'
  );
  // 获取用户列表
  GetUserListResp GetUserList(1:GetUserListReq req)(
     api.post = '/education/GetUserList'
     api.serializer = 'json'
  );
  // 获取角色列表
  GetRoleListResp GetRoleList(1:GetRoleListReq req)(
     api.post = '/education/GetRoleList'
     api.serializer = 'json'
  )
   // 创建权限
    CreatePermissionResp CreatePermission(1:CreatePermissionReq req)(
      api.post = '/system/CreatePermission'
      api.serializer = 'json'
    )

  // 获取权限列表
  GetPermissionListResp GetPermissionList(1:GetPermissionListReq req)(
     api.post = '/education/GetPermissionList'
     api.serializer = 'json'
  )

  // 获取菜单
  GetMenuResp GetMenu(1:GetMenuReq req)(
     api.post = '/education/GetMenu'
     api.serializer = 'json'
  )

  // 获取菜单列表
  GetMenuListResp GetMenuList(1:GetMenuListReq req)(
     api.post = '/education/GetMenuList'
     api.serializer = 'json'
  )

  // 获取用户信息
  GetUserInfoResp GetUserInfo(1:GetUserInfoReq req)(
     api.post = '/education/GetUserInfo'
     api.serializer = 'json'
  )

  // 获取权限码
  GetAuthCodeResp GetAuthCode(1:GetAuthCodeReq req)(
     api.post = '/education/GetAuthCode'
     api.serializer = 'json'
  )



  // 设置用户角色
   SetUserRoleResp SetUserRole(1:SetUserRoleReq req)(
      api.post = '/education/SetUserRole'
      api.serializer = 'json'
  )
     // 设置角色权限
   SetRolePermissionResp SetRolePermission(1:SetRolePermissionReq req)(
        api.post = '/education/SetRolePermission'
        api.serializer = 'json'
     )

    // 设置角色菜单
    SetRoleMenuResp SetRoleMenu(1:SetRoleMenuReq req)(
        api.post = '/education/SetRoleMenu'
        api.serializer = 'json'
    )
   // 创建菜单
   CreateMenuResp CreateMenu(1:CreateMenuReq req)(
       api.post = '/education/CreateMenu'
       api.serializer = 'json'
   )
   // 创建教研室
   CreateOfficeResp CreateOffice(1:CreateOfficeReq req)(
       api.post = '/education/CreateOffice'
       api.serializer = 'json'
   )


   // 获取教研室
   GetOfficeListResp GetOfficeList(1:GetOfficeListReq req)(
       api.post = '/education/GetOfficeList'
       api.serializer = 'json'
   )

   // 获取班级
   GetClassListResp GetClassList(1:GetClassListReq req)(
       api.post = '/education/GetClassList'
       api.serializer = 'json'
   )

   // 导入课程申请数据
   ImportCourseApplyResp ImportCourseApply(1: ImportCourseApplyReq req)(
      api.post = '/education/ImportCourseApply'
      api.serializer = 'json'
   )

   // 获取课程申请数据列表
   GetCourseApplyListResp GetCourseApplyList(1:GetCourseApplyListReq req)(
      api.post = '/education/GetCourseApplyList'
      api.serializer = 'json'
   )

   // 获取自己的课程申请填报
   GetSelfCourseApplyListResp GetSelfCourseApplyList(1:GetSelfCourseApplyListReq req)(
      api.post = '/education/GetSelfCourseApplyList'
      api.serializer = 'json'
   )

   // 导入用户
   ImportUserResp ImportUser(1:ImportUserReq req)(
      api.post = '/education/ImportUser'
      api.serializer = 'json'
   )

   // 删除课程申请
   DeleteCourseApplyResp DeleteCourseApply(1:DeleteCourseApplyReq req)(
       api.post = '/education/DeleteCourseApply'
       api.serializer = 'json'
   )

   // 审核课程申请
   ApproveCourseApplyResp ApproveCourseApply(1:ApproveCourseApplyReq req)(
      api.post = '/education/ApproveCourseApply'
      api.serializer = 'json'
   )

   // 重置课程申请
   ResetCourseApplyResp ResetCourseApply(1:ResetCourseApplyReq req)(
      api.post = '/education/ResetCourseApply'
      api.serializer = 'json'
   )

   // 填写课程申请
   FillCourseApplyResp FillCourseApply(1:FillCourseApplyReq req)(
      api.post = '/education/FillCourseApply'
      api.serializer = 'json'
   )

   // 导出自查表
   ExportSelfCheckTableResp ExportSelfCheckTable(1:ExportSelfCheckTableReq req)(
      api.post = '/education/ExportSelfCheckTable'
      api.serializer = 'json'
   )

   // 导出责任书
   ExportResponsibilityResp ExportResponsibility(1:ExportResponsibilityReq req)(
      api.post = '/education/ExportResponsibility'
      api.serializer = 'json'
   )

   // 导出所有自查表
   ExportAllSelfCheckTableResp ExportAllSelfCheckTable(1:ExportAllSelfCheckTableReq req)(
      api.post = '/education/ExportAllSelfCheckTable'
      api.serializer = 'json'
   )

   // UpdateCourseApply 更新课程申请
   UpdateCourseApplyResp UpdateCourseApply(1:UpdateCourseApplyReq req)(
      api.post = '/education/UpdateCourseApply'
      api.serializer = 'json'
   )

   // 导出申报表
   ExportCourseApplyResp ExportCourseApply(1:ExportCourseApplyReq req)(
      api.post = '/education/ExportCourseApply'
      api.serializer = 'json'
   )

   // 导出汇总表
   ExportCourseApplySummaryResp ExportCourseApplySummary(1:ExportCourseApplySummaryReq req)(
      api.post = '/education/ExportCourseApplySummary'
      api.serializer = 'json'
   )

   // 一键审核
   OneKeyApproveCourseApplyResp OneKeyApproveCourseApply(1:OneKeyApproveCourseApplyReq req)(
      api.post = '/education/OneKeyApproveCourseApply'
      api.serializer = 'json'
   )


   // 获取下拉框数据
   GetSelectDataResp GetSelectData(1:GetSelectDataReq req)(
      api.post = '/education/GetSelectData'
      api.serializer = 'json'
   )

   // 获取教学人员基本信息
   GetTeacherInfoListResp GetTeacherInfoList(1:GetTeacherInfoListReq req)(
      api.post = '/education/GetTeacherInfoList'
      api.serializer = 'json'
   )

   // 导入教师信息
   ImportTeacherInfoResp ImportTeacherInfo(1:ImportTeacherInfoReq req)(
      api.post = '/education/ImportTeacherInfo'
      api.serializer = 'json'
   )

   // 更新教师信息
   UpdateTeacherInfoResp UpdateTeacherInfo(1:UpdateTeacherInfoReq req)(
      api.post = '/education/UpdateTeacherInfo'
      api.serializer = 'json'
   )

   // 设置是否启用
   SetTeacherInfoStatusResp SetTeacherInfoStatus(1:SetTeacherInfoStatusReq req)(
      api.post = '/education/SetTeacherInfoStatus'
      api.serializer = 'json'
   )

   // 排序教学人员信息
   OrderTeacherInfoResp OderTeacherInfo(1:OrderTeacherInfoReq req)(
      api.post = '/education/OrderTeacherInfo'
      api.serializer = 'json'
   )

    // 更新菜单
    UpdateMenuResp UpdateMenu(1:UpdateMenuReq req);

    // 删除菜单
    DeleteMenuResp DeleteMenu(1:DeleteMenuReq req);

    // 获取token
    GetTokenResp GetToken(1:GetTokenReq req);

    // 修改角色
    UpdateRoleResp UpdateRole(1:UpdateRoleReq req)(
        api.post = '/education/UpdateRole'
        api.serializer = 'json'
    );

    // 设置角色状态
    SetRoleStatusResp SetRoleStatus(1:SetRoleStatusReq req)(
        api.post = '/education/SetRoleStatus'
        api.serializer = 'json'
    )

    // 删除角色
    DeleteRoleResp DeleteRole(1:DeleteRoleReq req)(
        api.post = '/education/DeleteRole'
        api.serializer = 'json'
    )

    // 删除教研室
    DeleteOfficeResp DeleteOffice(1:DeleteOfficeReq req)(
        api.post = '/education/DeleteOffice'
        api.serializer = 'json'
    )
    // 更新教研室
    UpdateOfficeResp UpdateOffice(1:UpdateOfficeReq req)(
        api.post = '/education/UpdateOffice'
        api.serializer = 'json'
    )
    // 修改用户
    UpdateUserResp UpdateUser(1:UpdateUserReq req)(
        api.post = '/education/UpdateUser'
        api.serializer = 'json'
    )

    // 重设密码
    ResetPasswordResp ResetPassword(1:ResetPasswordReq req)(
        api.post = '/education/ResetPassword'
        api.serializer = 'json'
    )

    //  删除教学人员基本信息
    DeleteTeacherInfoResp DeleteTeacherInfo(1:DeleteTeacherInfoReq req)(
        api.post = '/education/DeleteTeacherInfo'
        api.serializer = 'json'
    )

    // 创建教学人员基本信息
    CreateTeacherInfoResp CreateTeacherInfo(1:CreateTeacherInfoReq req)(
        api.post = '/education/CreateTeacherInfo'
        api.serializer = 'json'
    )

    // 导出教学人员基本信息
    ExportTeacherInfoResp ExportTeacherInfo(1:ExportTeacherInfoReq req)(
        api.post = '/education/ExportTeacherInfo'
        api.serializer = 'json'
    )

    // 获取课程列表
    GetCourseListResp GetCourseList(1:GetCourseListReq req)(
        api.post = '/education/GetCourseList'
        api.serializer = 'json'
    )

    // 删除课程
    DeleteCourseResp DeleteCourse(1:DeleteCourseReq req)(
        api.post = '/education/DeleteCourse'
        api.serializer = 'json'
    )

    // 导入课程
    ImportCourseResp ImportCourse(1:ImportCourseReq req)(
        api.post = '/education/ImportCourse'
        api.serializer = 'json'
    )

    // 更新课程
    UpdateCourseResp UpdateCourse(1:UpdateCourseReq req)(
        api.post = '/education/UpdateCourse'
        api.serializer = 'json'
    )

    // 获取自己课程列表
    GetSelfCourseListResp GetSelfCourseList(1:GetSelfCourseListReq req)(
        api.post = '/education/GetSelfCourseList'
        api.serializer = 'json'
    )

   // 获取课程申请列表
   GetCourseApplicationListResp GetCourseApplicationList(1:GetCourseApplicationListReq req)(
        api.post = '/education/GetCourseApplicationList'
        api.serializer = 'json'
   )
   // DeleteCourseApplication 删除调课申请
   DeleteCourseApplicationResp DeleteCourseApplication(1:DeleteCourseApplicationReq req)(
        api.post = '/education/DeleteCourseApplication'
        api.serializer = 'json'
   )
    // 获取自己调课申请列表
     GetSelfCourseApplicationListResp GetSelfCourseApplicationList(1:GetSelfCourseApplicationListReq req)(
           api.post = '/education/GetSelfCourseApplicationList'
           api.serializer = 'json'
      )

    // 调课
    AdjustCourseApplicationResp AdjustCourseApplication(1:AdjustCourseApplicationReq req)(
        api.post = '/education/AdjustCourseApplication'
        api.serializer = 'json'
    )

    // 获取holiday列表
    GetHolidayListResp GetHolidayList(1:GetHolidayListReq req)(
        api.post = '/education/GetHolidayList'
        api.serializer = 'json'
    )
    // 删除holiday
    DeleteHolidayResp DeleteHoliday(1:DeleteHolidayReq req)(
        api.post = '/education/DeleteHoliday'
        api.serializer = 'json'
    )
    // 创建holiday
    CreateHolidayResp CreateHoliday(1:CreateHolidayReq req)(
        api.post = '/education/CreateHoliday'
        api.serializer = 'json'
    )
    // 更新holiday
    UpdateHolidayResp UpdateHoliday(1:UpdateHolidayReq req)(
        api.post = '/education/UpdateHoliday'
        api.serializer = 'json'
    )

    // 获取实习课
    GetInternshipListResp GetInternshipList(1:GetInternshipListReq req)(
        api.post = '/education/GetInternshipList'
        api.serializer = 'json'
    )
    // 删除实习课
    DeleteInternshipResp DeleteInternship(1:DeleteInternshipReq req)(
        api.post = '/education/DeleteInternship'
        api.serializer = 'json'
    )
    // 更新实习课
    UpdateInternshipResp UpdateInternship(1:UpdateInternshipReq req)(
        api.post = '/education/UpdateInternship'
        api.serializer = 'json'
    )
    // 创建实习课
    CreateInternshipResp CreateInternship(1:CreateInternshipReq req)(
        api.post = '/education/CreateInternship'
        api.serializer = 'json'
    )
    // 导入实习课
    ImportInternshipResp ImportInternship(1:ImportInternshipReq req)(
        api.post = '/education/ImportInternship'
        api.serializer = 'json'
    )

    // 获取实训课
    GetTrainingCourseListResp GetTrainingCourseList(1:GetTrainingCourseListReq req)(
        api.post = '/education/GetTrainingCourseList'
        api.serializer = 'json'
    )
    // 创建实训课
    CreateTrainingCourseResp CreateTrainingCourse(1:CreateTrainingCourseReq req)(
        api.post = '/education/CreateTrainingCourse'
        api.serializer = 'json'
    )

    // 删除实训课
    DeleteTrainingCourseResp DeleteTrainingCourse(1:DeleteTrainingCourseReq req)(
        api.post = '/education/DeleteTrainingCourse'
        api.serializer = 'json'
    )

    // 更新实训课
    UpdateTrainingCourseResp UpdateTrainingCourse(1:UpdateTrainingCourseReq req)(
        api.post = '/education/UpdateTrainingCourse'
        api.serializer = 'json'
    )

    // 更新实训课教师
    UpdateTrainingCourseTeacherResp UpdateTrainingCourseTeacher(1:UpdateTrainingCourseTeacherReq req)(
        api.post = '/education/UpdateTrainingCourseTeacher'
        api.serializer = 'json'
    )

    // 导入实训课
    ImportTrainingCourseResp ImportTrainingCourse(1:ImportTrainingCourseReq req)(
        api.post = '/education/ImportTrainingCourse'
        api.serializer = 'json'
    )

    // 获取自己实训课
    GetSelfTrainingCourseListResp GetSelfTrainingCourseList(1:GetSelfTrainingCourseListReq req)(
        api.post = '/education/GetSelfTrainingCourseList'
        api.serializer = 'json'
    )

    // 同步期末考试信息
    SyncFinalExamResp SyncFinalExam(1:SyncFinalExamReq req)(
        api.post = '/education/SyncFinalExam'
        api.serializer = 'json'
    )

    // 获取期末考试列表
    GetFinalExamListResp GetFinalExamList(1:GetFinalExamListReq req)(
        api.post = '/education/GetFinalExamList'
        api.serializer = 'json'
    )

    // 获取期末考试科目列表
    GetFinalExamSubjectListResp GetFinalExamSubjectList(1:GetFinalExamSubjectListReq req)(
        api.post = '/education/GetFinalExamSubjectList'
        api.serializer = 'json'
    )

    // 更新期末考试
    UpdateFinalExamResp UpdateFinalExam(1:UpdateFinalExamReq req)(
        api.post = '/education/UpdateFinalExam'
        api.serializer = 'json'
    )

    // 导出期末考试
    ExportFinalExamResp ExportFinalExam(1:ExportFinalExamReq req)(
        api.post = '/education/ExportFinalExam'
        api.serializer = 'json'
    )

    // 计算期末考试工作量
    CalculateFinalExamWorkloadResp CalculateFinalExamWorkload(1:CalculateFinalExamWorkloadReq req)(
        api.post = '/education/CalculateFinalExamWorkload'
        api.serializer = 'json'
    )

    // 删除期末考试数据
    DeleteFinalExamResp DeleteFinalExam(1:DeleteFinalExamReq req)(
        api.post = '/education/DeleteFinalExam'
        api.serializer = 'json'
    )

    //填写期末考试出卷
    FillFinalExamPaperResp FillFinalExamPaper(1:FillFinalExamPaperReq req)(
        api.post = '/education/FillFinalExamPaper'
        api.serializer = 'json'
    )

    // 获取期末考试填写记录列表
    GetFinalExamRecordListResp GetFinalExamFillRecordList(1:GetFinalExamRecordListReq req)(
        api.post = '/education/GetFinalExamRecordList'
        api.serializer = 'json'
    )

    // 删除期末考试填写记录
    DeleteFinalExamRecordResp DeleteFinalExamRecord(1:DeleteFinalExamRecordReq req)(
        api.post = '/education/DeleteFinalExamRecord'
        api.serializer = 'json'
    )

    // 更新期末考试填写记录
    UpdateFinalExamRecordResp UpdateFinalExamRecord(1:UpdateFinalExamRecordReq req)(
        api.post = '/education/UpdateFinalExamRecord'
        api.serializer = 'json'
    )

    // 获取考试科目班级
    GetFinalExamClassListResp GetFinalExamClassList(1:GetFinalExamClassListReq req)(
        api.post = '/education/GetFinalExamClassList'
        api.serializer = 'json'
    )

    // 获取期初补考数据列表
    GetBeginExamListResp  GetBeginExamList(1:GetBeginExamListReq req) (
        api.post = '/education/GetBeginExamList'
        api.serializer = 'json'
    )

    // 更新期初补考数据
    UpdateBeginExamResp UpdateBeginExam(1:UpdateBeginExamReq req)(
        api.post = '/education/UpdateBeginExam'
        api.serializer = 'json'
    )

    // 创建期初补考数据
    CreateBeginExamResp CreateBeginExam(1:CreateBeginExamReq req)(
        api.post = '/education/CreateBeginExam'
        api.serializer = 'json'
    )

    // 删除期初补考数据
    DeleteBeginExamResp DeleteBeginExam(1:DeleteBeginExamReq req)(
        api.post = '/education/DeleteBeginExam'
        api.serializer = 'json'
    )


    // 导入期初补考数据
    ImportBeginExamResp ImportBeginExam(1:ImportBeginExamReq req)(
        api.post = '/education/ImportBeginExam'
        api.serializer = 'json'
    )


    // 获取角色菜单
    GetRoleMenuResp GetRoleMenu(1:GetRoleMenuReq req)(
        api.post = '/education/GetRoleMenu'
        api.serializer = 'json'
    )

    // 上传签名
    UploadSignResp UploadSign(1:UploadSignReq req)(
        api.post = '/education/UploadSign'
        api.serializer = 'json'
    )


   // 获取部门课程资源
   GetDepartmentCourseApplyListResp GetDepartmentCourseApplyList(1:GetDepartmentCourseApplyListReq req)(
       api.post = '/education/GetDepartmentCourseApplyList'
       api.serializer = 'json'
   )

   // 修改密码
   UpdatePasswordResp UpdatePassword(1:UpdatePasswordReq req)(
       api.post = '/education/UpdatePassword'
       api.serializer = 'json'
   )
   // GetUserSign
   GetUserSignResp GetUserSign(1:GetUserSignReq req)(
       api.post = '/education/GetUserSign'
       api.serializer = 'json'
   )

   // 到出所有责任书
   ExportAllResponsibilityResp ExportAllResponsibility(1:ExportAllResponsibilityReq req)(
       api.post = '/education/ExportAllResponsibility'
       api.serializer = 'json'
   )

   // ==============================================================================================================


   // 获取工作量记录
   GetWorkloadStatisticsRecordListResp GetWorkloadStatisticsRecordList(1:GetWorkloadStatisticsRecordListReq req)(
       api.post = '/education/GetWorkloadStatisticsRecordList'
       api.serializer = 'json'
   )

   // 删除工作量记录
   DeleteWorkloadStatisticsRecordResp DeleteWorkloadStatisticsRecord(1:DeleteWorkloadStatisticsRecordReq req)(
       api.post = '/education/DeleteWorkloadStatisticsRecord'
       api.serializer = 'json'
   )
   // 修改工作量记录备注
   UpdateWorkloadStatisticsRecordResp UpdateWorkloadStatisticsRecord(1:UpdateWorkloadStatisticsRecordReq req)(
       api.post = '/education/UpdateWorkloadStatisticsRecord'
       api.serializer = 'json'
   )

   // 计算理论课程工作量
   CalculateTheoreticalCourseWorkloadResp CalculateTheoreticalCourseWorkload(1:CalculateTheoreticalCourseWorkloadReq req)(
       api.post = '/education/CalculateTheoreticalCourseWorkload'
       api.serializer = 'json'
   )

   // 计算实训课程工作量
   CalculateTrainingCourseWorkloadResp CalculateTrainingCourseWorkload(1:CalculateTrainingCourseWorkloadReq req)(
       api.post = '/education/CalculateTrainingCourseWorkload'
       api.serializer = 'json'
   )

   // 计算实习工作量
   CalculateInternshipWorkloadResp CalculateInternshipWorkload(1:CalculateInternshipWorkloadReq req)(
       api.post = '/education/CalculateInternshipWorkload'
       api.serializer = 'json'
   )


   // 计算期初补考工作量
   CalculateBeginExamWorkloadResp CalculateBeginExamWorkload(1:CalculateBeginExamWorkloadReq req)(
       api.post = '/education/CalculateBeginExamWorkload'
       api.serializer = 'json'
   )

   // 获取工作量详情列表
   GetWorkloadStatisticsListResp GetWorkloadStatisticsList(1:GetWorkloadStatisticsListReq req)(
       api.post = '/education/GetModelWorkloadStatisticsList'
       api.serializer = 'json'
   )

   // 删除工作量详情
   DeleteWorkloadStatisticsResp DeleteWorkloadStatistics(1:DeleteWorkloadStatisticsReq req)(
       api.post = '/education/DeleteWorkloadStatistics'
       api.serializer = 'json'
   )

   // 导出工作量详情
   ExportWorkloadStatisticsResp ExportWorkloadStatistics(1:ExportWorkloadStatisticsReq req)(
       api.post = '/education/ExportWorkloadStatistics'
       api.serializer = 'json'
   )

   // 修改理论课程工作量
   UpdateTheoreticalCourseWorkloadResp UpdateTheoreticalCourseWorkload(1:UpdateTheoreticalCourseWorkloadReq req)(
       api.post = '/education/UpdateTheoreticalCourseWorkload'
       api.serializer = 'json'
   )
   // 修改实训工作量
   UpdateTrainingCourseWorkloadResp UpdateTrainingCourseWorkload(1:UpdateTrainingCourseWorkloadReq req)(
       api.post = '/education/UpdateTrainingCourseWorkload'
       api.serializer = 'json'
   )

   // 修改实习工作量
   UpdateInternshipWorkloadResp UpdateInternshipWorkload(1:UpdateInternshipWorkloadReq req)(
       api.post = '/education/UpdateInternshipWorkload'
       api.serializer = 'json'
   )
   // 修改期初补考工作量
   UpdateBeginExamWorkloadResp UpdateBeginExamWorkload(1:UpdateBeginExamWorkloadReq req)(
       api.post = '/education/UpdateBeginExamWorkload'
       api.serializer = 'json'
   )

   // 导出起初考试
   ExportBeginExamWorkloadResp ExportBeginExamWorkload(1:ExportBeginExamWorkloadReq req)(
       api.post = '/education/ExportBeginExamWorkload'
       api.serializer = 'json'
   )

   // 创建教师工作量详情
   CreateWorkloadStatisticsResp CreateWorkloadStatistics(1:CreateWorkloadStatisticsReq req)(
       api.post = '/education/CreateWorkloadStatistics'
       api.serializer = 'json'
   )
    // 更新教师工作量详情
    UpdateWorkloadStatisticsResp UpdateWorkloadStatistics(1:UpdateWorkloadStatisticsReq req)(
          api.post = '/education/UpdateWorkloadStatistics'
          api.serializer = 'json'
     )


     // 获取学院
     GetCollegeListResp GetCollegeList(1:GetCollegeListReq req)(
         api.post = '/education/GetCollegeList'
         api.serializer = 'json'
     )
}


// jjjjjjj

// =================req\resp===============================

struct GetCollegeListReq{
  1: i32 college_id (go.tag='json:"college_id" binding:"required"');
}

struct GetCollegeListResp {
   1: ModelApp College (go.tag='json:"college"');
}




struct UpdateWorkloadStatisticsReq{
   1: i32 id (go.tag='json:"id" binding:"required"');
// 课程信息
    10: string teach_class (go.tag='json:"teach_class" '); // 教学班
    11: string class_name (go.tag='json:"class_name" '); // 教学班组成
    12: string assessment_method (go.tag='json:"assessment_method" '); // 考核方式
    13: string sae_week (go.tag='json:"sae_week" '); // 教学起始周
    14: string not_class_time (go.tag='json:"not_class_time"'); // 非上班时间上课节次
    15: i32 student_number (go.tag='json:"student_number" '); // 学生总人数
    16: double number_factor (go.tag='json:"number_factor" '); // 人数系数
    17: i32 week_hour (go.tag='json:"week_hour" '); // 每周学时

    //当月教学周数
    18: i32 theory_wn (go.tag='json:"theory_wn" '); // 理论课
    19: i32 training_wn (go.tag='json:"training_wn" '); // 实训课

    // 当月教学工作量统计
    20: double theory_course_hours (go.tag='json:"theory_course_hours" ');  // 理论课课时
    21: i32 training_course_hours(go.tag='json:"training_course_hours" '); // 实训课
    22: i32 internship_hours (go.tag='json:"internship_hours"'); // 实习课时
    23: i32 review_week (go.tag='json:"review_week" '); // 复习周
    24: i32 giving_paper (go.tag='json:"giving_paper"'); // 出卷
    25: double grading_paper (go.tag='json:"grading_paper" '); // 阅卷
    26: double other (go.tag='json:"other" '); // 其他
    27: string material1 (go.tag='json:"material1" '); //佐证材料及编号1
    28: string material2 (go.tag='json:"material2" '); //佐证材料及编号2

    // 当月教学津贴统计
    29: i32 duties_subsidy (go.tag='json:"duties_subsidy" '); // 职务补贴
    30: i32 invigilation_tour (go.tag='json:"invigilation_tour" '); // 监考
    31: i32 traffic_subsidy (go.tag='json:"traffic_subsidy"'); // 交通补贴
    32: i32 work_overtime (go.tag='json:"work_overtime" '); // 加班费
    33: i32 discount (go.tag='json:"discount" '); // 折扣

}

struct UpdateWorkloadStatisticsResp{

}

struct CreateWorkloadStatisticsReq {

    1: i32 record_id (go.tag='json:"record_id" ');
    2 : string c_month (go.tag='json:"c_month" '); // 月份


    5: string academic_year (go.tag='json:"academic_year" ');
    6: string semester (go.tag='json:"semester" ');
    8: string teacher_name (go.tag='json:"teacher_name" ');
    9: string teacher_id (go.tag='json:"teacher_id" ');
    // 课程信息
    10: string teach_class (go.tag='json:"teach_class" '); // 教学班
    11: string class_name (go.tag='json:"class_name" '); // 教学班组成
    12: string assessment_method (go.tag='json:"assessment_method" '); // 考核方式
    13: string sae_week (go.tag='json:"sae_week" '); // 教学起始周
    14: string not_class_time (go.tag='json:"not_class_time"'); // 非上班时间上课节次
    15: i32 student_number (go.tag='json:"student_number" '); // 学生总人数
    16: double number_factor (go.tag='json:"number_factor" '); // 人数系数
    17: i32 week_hour (go.tag='json:"week_hour" '); // 每周学时

    //当月教学周数
    18: i32 theory_wn (go.tag='json:"theory_wn" '); // 理论课
    19: i32 training_wn (go.tag='json:"training_wn" '); // 实训课

    // 当月教学工作量统计
    20: double theory_course_hours (go.tag='json:"theory_course_hours" ');  // 理论课课时
    21: i32 training_course_hours(go.tag='json:"training_course_hours" '); // 实训课
    22: i32 internship_hours (go.tag='json:"internship_hours"'); // 实习课时
    23: i32 review_week (go.tag='json:"review_week" '); // 复习周
    24: i32 giving_paper (go.tag='json:"giving_paper"'); // 出卷
    25: double grading_paper (go.tag='json:"grading_paper" '); // 阅卷
    26: double other (go.tag='json:"other" '); // 其他
    27: string material1 (go.tag='json:"material1" '); //佐证材料及编号1
    28: string material2 (go.tag='json:"material2" '); //佐证材料及编号2

    // 当月教学津贴统计
    29: i32 duties_subsidy (go.tag='json:"duties_subsidy" '); // 职务补贴
    30: i32 invigilation_tour (go.tag='json:"invigilation_tour" '); // 监考
    31: i32 traffic_subsidy (go.tag='json:"traffic_subsidy"'); // 交通补贴
    32: i32 work_overtime (go.tag='json:"work_overtime" '); // 加班费
    33: i32 discount (go.tag='json:"discount" '); // 折扣
    34: i32 category (go.tag='json:"category" '); // 分类
    // ModelWorkloadStatisticsRecord id


}
struct CreateWorkloadStatisticsResp{}

struct ExportBeginExamWorkloadReq {
    1: string academic_year(go.tag='json:"academic_year" ');
    2: string semester(go.tag='json:"semester" ');
    3: string c_month(go.tag='json:"c_month"');
    // ModelWorkloadStatisticsRecord id
    4: i32 record_id (go.tag='json:"record_id"');

    // 1,2,3 和 4 两种选择一种
}

struct ExportBeginExamWorkloadResp{
    1: string task_key (go.tag='json:"task_key"');
}



struct UpdateBeginExamWorkloadReq{
    1: i32 id (go.tag='json:"id" binding:"required"');
    // 课程信息
    2: string teach_class (go.tag='json:"teach_class"'); // 教学班
    3: string class_name (go.tag='json:"class_name"'); // 教学班组成
    4: string assessment_method (go.tag='json:"assessment_method"'); // 考核方式
    5: string sae_week (go.tag='json:"sae_week" '); // 教学起始周
    6: string not_class_time (go.tag='json:"not_class_time" '); // 非上班时间上课节次
    7: i32 student_number (go.tag='json:"student_number"'); // 学生总人数
    8: double number_factor (go.tag='json:"number_factor"'); // 人数系数
    9: i32 week_hour (go.tag='json:"week_hour" '); // 每周学时


    12: i32 review_week (go.tag='json:"review_week" '); // 复习周
    13: i32 giving_paper (go.tag='json:"giving_paper"'); // 出卷
    14: double grading_paper (go.tag='json:"grading_paper" '); //阅卷
    15: double other (go.tag='json:"other" '); // 其他
    16: string material1 (go.tag='json:"material1" '); // 佐证材料及编号1
    17: string material2 (go.tag='json:"material2" '); // 佐证材料及编号2

    // 当月教学津贴统计
    18: i32 duties_subsidy (go.tag='json:"duties_subsidy"');  // 职务补贴
    19: i32 invigilation_tour (go.tag='json:"invigilation_tour" '); // 监考
    20: i32 traffic_subsidy (go.tag='json:"traffic_subsidy" '); // 交通补贴
    21: i32 work_overtime (go.tag='json:"work_overtime" '); // 加班费
    22: i32 discount (go.tag='json:"discount" '); //兼课折扣
}

struct UpdateBeginExamWorkloadResp{}

struct UpdateInternshipWorkloadReq {
     1: i32 id (go.tag='json:"id" binding:"required"');
    // 课程信息
    2: string teach_class (go.tag='json:"teach_class"'); // 教学班
    3: string class_name (go.tag='json:"class_name"'); // 教学班组成
    4: string assessment_method (go.tag='json:"assessment_method"'); // 考核方式
    5: string sae_week (go.tag='json:"sae_week" '); // 教学起始周
    6: i32 student_number (go.tag='json:"student_number"'); // 学生总人数
    7: i32 week_hour (go.tag='json:"week_hour" '); // 每周学时

    8: i32 training_wn (go.tag='json:"training_wn"'); // 实训课
    9: i32 internship_hours (go.tag='json:"internship_hours" '); // 实习课时

    10: double  other (go.tag='json:"other" '); // 其他
    11: string material1 (go.tag='json:"material1" '); // 佐证材料及编号1
    12: string material2 (go.tag='json:"material2" '); // 佐证材料及编号2

    // 当月教学津贴统计
    13: i32 duties_subsidy (go.tag='json:"duties_subsidy"');  // 职务补贴
    14: i32 invigilation_tour (go.tag='json:"invigilation_tour" '); // 监考
    15: i32 traffic_subsidy (go.tag='json:"traffic_subsidy" '); // 交通补贴
    16: i32 work_overtime (go.tag='json:"work_overtime" '); // 加班费
    17: i32 discount (go.tag='json:"discount" '); //兼课折扣
}

struct UpdateInternshipWorkloadResp{

}

struct UpdateTrainingCourseWorkloadReq{
    1: i32 id (go.tag='json:"id" binding:"required"');
    // 课程信息
    2: string teach_class (go.tag='json:"teach_class"'); // 教学班
    3: string class_name (go.tag='json:"class_name"'); // 教学班组成
    4: string assessment_method (go.tag='json:"assessment_method"'); // 考核方式
    5: string sae_week (go.tag='json:"sae_week" '); // 教学起始周
    6: i32 student_number (go.tag='json:"student_number"'); // 学生总人数
    7: i32 week_hour (go.tag='json:"week_hour" '); // 每周学时

    8: i32 training_wn (go.tag='json:"training_wn"'); // 实训课周数
    9: i32 training_course_hours(go.tag='json:"training_course_hours"'); // 实训课

    10: double other (go.tag='json:"other" '); // 其他
    11: string material1 (go.tag='json:"material1" '); // 佐证材料及编号1
    12: string material2 (go.tag='json:"material2" '); // 佐证材料及编号2

    // 当月教学津贴统计
    13: i32 duties_subsidy (go.tag='json:"duties_subsidy"');  // 职务补贴
    14: i32 invigilation_tour (go.tag='json:"invigilation_tour" '); // 监考
    15: i32 traffic_subsidy (go.tag='json:"traffic_subsidy" '); // 交通补贴
    16: i32 work_overtime (go.tag='json:"work_overtime" '); // 加班费
    17: i32 discount (go.tag='json:"discount" '); //兼课折扣

}


struct UpdateTrainingCourseWorkloadResp{}

struct UpdateTheoreticalCourseWorkloadReq {
    1: i32 id (go.tag='json:"id" binding:"required"');
    // 课程信息
    2: string teach_class (go.tag='json:"teach_class"'); // 教学班
    3: string class_name (go.tag='json:"class_name"'); // 教学班组成
    4: string assessment_method (go.tag='json:"assessment_method"'); // 考核方式
    5: string sae_week (go.tag='json:"sae_week" '); // 教学起始周
    6: string not_class_time (go.tag='json:"not_class_time" '); // 非上班时间上课节次
    7: i32 student_number (go.tag='json:"student_number"'); // 学生总人数
    8: double number_factor (go.tag='json:"number_factor"'); // 人数系数
    9: i32 week_hour (go.tag='json:"week_hour" '); // 每周学时

    10: i32 theory_wn (go.tag='json:"theory_wn"'); // 理论课
    11: double theory_course_hours (go.tag='json:"theory_course_hours"'); // 理论课学时

    12: i32 review_week (go.tag='json:"review_week" '); // 复习周
    13: i32 giving_paper (go.tag='json:"giving_paper"'); // 出卷
    14: double grading_paper (go.tag='json:"grading_paper" '); //阅卷
    15: double other (go.tag='json:"other" '); // 其他
    16: string material1 (go.tag='json:"material1" '); // 佐证材料及编号1
    17: string material2 (go.tag='json:"material2" '); // 佐证材料及编号2

    // 当月教学津贴统计
    18: i32 duties_subsidy (go.tag='json:"duties_subsidy"');  // 职务补贴
    19: i32 invigilation_tour (go.tag='json:"invigilation_tour" '); // 监考
    20: i32 traffic_subsidy (go.tag='json:"traffic_subsidy" '); // 交通补贴
    21: i32 work_overtime (go.tag='json:"work_overtime" '); // 加班费
    22: i32 discount (go.tag='json:"discount" '); //兼课折扣
}

struct UpdateTheoreticalCourseWorkloadResp{}

struct ExportWorkloadStatisticsReq{
    // 第一种通过记录i导出
    1 : i32 record_id (go.tag='json:"record_id"');
    // 第二种月份和年份导出
    2 : string academic_year(go.tag='json:"academic_year"');
    3 : string semester(go.tag='json:"semester" ');
    4 : string c_month(go.tag='json:"c_month" ');
    // 两种选择一种
}


struct ExportWorkloadStatisticsResp{
  1: string task_key (go.tag='json:"task_key"');
}


struct DeleteWorkloadStatisticsReq {
   1: list<i32> ids(go.tag='json:"ids" binding:"required"')
}

struct DeleteWorkloadStatisticsResp{

}

struct GetWorkloadStatisticsListReq {
   1: base.ListOption list_option(go.tag='json:"list_option"');
}


enum GetWorkloadStatisticsListReqOption {
    academic_year =1  // 学年
    semester =2 // 学期
    c_month =3  // 周次区间
    teacher_id =4  // 教师号
    teacher_name =5 // 教师姓名
    category =6 // 类别
    teach_class =7 // 教学班级
    record_id = 8 // 记录id
}

struct GetWorkloadStatisticsListResp {
    1: base.Paginate paginate(go.tag='json:"paginate"');
    2: list<ModelWorkloadStatistics> list (go.tag='json:"list"');
    3: map<string, ModelTeacherInfo> teacher_info_map (go.tag='json:"teacher_info_map"');
}




struct CalculateBeginExamWorkloadReq{
   1: string academic_year(go.tag='json:"academic_year" binding:"required"');
   2: string semester(go.tag='json:"semester" binding:"required"');
   3: string c_month(go.tag='json:"c_month" binding:"required"');
}

struct CalculateBeginExamWorkloadResp{
   1: string task_key (go.tag='json:"task_key"');
}

struct CalculateInternshipWorkloadReq {
   1: string academic_year(go.tag='json:"academic_year" binding:"required"');
   2: string semester(go.tag='json:"semester" binding:"required"');
   3: string c_month(go.tag='json:"c_month" binding:"required"');
}


struct CalculateInternshipWorkloadResp{
   1: string task_key (go.tag='json:"task_key"');
}
struct CalculateTrainingCourseWorkloadReq{
   1: string academic_year(go.tag='json:"academic_year" binding:"required"');
   2: string semester(go.tag='json:"semester" binding:"required"');
   3: string c_month(go.tag='json:"c_month" binding:"required"');
}
struct CalculateTrainingCourseWorkloadResp{
   1: string task_key (go.tag='json:"task_key"');
}


struct CalculateTheoreticalCourseWorkloadReq{
   1: string academic_year(go.tag='json:"academic_year" binding:"required"');
   2: string semester(go.tag='json:"semester" binding:"required"');
   3: string c_month(go.tag='json:"c_month" binding:"required"');
}

struct CalculateTheoreticalCourseWorkloadResp{
   1: string task_key (go.tag='json:"task_key"');
}

struct UpdateWorkloadStatisticsRecordReq{
   1: i32 id(go.tag='json:"id" binding:"required"');
   2: string remark(go.tag='json:"remark" binding:"required"');
}

struct UpdateWorkloadStatisticsRecordResp{
}

struct DeleteWorkloadStatisticsRecordReq {
   1: list<i32> ids(go.tag='json:"ids" binding:"required"');
}

struct DeleteWorkloadStatisticsRecordResp{
}

struct GetWorkloadStatisticsRecordListReq {
   1: base.ListOption list_option(go.tag='json:"list_option"');
}


enum GetWorkloadStatisticsRecordListReqOption {
  id =1;
  user_name =2;
  academic_year = 3;
  semester = 4;
  c_month = 5;
}


struct  GetWorkloadStatisticsRecordListResp {
   1: list<ModelWorkloadStatisticsRecord> list (go.tag='json:"list"');
   2: base.Paginate paginate(go.tag='json:"paginate"');
   3: map<string,ModelUser> user_map(go.tag='json:"map_data"');
}

struct ExportAllResponsibilityReq {
   //  学期
   1: string academic_year(go.tag='json:"academic_year" binding:"required"');
   //  学期
   2: string semester(go.tag='json:"semester" binding:"required"');

}


struct ExportAllResponsibilityResp{
   1: string task_key(go.tag='json:"task_key"');
}

struct GetUserSignReq{}


struct GetUserSignResp{
   1: string sign_url(go.tag='json:"sign_url"');
   // 二维码地址
   2: string qr_code_url(go.tag='json:"qr_code_url"');
}

struct UpdatePasswordReq{
   1: string old_password (go.tag='json:"old_password" binding:"required"');
   2: string new_password (go.tag='json:"new_password" binding:"required"');
}


struct UpdatePasswordResp{
}

struct GetDepartmentCourseApplyListReq{
   1: base.ListOption list_option(go.tag='json:"list_option"');
}

enum GetDepartmentCourseApplyListReqOption{
   id = 1;
   course_name = 2; // 课程名称
   academic_year = 3; // 学年
   semester = 4; // 学期
   course_nature = 9; // 课程性质
   is_fill = 5; // 是否已填写
}

struct GetDepartmentCourseApplyListResp{
  1: list<ModelCourseApply> list(go.tag='json:"list"');
  2: base.Paginate paginate(go.tag='json:"paginate"');
  3: map<i32, ModelTeacherOffice> office_map(go.tag='json:"office_map"');
  4: map<i32, ModelClass> class_map(go.tag='json:"class_map"');
}

struct UploadSignReq {
    1: string upload_id (go.tag='json:"upload_id" binding:"required"');
}

struct UploadSignResp{

}


struct GetRoleMenuReq{
    1: i32 role_id (go.tag='json:"role_id" binding:"required"');
}


struct GetRoleMenuResp{
    1: list<i32> role_menu_list (go.tag='json:"role_menu_list"');
}

struct ImportBeginExamReq{
    1: string upload_id (go.tag='json:"upload_id" binding:"required"');
    2: string academic_year (go.tag='json:"academic_year" binding:"required"');
    3: string semester (go.tag='json:"semester" binding:"required"');
}

struct ImportBeginExamResp{
    1: string task_key(go.tag='json:"task_key"');
}


struct DeleteBeginExamReq{
    1: list<i32> ids (go.tag='json:"ids" binding:"required"');
}

struct DeleteBeginExamResp{}



struct CreateBeginExamReq {
    1: string academic_year (go.tag='json:"academic_year" binding:"required"');
    2: string semester (go.tag='json:"semester" binding:"required"');
    3: string course_name (go.tag='json:"course_name" binding:"required"');
    4: i32 expected_num (go.tag='json:"expected_num" binding:"required"'); // 应考人数
    5: i32 actual_num (go.tag='json:"actual_num" binding:"required"'); // 实际人数
    6: string assessment_method (go.tag='json:"assessment_method" binding:"required"'); // 考核方式
    7: string exam_setter (go.tag='json:"exam_setter"'); // 出卷人
    8: string examiner (go.tag='json:"examiner"'); // 阅卷人
    9: string invigilator (go.tag='json:"invigilator"'); // 监考人
    10: string exam_time (go.tag='json:"exam_time"'); // 考试时间
    11: string exam_location (go.tag='json:"exam_location"'); // 考试地点
    12: string teacher_name (go.tag='json:"teacher_name" binding:"required"'); // 教师姓名
    13: string teacher_id (go.tag='json:"teacher_id" binding:"required"'); // 老师id
}

struct CreateBeginExamResp {}

struct UpdateBeginExamReq {
    1: string course_name (go.tag='json:"course_name" binding:"required"');
    2: i32 expected_num (go.tag='json:"expected_num" binding:"required"'); // 应考人数
    3: i32 actual_num (go.tag='json:"actual_num" binding:"required"'); // 实际人数
    4: string assessment_method (go.tag='json:"assessment_method" binding:"required"'); // 考核方式
    5: string exam_setter (go.tag='json:"exam_setter"'); // 出卷人
    7: string examiner (go.tag='json:"examiner"'); // 阅卷人
    8: string invigilator (go.tag='json:"invigilator"'); // 监考人
    9: string exam_time (go.tag='json:"exam_time"'); // 考试时间
    10: string exam_location (go.tag='json:"exam_location"'); // 考试地点
    11: i32 id (go.tag='json:"id" binding:"required"');
}
struct UpdateBeginExamResp{}


struct GetBeginExamListReq {
   1: base.ListOption list_option(go.tag='json:"list_option" binding:"required"');
}

enum GetBeginExamListReqOption {
    academic_year = 1; // 学年
    semester = 2; // 学期
    course_name = 3; // 名称
    teacher_name = 4; // 教师姓名
    teacher_id = 5; // 教师id
}

struct GetBeginExamListResp {
  1: list<ModelBeginExam> list(go.tag='json:"list"');
  2: base.Paginate paginate(go.tag='json:"paginate"');
}

struct GetFinalExamClassListReq{
   1: base.ListOption list_option(go.tag='json:"list_option" binding:"required"');
}


enum GetFinalExamClassListReqOption {
    academic_year = 1; // 学年
    semester = 2; // 学期
    class_name = 3; // 班级
    course_name = 4; // 名称
}

struct FinalExamUserClassList {
     1: string class_name(go.tag='json:"class_name"');
}

struct GetFinalExamClassListResp {
  1: list<FinalExamUserClassList> list(go.tag='json:"list"');
  2: base.Paginate paginate(go.tag='json:"paginate"');
}

struct UpdateFinalExamRecordReq {
   1: i32 id(go.tag='json:"id" binding:"required"');
   2: string class_name (go.tag='json:"class_name" binding:"required"');
   3: string a_proposer (go.tag='json:"a_proposer" binding:"required"');  // A卷命题人
   4: string b_proposer (go.tag='json:"b_proposer"'); //B卷命题人
   5: string c_proposer (go.tag='json:"c_proposer"');  //C卷命题人
}

struct  UpdateFinalExamRecordResp {}

struct DeleteFinalExamRecordReq{
    1: i32 id(go.tag='json:"id" binding:"required"');
}


struct DeleteFinalExamRecordResp{}

struct GetFinalExamRecordListReq{
  1: base.ListOption list_option(go.tag='json:"list_option" binding:"required"');
}

enum GetFinalExamRecordListReqOption {
    academic_year = 1; // 学年
    semester = 2; // 学期
    class_name = 3; // 班级
    course_name = 4; // 名称
}


struct GetFinalExamRecordListResp {
  1: list<ModelFinalExamRecord> list(go.tag='json:"list"');
  2: base.Paginate paginate(go.tag='json:"paginate"');
}


struct FillFinalExamPaperReq{
1: string academic_year(go.tag='json:"academic_year" binding:"required"');
   2: string semester(go.tag='json:"semester" binding:"required"');
   3: string exam_subject (go.tag='json:"exam_subject" binding:"required"');
   4: string class_name (go.tag='json:"class_name" binding:"required"');
   5: string a_proposer (go.tag='json:"a_proposer" binding:"required"');  // A卷命题人
   6: string b_proposer (go.tag='json:"b_proposer"'); //B卷命题人
   7: string c_proposer (go.tag='json:"c_proposer"');  //C卷命题人
   8: string assessment_method (go.tag='json:"assessment_method" binding:"required" '); // 考核方式
}

struct FillFinalExamPaperResp{

}




struct DeleteFinalExamReq{
  1: list<i32> ids(go.tag='json:"ids" binding:"required"');
}

struct DeleteFinalExamResp {
}

struct CalculateFinalExamWorkloadReq {
  1: string academic_year(go.tag='json:"academic_year" binding:"required"');
  2: string semester(go.tag='json:"semester" binding:"required"');
}


struct CalculateFinalExamWorkloadResp {
    1: string task_key(go.tag='json:"task_key"');
}

struct ExportFinalExamReq {
    1: string academic_year(go.tag='json:"academic_year" binding:"required"');
    2: string semester(go.tag='json:"semester" binding:"required"');
}


struct ExportFinalExamResp {
   1: string task_key(go.tag='json:"task_key"');
}


struct UpdateFinalExamReq {
    1: i32 id(go.tag='json:"id" binding:"required"');
    2: string exam_subject (go.tag='json:"exam_subject" binding:"required"'); // 考核方式
    3: string class_name (go.tag='json:"class_name" binding:"required"'); // 班级
    4: i32 exam_workload(go.tag='json:"exam_workload" binding:"required"') // 出卷工作量
    5: i32 scoring_workload (go.tag='json:"scoring_workload" binding:"required"'); // 阅卷量
    6: string scoring_teacher(go.tag='json:"scoring_teacher" binding:"required"') // 阅卷教师
}

struct UpdateFinalExamResp {
}

struct GetFinalExamSubjectListReq {
  1: base.ListOption list_option(go.tag='json:"list_option" binding:"required"');
}

enum GetFinalExamSubjectListReqOption {
    academic_year = 2; // 学年
    semester = 3; // 学期
    class_name = 5; // 班级
    course_name = 6; // 名称
}

struct FinalExamSubject{
    1: string course_name(go.tag='json:"course_name"');
    2: i32 count(go.tag='json:"count"');
}

struct GetFinalExamSubjectListResp{
   1: list<FinalExamSubject> list(go.tag='json:"list"');
   2: base.Paginate paginate(go.tag='json:"paginate"');
}

struct GetFinalExamListReq {
  1: base.ListOption list_option(go.tag='json:"list_option" binding:"required"');
}


enum GetFinalExamListReqOption {
    id = 1;
    academic_year = 2; // 学年
    semester = 3; // 学期
    class_name = 4; // 班级
    course_name = 5; // 名称
}


struct GetFinalExamListResp{
  1: list<ModelFinalExam> list(go.tag='json:"list"');
  2: base.Paginate paginate(go.tag='json:"paginate"');
}

struct SyncFinalExamReq {
  1: string academic_year(go.tag='json:"academic_year" binding:"required" ');
  2: string semester(go.tag='json:"semester"binding:"required" ');

}

struct SyncFinalExamResp{
1: string task_key(go.tag='json:"task_key"');
}

struct GetSelfTrainingCourseListReq {
  1: base.ListOption list_option(go.tag='json:"list_option" binding:"required"');
}

enum GetSelfTrainingCourseListReqOption {
    id = 1;
    academic_year = 2; // 学年
    semester = 3; // 学期
    major = 4; // 专业
    class_name = 5; // 班级
    course_name = 6; // 名称
}

struct GetSelfTrainingCourseListResp {
  1: list<ModelTrainingCourse> list(go.tag='json:"list"');
  2: base.Paginate paginate(go.tag='json:"paginate"');
  3: map<i32,list<ModelTrainingCourseTeacher>> teacher_map(go.tag='json:"teacher_map"');
}


struct ImportTrainingCourseReq {
  1: string academic_year(go.tag='json:"academic_year" binding:"required" '); // 学年
  2: string semester(go.tag='json:"semester"binding:"required" '); // 学期
  3: string upload_id(go.tag='json:"upload_id" binding:"required"'); // 文件上传id

}
struct ImportTrainingCourseResp {
    1 :string task_key (go.tag='json:"task_key"');
}


struct UpdateTrainingCourseTeacherReqItem{
    1: string teacher_id(go.tag='json:"teacher_id"');
    2: string week (go.tag='json:"week"');
}

struct UpdateTrainingCourseTeacherReq {
  1: i32 training_course_id(go.tag='json:"training_course_id" binding:"required"');
  2: list<UpdateTrainingCourseTeacherReqItem> items(go.tag='json:"items" binding:"required"');
}

struct UpdateTrainingCourseTeacherResp {

}


struct UpdateTrainingCourseReq {
  1: i32 id(go.tag='json:"id" binding:"required"');
  2: string major(go.tag='json:"major" binding:"required"');
  3: string class_name(go.tag='json:"class_name" binding:"required"');
  4: i32 student_number(go.tag='json:"student_number" binding:"required"');
  5: string course_name(go.tag='json:"course_name" binding:"required"');
  6: string location(go.tag='json:"location" binding:"required"');
  7: string cooperation_enterprise(go.tag='json:"cooperation_enterprise"');
  8: i32 training_week(go.tag='json:"training_week" binding:"required"');
  9: string enterprise_teacher_name(go.tag='json:"enterprise_teacher_name" ');
}

struct UpdateTrainingCourseResp {

}

struct DeleteTrainingCourseReq {
  1: list<i32> ids(go.tag='json:"ids" binding:"required"');
}

struct DeleteTrainingCourseResp {}

struct CreateTrainingCourseReq {
  10: string academic_year(go.tag='json:"academic_year" binding:"required" '); // 学年
  1: string semester(go.tag='json:"semester" binding:"required" '); // 学期
  2: string major(go.tag='json:"major" binding:"required"');
  3: string class_name(go.tag='json:"class_name" binding:"required"');
  4: i32 student_number(go.tag='json:"student_number" binding:"required"');
  5: string course_name(go.tag='json:"course_name" binding:"required"');
  6: string location(go.tag='json:"location" binding:"required"');
  7: string cooperation_enterprise(go.tag='json:"cooperation_enterprise"');
  8: i32 training_week(go.tag='json:"training_week" binding:"required"');
  9: string enterprise_teacher_name(go.tag='json:"enterprise_teacher_name" ');
}

struct CreateTrainingCourseResp {

}

struct GetTrainingCourseListReq {
  1: base.ListOption list_option(go.tag='json:"list_option" binding:"required"');
}

enum GetTrainingCourseListReqOption {
    id = 1;
    academic_year = 2; // 学年
    semester = 3; // 学期
    major = 4; // 专业
    class_name = 5; // 班级
    course_name = 6; // 名称
}

struct GetTrainingCourseListResp {
  1: list<ModelTrainingCourse> list(go.tag='json:"list"');
  2: base.Paginate paginate(go.tag='json:"paginate"');
 3: map<i32,list<ModelTrainingCourseTeacher>> teacher_map(go.tag='json:"teacher_map"');
}


struct ImportInternshipReq {
  1: string academic_year(go.tag='json:"academic_year" binding:"required"');
  2: string semester(go.tag='json:"semester" binding:"required"');
  3: string upload_id(go.tag='json:"upload_id" binding:"required"');
}

struct ImportInternshipResp {
  1: string task_key(go.tag='json:"task_key"');
}


struct CreateInternshipReq {
  1: string academic_year(go.tag='json:"academic_year" binding:"required"');
  2: string semester(go.tag='json:"semester" binding:"required"');
  3: string teacher_id(go.tag='json:"teacher_id" binding:"required"');
  4: string teacher_name(go.tag='binding:"required" json:"teacher_name"');
  5: string teach_class(go.tag='binding:"required" json:"teach_class"');
  6: string class_name(go.tag='binding:"required" json:"class_name"');
  7: i32 category(go.tag='binding:"required" json:"category"');
  8: i32 start_week(go.tag='binding:"required" json:"start_week"');
  9: i32 end_week(go.tag='binding:"required" json:"end_week"');
  10: string assessment_method(go.tag=' json:"assessment_method"');
  11: i32 student_number(go.tag='binding:"required" json:"student_number"');
  12: double week_hour(go.tag='json:"week_hour"');
}

struct CreateInternshipResp {}

struct UpdateInternshipReq {
  1: i32 id(go.tag='json:"id" binding:"required"');
  2: string teacher_id(go.tag='json:"teacher_id" binding:"required"');
  3: string teacher_name(go.tag='binding:"required" json:"teacher_name"');
  4: string teach_class(go.tag='binding:"required" json:"teach_class"');
  5: string class_name(go.tag='binding:"required" json:"class_name"'); // 教学班组成
  6: i32 category(go.tag='binding:"required" json:"category"');
  7: i32 start_week(go.tag='binding:"required" json:"start_week"');
  8: i32 end_week(go.tag='binding:"required" json:"end_week"');
  9: string assessment_method(go.tag=' json:"assessment_method"'); // 考核方式
  10: i32 student_number(go.tag='binding:"required" json:"student_number"'); // 学生人数
  11: double week_hour(go.tag='json:"week_hour"'); // 周学时
}

struct UpdateInternshipResp {}

struct DeleteInternshipReq{
   1: list<i32> ids(go.tag='json:"ids" binding:"required"');
}

struct DeleteInternshipResp {}


struct GetInternshipListReq{
   1: base.ListOption list_option(go.tag='json:"list_option"');
}

enum GetInternshipListReqOption {
    id = 1
    academic_year = 2
    semester = 3
    teacher_id = 4
    teacher_name = 5
    teach_class = 6
    class_name = 7
    category = 8
}

struct GetInternshipListResp {
  1: list<ModelInternship> list(go.tag='json:"list"');
  2: base.Paginate paginate(go.tag='json:"paginate"');
}


struct UpdateHolidayReq {
  1: i32 id(go.tag='json:"id" binding:"required"');
  3: string name(go.tag='json:"name" binding:"required"'); // 名称
  4: string begin_date(go.tag='json:"begin_date" bending:"required"'); // 开始时间
  5: string end_date(go.tag='json:"end_date" binding:"required"'); // 结束时间
  6: string remark(go.tag='json:"remark"'); // 备注
}


struct UpdateHolidayResp {}

struct CreateHolidayReq {
   1: string academic_year(go.tag='json:"academic_year" binding:"required" ');
   2: string semester(go.tag='json:"semester" binding:"required"');
   3: string name(go.tag='json:"name" binding:"required"'); // 名称
   4: string begin_date(go.tag='json:"begin_date" binding:"required"'); // 开始时间
   5: string end_date(go.tag='json:"end_date" binding:"required"'); // 结束时间
   6: string remark(go.tag='json:"remark"'); // 备注
}
struct CreateHolidayResp {}

struct DeleteHolidayReq {
   1: list<i32> ids(go.tag='json:"ids" binding:"required"');
}
struct DeleteHolidayResp {}

struct GetHolidayListReq{
   1: base.ListOption list_option(go.tag='json:"list_option"');
}

enum GetHolidayListReqOption{
    id =1;
    academic_year = 2;
    semester = 3;
    name = 4;
}

struct GetHolidayListResp {
  1: list<ModelHoliday> list(go.tag='json:"list"');
   2: base.Paginate paginate(go.tag='json:"paginate"');
}

struct AdjustCourseApplicationReq {
  1: string academic_year(go.tag='json:"academic_year" binding:"required" '); // 学年
  2: string semester(go.tag='json:"semester" binding:"required"'); // 学期
  3: string teacher_id(go.tag='json:"teacher_id" binding:"required" '); // 教师ID
  4: string teacher_name(go.tag='json:"teacher_name" binding:"required" '); // 授课教师
  5: string new_teacher_id(go.tag=' json:"new_teacher_id"'); // 变更后教师ID
  6: string new_teacher_name(go.tag=' json:"new_teacher_name"'); // 变更后授课教师
  7: i32 application_type(go.tag='json:"application_type"'); // 申请项目 (调课、停课、代课等)
  8: string course_name(go.tag='json:"course_name"'); // 课程名称
  9: string teach_class(go.tag='json:"teach_class"'); // 教学班级
  10: i32 course_id(go.tag='json:"course_id"'); // 课程id
  11: string schedule_time(go.tag=' json:"schedule_time"'); // 授课时间
  12: string new_schedule_time(go.tag='json:"new_schedule_time"');// 变更后授课时间
  13: string location(go.tag=' json:"location"'); // 授课地点
  14: string new_location(go.tag='json:"new_location"'); // 变更后授课地点
  15: string reason(go.tag='json:"reason"'); // 申请原因
  16: i32 adjust_course_id(go.tag='json:"adjust_course_id"'); // 调课后对应的课程ID
}

struct AdjustCourseApplicationResp {}

struct GetSelfCourseApplicationListReq {
    1: base.ListOption list_option(go.tag='json:"list_option"');
}

enum GetSelfCourseApplicationListReqOption {
    id = 1; // id
    academic_year = 2;
    semester = 3;
    course_name = 4;
}

struct GetSelfCourseApplicationListResp {
    1: list<ModelCourseApplication> list(go.tag='json:"list"');
    2: base.Paginate paginate(go.tag='json:"paginate"');
}

struct DeleteCourseApplicationReq {
    1: i32 id(go.tag='json:"id" binding:"required"');
}
struct DeleteCourseApplicationResp {}

struct GetCourseApplicationListReq {
    1: base.ListOption list_option(go.tag='json:"list_option"');
}

enum GetCourseApplicationListReqOption {
    id = 1; // id
    academic_year = 2;
    semester = 3;
    course_name = 4;
}

struct GetCourseApplicationListResp {
    1: list<ModelCourseApplication> list(go.tag='json:"list"');
    2: base.Paginate paginate(go.tag='json:"paginate"');
}

struct GetSelfCourseListReq{
    1: base.ListOption list_option(go.tag='json:"list_option"');
}

enum GetSelfCourseListReqOption {
    id = 1; // id
    academic_year = 2; // 学年
    semester = 3; // 学期
    course_type = 6; // 开课类型
    course_category = 7; // 课程类别
    assessment_method = 8; // 考核方式
    course_name = 9; // 课程名称
    teach_class = 10; // 教学班
    class_name = 11;  // 教学班组成
    is_collaborative_course = 12; // 是否共建课程
}

struct GetSelfCourseListResp {
    1: list<ModelCourse> list(go.tag='json:"list"');
    2: base.Paginate paginate(go.tag='json:"paginate"');
}

struct  UpdateCourseReq {
    1: i32 id(go.tag='json:"id" binding:"required"');
    2: ModelCourse course(go.tag='json:"course" binding:"required"');
}
struct UpdateCourseResp {}

struct   ImportCourseReq{
    1: string upload_id(go.tag='json:"upload_id"')
}

struct   ImportCourseResp{
    1: string task_key(go.tag='json:"task_key"')
}

struct   DeleteCourseReq{
    1: list<i32> ids(go.tag='json:"ids"')
}

struct DeleteCourseResp {}

struct GetCourseListResp {
    1: list<ModelCourse> list(go.tag='json:"list"');
    2: base.Paginate paginate(go.tag='json:"paginate"');
}

struct GetCourseListReq {
   1: base.ListOption list_option(go.tag='json:"list_option"')
}


enum GetCourseListReqOption {
    id = 1; // id
    academic_year = 2; // 学年
    semester = 3; // 学期
    teacher_id = 4; // 教师id
    teacher_name = 5; // 教师姓名
    course_type = 6; // 开课类型
    course_category = 7; // 课程类别
    assessment_method = 8; // 考核方式
    course_name = 9; // 课程名称
    teach_class = 10; // 教学班
    class_name = 11;  // 教学班组成
    is_collaborative_course = 12; // 是否共建课程
}

struct ExportTeacherInfoReq {
   1: list<i32> ids(go.tag='json:"ids"')
}

struct ExportTeacherInfoResp {
    1: string task_key(go.tag='json:"task_key"');
}


struct CreateTeacherInfoReq {
    1: string name(go.tag='json:"name" binding:"required"'); // 姓名
    2: string department(go.tag='json:"department" binding:"required"'); // 部门
    3:i32 uid (go.tag='json:"uid" binding:"required"'); // 用户id
    4:i32 office_id(go.tag='json:"office_id" binding:"required"') // 教研室id
    5 :string user_name(go.tag='json:"user_name" binding:"required"') // 学号
    6: string duties(go.tag='json:"duties" '); // 职务
    7: string appoint_time(go.tag='json:"appoint_time" ') // 任职时间
    8: string position_level(go.tag='json:"position_level" ') // 岗位等级
    9: string cposition_time(go.tag='json:"cposition_time" ') // 现聘岗位时间
    10: i64 remunerate(go.tag='json:"remunerate" ') // 岗位等级课酬标准
    11: string id_category(go.tag='json:"id_category" ') // 身份类别
    12: i32 is_external(go.tag='json:"is_external" '); // 是否外聘
}

struct CreateTeacherInfoResp {
}

struct DeleteTeacherInfoReq {
    1: list<i32> ids(go.tag='json:"ids" binding:"required"');
}

struct DeleteTeacherInfoResp {
    1: i32 count(go.tag='json:"count"');
}

struct ResetPasswordReq     {
    1: i32 id(go.tag='json:"id" binding:"required"');
}

struct ResetPasswordResp {}

struct UpdateUserReq{
    1: i32 id(go.tag='json:"id" binding:"required"');
    2: string user_name(go.tag='json:"user_name" binding:"required"');
    3: string nick_name(go.tag='json:"nick_name" binding:"required"');
    4: string email(go.tag='json:"email"');
    5: string mobile(go.tag='json:"mobile"');
}

struct UpdateUserResp {}



struct UpdateOfficeReq {
    1: string name(go.tag='json:"name" binding:"required"');
    2: string description(go.tag='json:"description"');
    3: string name2(go.tag='json:"name2"')
    4: i32 order(go.tag='json:"order"')
    5: i32 id (go.tag='json:"id" binding:"required"');

}
struct UpdateOfficeResp {}

struct DeleteOfficeReq {
    1: list<i32> ids(go.tag='json:"ids" binding:"required"');
}
struct DeleteOfficeResp {}

struct DeleteRoleReq {
    1: list<i32> ids(go.tag='json:"ids" binding:"required"');
}

struct DeleteRoleResp {}


struct SetRoleStatusReq {
    1: list<base.StatusValue> items(go.tag='json:"items" binding:"required"');
}
struct SetRoleStatusResp {}

struct UpdateRoleReq {
  1: string name(go.tag='json:"name" binding:"required"');
  2: string description(go.tag='json:"description"');
  3: i32 id(go.tag='json:"id" binding:"required"');
}

struct UpdateRoleResp {}



struct GetTokenReq {
  1: string username(go.tag='json:"username" binding:"required"');
  2: i32 app_id(go.tag='json:"app_id" binding:"required"');
}

struct GetTokenResp {
  1: string token(go.tag='json:"token"');
}

struct GetTeacherInfoListReq {
   1: base.ListOption list_option(go.tag='json:"list_option"');

}

enum GetTeacherInfoListReqOption {
   id = 1;
   name = 2;
   office_id = 3;
   duties = 4;
   id_category = 5;
   user_name = 6;
}

struct GetTeacherInfoListResp {
  1: list<ModelTeacherInfo> list(go.tag='json:"list"');
  2: base.Paginate paginate(go.tag='json:"paginate"');
  3: map<i32,ModelTeacherOffice> office_map(go.tag='json:"office_map"');
}


struct ImportTeacherInfoReq {
  1: string file_upload_id(go.tag='json:"file_upload_id" binding:"required"');
}

struct ImportTeacherInfoResp {
  1: string task_key(go.tag='json:"task_key"');
}


struct  UpdateTeacherInfoReq   {
  1: i32 uid(go.tag='json:"uid" binding:"required"');
  2: i32  office_id(go.tag='json:"office_id" binding:"required"'); // 教研室id
  3: string duties(go.tag='json:"duties"'); // 职务
  4: string appoint_time(go.tag='json:"appoint_time"'); // 任职时间
  5: string position_level(go.tag='json:"position_level"'); // 岗位等级
  6: string cposition_time(go.tag='json:"cposition_time"'); // 现聘岗位时间
  7: i64 remunerate(go.tag='json:"remunerate"'); // 岗位等级课酬标准
  8: string id_category(go.tag='json:"id_category"'); // 身份类别
  9: i32 is_external(go.tag='json:"is_external" binding:"required"'); // 是否外聘
  10: i32 order(go.tag='json:"order"');
  11: string department(go.tag='json:"department"'); // 教师所属部门
  12: i32 id(go.tag='json:"id" binding:"required"');
}


struct UpdateTeacherInfoResp {

}

struct SetTeacherInfoStatusReq {
  1: list<SetTeacherInfoStatusReq_Value> item(go.tag='json:"item" binding:"required"');
}

struct SetTeacherInfoStatusReq_Value {
   1: i32 id(go.tag='json:"id"');
   2: i32 value(go.tag='json:"value"');
}

struct OrderTeacherInfoReq {

}


struct SetTeacherInfoStatusResp {}

struct OrderTeacherInfoResp {
  1: string task_key(go.tag='json:"task_key"');
}


struct CreateAppReq {
  1: string school_name(go.tag='json:"school_name" binding:"required"'); // 学校名称
  2: string  college_name(go.tag='json:"college_name" binding:"required"');  //学院名称
}


struct CreateAppResp {
  1: ModelApp app(go.tag='json:"app"');
  2: ModelUser root(go.tag='json:"user"');
  3: list<ModelRole> roles(go.tag='json:"roles"');
}

struct LoginReq {
  1: string user_name(go.tag='json:"username" binding:"required"');
  2: string password(go.tag='json:"password" binding:"required"');
}

struct LoginResp {
  1: string token(go.tag='json:"token"');
  2: ModelUser user(go.tag='json:"user"');
  3: list<string> roles(go.tag='json:"roles"');
}


struct GetUserListReq {
   1: base.ListOption list_option(go.tag='json:"list_option"');
}

enum GetUserListOption {
   id = 1;
   nick_name = 2;
   user_name = 3;
   email = 4;
   mobile = 5;
}

struct GetUserListResp {
  1: list<ModelUser> list(go.tag='json:"list"');
  2: base.Paginate paginate(go.tag='json:"paginate"');
  3: map<i32, list<ModelRole>> role_map(go.tag='json:"role_map"');
}



struct GetRoleListReq {
   1: base.ListOption list_option(go.tag='json:"list_option"');
}
enum GetRoleListOption {
   id = 1;
   name = 2;
   str_role_id = 3;
}

struct GetRoleListResp {
  1: list<ModelRole> list(go.tag='json:"list"');
  2: base.Paginate paginate(go.tag='json:"paginate"');
}

struct GetMenuReq {}



struct MenuItem {
    1: string component(go.tag='json:"component"');
    2: Meta meta(go.tag='json:"meta" gorm:"column:meta;embedded"');
    3: string name (go.tag='json:"name"');
    4: string path (go.tag='json:"path"');
    5: string redirect (go.tag='json:"redirect"');
    6:list<MenuItem> children (go.tag='json:"children" gorm:"-"');
}

struct GetMenuResp {
  1: list<MenuItem> list(go.tag='json:"list"');
}

struct GetPermissionListReq {
   1: base.ListOption list_option(go.tag='json:"list_option"');
}

enum GetPermissionListOption {
   id = 1;
   name = 2;
   str_permission_id = 3;
}

struct GetPermissionListResp {
  1: list<ModelPermission> list(go.tag='json:"list"');
  2: base.Paginate paginate(go.tag='json:"paginate"');
}


struct CreateUserResp {
  1: ModelUser user(go.tag='json:"user"');
  2: list<string> roles(go.tag='json:"roles"');
}

struct CreateUserReq {
   1: string user_name(go.tag='json:"username" binding:"required"'); // 用户名
   2: string password(go.tag='json:"password" binding:"required"');  // 密码
   3: string nick_name(go.tag='json:"nick_name" binding:"required"'); // 昵称
   4: string email(go.tag='json:"email"'); // 邮箱
   5: string mobile(go.tag='json:"mobile"'); // 手机号
   6: string avatar(go.tag='json:"avatar"'); // 头像
   7: list<i32> role_ids(go.tag='json:"role_ids" binding:"required"'); // 角色id
}

struct SetUserRoleReq {
   1: i32 user_id(go.tag='json:"user_id" binding:"required"');
   2: list<i32> role_id(go.tag='json:"role_id"')

}

struct SetUserRoleResp {}

struct SetRolePermissionReq {
   1: i32 role_id(go.tag='json:"role_id" binding:"required"');
   2: list<i32> permission_id(go.tag='json:"permission_id"')

}

struct SetRolePermissionResp {}


struct SetRoleMenuReq {
   1: i32 role_id(go.tag='json:"role_id" binding:"required"');
   // 新增菜单
   2: list<i32> menu_id(go.tag='json:"menu_id" ')

}

struct SetRoleMenuResp {}


struct CreateMenuReq {
   1: string name(go.tag='json:"name" binding:"required"');
   2: string path(go.tag='json:"path" binding:"required"');
   3: string component(go.tag='json:"component" binding:"required"');
   4: string redirect(go.tag='json:"redirect"');
   5: i32 parent_id(go.tag='json:"parent_id"');
    6: Meta meta(go.tag='json:"meta"');
}
struct CreateMenuResp {}


struct CreateRoleReq {
   1: string name(go.tag='json:"name" binding:"required"');
   2: string description(go.tag='json:"description"');
}
struct CreateRoleResp {
   1: ModelRole role;
}


struct CreatePermissionReq {
   1: string name(go.tag='json:"name" binding:"required"');
   2: string description(go.tag='json:"description"');
}

struct CreatePermissionResp {
   1: ModelPermission permission;
}


struct CreateOfficeReq{
  1: string name(go.tag='json:"name" binding:"required"');
  2: string description(go.tag='json:"description"');
  3: i32 app_id(go.tag='json:"app_id" binding:"required"');
  4: string name2(go.tag='json:"name2"');
  5: i32 order(go.tag='json:"order"');
}

struct CreateOfficeResp{

}

struct GetOfficeListReq{
   1: base.ListOption list_option(go.tag='json:"list_option"');
}

enum GetOfficeListOption{
    name= 1;
    name2 = 2;
    id = 3;
    category = 4;
}

struct GetOfficeListResp{
  1: list<ModelTeacherOffice> list(go.tag='json:"list"');
  2: base.Paginate paginate(go.tag='json:"paginate"');
}

struct DeleteUserResp{}

struct DeleteUserReq{
   1: i32 user_id(go.tag='json:"user_id" binding:"required"');
}

struct GetMenuListReq {
  1: base.ListOption list_option(go.tag='json:"list_option"');
}

enum GetMenuListOption {
   id = 1,
   name = 2,
   path = 3,
   component = 4,
   redirect = 5,
   parent_id = 6,
   title = 7,
   created_at = 8,
   status = 9,
}


struct GetMenuListResp {
   1: list<ModelMenu> list(go.tag='json:"list"');
   2: base.Paginate paginate;
}


struct ImportCourseApplyReq{
   1: string file_upload_id(go.tag='json:"file_upload_id" binding:"required"'); // 文件上传id
   2: string academic_year(go.tag='json:"academic_year" binding:"required"');  // 学年
   3: string semester(go.tag='json:"semester" binding:"required"'); // 学期
}


struct ImportUserReq{
   1: string file_upload_id(go.tag='json:"file_upload_id" binding:"required"'); // 文件上传id
}

struct ImportUserResp{
   1: string task_key(go.tag='json:"task_key"'); // 任务key
}

struct ImportCourseApplyResp {
   1: string task_key(go.tag='json:"task_key"');
}

struct GetCourseApplyListReq{
   1: base.ListOption list_option(go.tag='json:"list_option"');
}

enum GetCourseApplyListOption{
   id = 1;
   course_name = 2; // 课程名称
   academic_year = 3; // 学年
   semester = 4; // 学期
   department = 5;// 部门
   teacher_name = 6;  // 老师
   office_id = 7; // 院系id
   class_id = 8; // 班级id
   course_nature = 9; // 课程性质
   is_fill = 10; // 是否已填报
}

struct GetCourseApplyListResp{
   1: list<ModelCourseApply> list(go.tag='json:"list"');
   2: base.Paginate paginate(go.tag='json:"paginate"');
   3: map<i32, ModelTeacherOffice> office_map(go.tag='json:"office_map"');
   4: map<i32, ModelClass> class_map(go.tag='json:"class_map"');
}

struct GetSelfCourseApplyListReq{
   1: base.ListOption list_option(go.tag='json:"list_option"');
}

enum GetSelfCourseApplyListOption{
   id = 1;
   course_name = 2; // 课程名称
   academic_year = 3; // 学年
   semester = 4; // 学期
   course_nature = 9; // 课程性质
}

struct GetSelfCourseApplyListResp{
  1: list<ModelCourseApply> list(go.tag='json:"list"');
  2: base.Paginate paginate(go.tag='json:"paginate"');
  3: map<i32, ModelTeacherOffice> office_map(go.tag='json:"office_map"');
  4: map<i32, ModelClass>class_map(go.tag='json:"class_map"');
}

struct DeleteCourseApplyReq{
   1: list<i32> ids(go.tag='json:"ids" binding:"required"');
}

struct DeleteCourseApplyResp{}


struct ApproveCourseApplyReq{
   1: i32 id(go.tag='json:"id" binding:"required"');
   2: i32 examination(go.tag='json:"examination" binding:"required"'); // 审核状态
   3: string opinion(go.tag='json:"opinion"'); // 审核意见
}

struct ApproveCourseApplyResp  {

}

struct ResetCourseApplyReq{
   1: i32 id(go.tag='json:"id" binding:"required"');
}

struct ResetCourseApplyResp{
}

struct FillCourseApplyReq{
  1: i32 id(go.tag='json:"id" binding:"required"'); // id
  2: string online_platform_name(go.tag='json:"online_platform_name" binding:"required"') // 在线平台名称
  3: string other_online_platform_name(go.tag='json:"other_online_platform_name"') // 其他线上授课平台名称
  4: string teaching_resource_name(go.tag='json:"teaching_resource_name"') // 专业教学资源库名称
  5:i32 is_build_partner(go.tag='json:"is_build_partner" binding:"required"') //  是否与其他教师共建资源
  6:i32 is_self_property (go.tag='json:"is_self_property" binding:"required"') // 是否校内教师自主知识产权
  7: i32 total_hours (go.tag='json:"total_hours" binding:"required"') // 任务总学时
  8: string team_teacher_name(go.tag='json:"team_teacher_name" ') // 团队教师姓名
  9: string resource_build_partner (go.tag='json:"resource_build_partner"') // 资源共建分工情况
  10: string  remark (go.tag='json:"remark"') // 备注
  11:string url (go.tag='json:"url"'); // 教学资源url
  12:string isnot_account (go.tag='json:"isnot_account" '); // 非三大平台须填写登录账户
  13:string isnot_password(go.tag='json:"isnot_password"') // 非三大平台须填写登录密码
  14:i32 is_use_other_resource(go.tag='json:"is_use_other_resource"'); // 是否使用其他信息化教学资源
  15:string other_resource_name(go.tag='json:"other_resource_name"'); // 其他教学资源名称
}


struct FillCourseApplyResp{}


struct ExportSelfCheckTableReq {
  1: i32 course_id(go.tag='json:"course_id" binding:"required"'); // 课程id
}

struct ExportSelfCheckTableResp {
  1: string url(go.tag='json:"url"'); // 下载地址
  2: string file_name(go.tag='json:"file_name"'); // 文件名
}

struct ExportResponsibilityReq {
  1: string teacher_name(go.tag='json:"teacher_name"');
  2: string academic_year(go.tag='json:"academic_year"');
  3: string semester(go.tag='json:"semester"');
}

struct ExportResponsibilityResp {
  1: string task_key(go.tag='json:"task_key"');
}

struct ExportAllSelfCheckTableReq  {
  // 学年
  1: string academic_year(go.tag='json:"academic_year" binding:"required"');
  // 学期
  2: string semester(go.tag='json:"semester" binding:"required"');
}

struct ExportAllSelfCheckTableResp {
  1: string task_key(go.tag='json:"task_key"');
}

struct UpdateCourseApplyReq {
  1: i32 id(go.tag='json:"id" binding:"required"');
  2: string course_name(go.tag='json:"course_name" binding:"required"'); // 课程名称
  3: string course_nature(go.tag='json:"course_nature"'); // 课程性质
  4: i32 office_id(go.tag='json:"office_id"'); // 教研室id
  5: i32 class_id(go.tag='json:"class_id"'); // 班级id
  6: string department (go.tag='json:"department"'); //开课部门
  7: string teach_class_name(go.tag='json:"teach_class_name"') // 教学班名称
  8: string teacher_name(go.tag='json:"teacher_name"') // 教师姓名
  9: i64 total_hours(go.tag='json:"total_hours"') // 总学时
  10 :i64 total_students (go.tag='json:"total_students"') // 学生人数
  11: double credit (go.tag='json:"credit"') // 学分
  12: string start_week (go.tag='json:"start_week"') // 起始周

  // ==================
  13:string online_platform_name(go.tag='json:"online_platform_name"');// 线上授课平台名称
  14:string teacher_id (go.tag='json:"teacher_id" '); // 授课教师id
  15:string other_online_platform_name(go.tag='json:"other_online_platform_name" '); // 其他线上授课平台名称
  16:string teaching_resource_name(go.tag='json:"teaching_resource_name" '); // 专业教学资源库名称
  17:i32 is_build_partner(go.tag='json:"is_build_partner"'); // 是否与其他教师共建资源
  18:i32 is_self_property(go.tag='json:"is_self_property" '); // 是否校内教师自主知识产权
  19:i32 is_use_other_resource(go.tag='json:"is_use_other_resource" '); // 是否使用其他信息化教学资源
  20:string other_resource_name(go.tag='json:"other_resource_name" '); // 其他教学资源名称
  21:string resource_build_partner(go.tag='json:"resource_build_partner"');   // 资源共建分工情况
  22:string team_teacher_name(go.tag='json:"team_teacher_name" '); // 团队老师
  23:string remark(go.tag='json:"remark"'); // 备注
  24:string url (go.tag='json:"url" '); // 教学资源url
  25:string isnot_account (go.tag='json:"isnot_account" '); // 非三大平台须填写登录账户
  26:string isnot_password(go.tag='json:"isnot_password"') // 非三大平台须填写登录密码
}

struct UpdateCourseApplyResp {

}

struct ExportCourseApplyReq  {
  1: string academic_year(go.tag='json:"academic_year" binding:"required"');
  2: string semester(go.tag='json:"semester" binding:"required"');
  3: list<i32> fields(go.tag='json:"fields"'); // 导出字段
}

struct ExportCourseApplyResp {
  1: string task_key(go.tag='json:"task_key"');
}

struct ExportCourseApplySummaryReq {
  1: string academic_year(go.tag='json:"academic_year" binding:"required"');
  2: string semester(go.tag='json:"semester" binding:"required"');
}

struct ExportCourseApplySummaryResp {
  1: string task_key(go.tag='json:"task_key"');
}

struct OneKeyApproveCourseApplyReq {
  1: string academic_year(go.tag='json:"academic_year" binding:"required"'); // 学年
  2: string semester(go.tag='json:"semester" binding:"required"'); // 学期
}

struct OneKeyApproveCourseApplyResp {
    1: string task_key(go.tag='json:"task_key"'); // 任务key
}

struct GetClassListReq{
    1: base.ListOption list_option(go.tag='json:"list_option"');
}

enum GetClassListReqOption {
    id = 1; // id
    name = 2; // 班级名称
}

struct GetClassListResp{
    1: list<ModelClass> list(go.tag='json:"list"');
    2: base.Paginate paginate(go.tag='json:"paginate"');
}

struct GetSelectDataReq{}

const list<string> online_platform = ["学堂云网络教学平台","职教云平台","智慧树在线教育平台","Blackboard 网络教学平台","专业教学资源库","慕课","其他","无"];
const list<string> order_online_platform = ["精品（在线）开放课程","微课","私播课"];


const list<string> assessment_method = ["集中","过程","考查","考试"];
const list<string> open_course_type = ["专业拓展课","专业拓展课","通识选修课"];
const list<string> course_category = ["专业课","公共课","无"];


struct GetSelectDataResp{
    1: list<string>  online_platform(go.tag='json:"online_platform"'); // 线上授课平台名称
    2: list<string>  order_online_platform(go.tag='json:"order_online_platform"');//  其他授课平台名称
    3: list<string>  course_nature(go.tag='json:"course_nature"');  // 课程性质
    4: list<string>   academic_year(go.tag='json:"academic_year"');    // 学年
    5: list<string>   semester(go.tag='json:"semester"'); // 学期
    6: map<i32,string>   field_type(go.tag='json:"field_type"'); // 课程申请表导出字段
    7: string  current_academic_year(go.tag='json:"current_academic_year"'); // 当前学年
    8: string  current_semester(go.tag='json:"current_semester"'); // 当前学期

    9: list<string>  assessment_method(go.tag='json:"assessment_method"');  // 考核方式
    10: list<string>  open_course_type(go.tag='json:"open_type"');  // 开课类型
    11: list<string>  course_category(go.tag='json:"course_category"'); // 课程类别
}


struct GetUserInfoReq {}

struct GetUserInfoResp {
    1: i32 id(go.tag='json:"user_id"'); // 用户id
    2: string user_name(go.tag='json:"user_name"'); // 用户名
    3: string email(go.tag='json:"email"'); // 邮箱
    4: string mobile(go.tag='json:"mobile"'); // 手机号
    5: list<string> roles(go.tag='json:"roles"'); // 角色
    6: string nickname(go.tag='json:"nickname"'); // 昵称
    7: string avatar(go.tag='json:"avatar"'); // 头像
    8: i32 app_id(go.tag='json:"app_id"');
}

struct GetAuthCodeReq {}


struct GetAuthCodeResp {
    1: list<string> code(go.tag='json:"code"'); // 权限码
}

struct DeleteMenuReq {
  1: list<i32> ids(go.tag='json:"ids" binding:"required"');
}
struct DeleteMenuResp {}



struct UpdateMenuReq {
  1: i32 id(go.tag='json:"id" binding:"required"');
  2: string name(go.tag='json:"name"');
  3: string path(go.tag='json:"path"');
  4: string component(go.tag='json:"component"');
  5: string redirect(go.tag='json:"redirect"');
  6: i32 parent_id(go.tag='json:"parent_id"');
  7: Meta meta(go.tag='json:"meta"');
}
struct UpdateMenuResp {}




const map<i32, string> CourseApplyFieldMap = {
     1: "开课部门",
     2: "课程所属教研室"
     3: "课程名称",
     4: "教学班名称",
     5: "行政班名称",
     6: "教师名称",
     7: "任务总学时",
     8: "选课人数",
     9: "学分",
     10: "课程性质",
     11: "起始周",
     12: "线上授课平台名称",
     13: "是否与其他教师共建资源",
     14: "是否校内教师自主知识产权",
     15: "资源共建分工情况",
     16: "备注",
     17: "课程资源准确网址",
     18: "非三大平台须填写登录账户和密码",
     19: "教研室主任审查意见"
}

enum CourseApplyField {
    department= 1
    office_id = 2// 教研室
    course_name = 3 // 课程名称
    teach_class_name  = 4// 教学班名称
    class_id = 5 // 班级
    teacher_name = 6 // 授课教师
    total_hours =7//任务总学时
    total_students = 8 // 选课人数
    credit = 9 //学分
    course_nature = 10 // 课程性质
    start_week = 11 // 起始周
    online_platform_name = 12// 线上授课平台名称
    is_build_partner = 13 // 是否与其他教师共建资源
    is_self_property = 14 // 是否校内教师自主知识产权
    resource_build_partner= 15  // 资源共建分工情况
    remark = 16 // 备注
    url= 17 // 课程资源准确网址
    isnot_account_password  =18 // 非三大平台须填写登录账户
    opinion = 19 // 教研室主任审查意见
}







// =================Model========================

const map<string, i32> InternshipCategoryMap = {
    "岗位实习（毕业作品）": 1,
    "毕业设计":       2,
}

enum InternshipCategory {
    PostInternship = 1 // 岗位实习
    GraduateDesign = 2 // 毕业设计
}

// 实习表
struct ModelInternship {
  1: i32 id(go.tag='gorm:"column:id" json:"id"');
  2: i32 created_at(go.tag='gorm:"column:created_at;index" json:"created_at"');
  3: i32 updated_at(go.tag='gorm:"column:updated_at" json:"updated_at"');
  4: i32 deleted_at(go.tag='gorm:"column:deleted_at" json:"deleted_at"');
  5: string academic_year(go.tag='gorm:"column:academic_year" json:"academic_year"');
  6: string semester(go.tag='gorm:"column:semester" json:"semester"');
  7: string teacher_id(go.tag='gorm:"column:teacher_id" json:"teacher_id"');
  8: string teacher_name(go.tag='gorm:"column:teacher_name" json:"teacher_name"');
  9: string teach_class(go.tag='gorm:"column:teach_class" json:"teach_class"');
  10: string class_name(go.tag='gorm:"column:class_name" json:"class_name"'); // 教学班组成
  11: i32 category(go.tag='gorm:"column:category" json:"category"');
  12: i32 start_week(go.tag='gorm:"column:start_week" json:"start_week"');
  13: i32 end_week(go.tag='gorm:"column:end_week" json:"end_week"');
  14: string assessment_method(go.tag='gorm:"column:assessment_method" json:"assessment_method"'); // 考核方式
  15: i32 student_number(go.tag='gorm:"column:student_number" json:"student_number"'); // 学生人数
  16: double week_hour(go.tag='gorm:"column:week_hour" json:"week_hour"'); // 周学时
  17: i32 app_id(go.tag='gorm:"column:app_id" json:"app_id"');
}



enum ApplicationType {
    Unkknown = 0; // 未知
    CourseChange = 1; // 调课
    CourseStop = 2; // 停课
    CourseReplace = 3; //代课
    CourseSwap = 4; // 对调
}

struct ModelCourseApplication {
  1: i32 id(go.tag='gorm:"column:id" json:"id"');
  2: i32 created_at(go.tag='gorm:"column:created_at;index" json:"created_at"');
  3: i32 updated_at(go.tag='gorm:"column:updated_at" json:"updated_at"');
  4: i32 deleted_at(go.tag='gorm:"column:deleted_at" json:"deleted_at"');
  5: string academic_year(go.tag='gorm:"column:academic_year" json:"academic_year"'); // 学年
  6: string semester(go.tag='gorm:"column:semester" json:"semester"'); // 学期
  7: string teacher_id(go.tag='gorm:"column:teacher_id" json:"teacher_id"'); // 教师ID
  8: string teacher_name(go.tag='gorm:"column:teacher_name" json:"teacher_name"'); // 授课教师
  9: string new_teacher_id(go.tag='gorm:"column:new_teacher_id" json:"new_teacher_id"'); // 变更后教师ID
  10: string new_teacher_name(go.tag='gorm:"column:new_teacher_name" json:"new_teacher_name"'); // 变更后授课教师
  11: i32 app_id (go.tag='gorm:"column:app_id" json:"app_id"'); // 应用Id
  12:i32 application_type(go.tag='gorm:"column:application_type" json:"application_type"'); // 申请项目 (调课、停课、代课等)
  13: string course_name(go.tag='gorm:"column:course_name" json:"course_name"'); // 课程名称
  14: string teach_class(go.tag='gorm:"column:teach_class" json:"teach_class"'); // 教学班级
  15: i32 course_id(go.tag='gorm:"column:course_id" json:"course_id"'); // 课程id
  16: string schedule_time(go.tag='gorm:"column:schedule_time" json:"schedule_time"'); // 授课时间
  17: string new_schedule_time(go.tag='gorm:"column:new_schedule_time" json:"new_schedule_time"');// 变更后授课时间
  18: string location(go.tag='gorm:"column:location" json:"location"'); // 授课地点
  19: string new_location(go.tag='gorm:"column:new_location" json:"new_location"'); // 变更后授课地点
  20: string reason(go.tag='gorm:"column:reason" json:"reason"'); // 申请原因
  21: i32 adjust_course_id(go.tag='gorm:"column:adjust_course_id" json:"adjust_course_id"'); // 调课后对应的课程ID
  22: string user_id(go.tag='gorm:"column:user_id" json:"-"'); // 用户id
}

// 应用表
struct ModelApp {
  1: i32 id (go.tag='gorm:"column:id" json:"id"');
  2: i32 created_at(go.tag='gorm:"column:created_at;index" json:"created_at"');
  3: i32 updated_at(go.tag='gorm:"column:updated_at" json:"updated_at"');
  4: i32 deleted_at(go.tag='gorm:"column:deleted_at" json:"deleted_at"');
  5: string school_name(go.tag='gorm:"column:school_name" json:"school_name"'); // 学校名称
  6: string  college_name(go.tag='gorm:"column:college_name" json:"college_name"');  //学院名称
  8: string app_key(go.tag='gorm:"column:app_key" json:"app_key"'); // 应用key
  9: string app_secret(go.tag='gorm:"column:app_secret" json:"app_secret"'); // 应用密钥
  10: i32 school_code(go.tag='gorm:"column:school_code" json:"school_code"'); // 学校代码
  11: bool status(go.tag='gorm:"column:status;default:1" json:"status"'); // 状态
}


// 用户表
struct ModelUser {
  1: i32 id (go.tag='gorm:"column:id" json:"id"');
  2: i32 created_at(go.tag='gorm:"column:created_at;index" json:"created_at"');
  3: i32 updated_at(go.tag='gorm:"column:updated_at" json:"updated_at"');
  4: i32 deleted_at(go.tag='gorm:"column:deleted_at" json:"deleted_at"');
  5: string user_name(go.tag='gorm:"column:user_name" json:"user_name"'); // 用户名
  6: string password(go.tag='gorm:"column:password" json:"-"');           // 密码
  7: string nick_name(go.tag='gorm:"column:nick_name" json:"nick_name"'); // 昵称
  8: string mobile(go.tag='gorm:"column:mobile" json:"mobile"');          // 手机号
  9: string email(go.tag='gorm:"column:email" json:"email"');             // 邮箱
  10: string avatar(go.tag='gorm:"column:avatar" json:"avatar"');         // 头像
  11: i32 app_id(go.tag='gorm:"column:app_id" json:"app_id"');
}



// 角色表
struct ModelRole {
  1: i32 id (go.tag='gorm:"column:id" json:"id"');
  2: i32 created_at(go.tag='gorm:"column:created_at;index" json:"created_at"');
  3: i32 updated_at(go.tag='gorm:"column:updated_at" json:"updated_at"');
  4: i32 deleted_at(go.tag='gorm:"column:deleted_at" json:"deleted_at"');
  5: string name(go.tag='gorm:"column:name" json:"name"');
  6: string description(go.tag='gorm:"column:description" json:"description"');
  7: bool status(go.tag='gorm:"column:status;default:true" json:"status"');
  8: string str_role_id(go.tag='json:"str_role_id" gorm:"column:str_role_id"');
  9: i32 app_id(go.tag='json:"app_id" gorm:"column:app_id"');
}

// 菜单表
struct ModelMenu {
  1: i32 id (go.tag='gorm:"column:id" json:"id"');
  2: i32 created_at;
  3: i32 updated_at;
  4: i32 deleted_at;
  5: string component(go.tag='json:"component" gorm:"column:component;default:BasicLayout"'); // 组件
  6: Meta meta(go.tag='json:"meta" gorm:"column:meta;embedded"');
  7: string name (go.tag='json:"name" gorm:"column:name"');
  8: string path (go.tag='json:"path" gorm:"column:path"');
  9: string redirect (go.tag='json:"redirect" gorm:"column:redirect"');
  10: i32 parent_id (go.tag='json:"parent_id" gorm:"column:parent_id"');
  11: list<ModelMenu> children (go.tag='json:"children" gorm:"-"');
  12: bool status(go.tag='json:"status" gorm:"column:status;default:true"')
}

struct Meta {
    1:string title(go.tag='json:"title"');
    2:i32 order(go.tag='json:"order"');
    3:string icon(go.tag='json:"icon"');
    4:string badge(go.tag='json:"badge"');
    5:string active_icon(go.tag='json:"active_icon"');
    6:string iframe_src(go.tag='json:"iframe_src"');
    7:bool affixTab(go.tag='json:"affixTab" gorm:"column:affix_tab;default:false"');
    8:string activePath(go.tag='json:"activePath"');
    9:string badgeVariants(go.tag='json:"badgeVariants"');
    10:string badgeType(go.tag='json:"hide"');
    11:string badgeText(go.tag='json:"badgeText"');
    12:bool hideChildrenInMenu(go.tag='json:"hideChildrenInMenu" gorm:"column:hide_children_in_menu;default:false"');
    13:bool hideInTab(go.tag='json:"hideInTab" gorm:"column:hide_in_tab;default:false"');
    14:bool hideInMenu(go.tag='json:"hideInMenu" gorm:"column:hide_in_menu;default:false"');
    15:bool keepAlive(go.tag='json:"keepAlive" gorm:"column:keep_alive;default:false"');
    16:string activeIcon(go.tag='json:"activeIcon"');
    17:bool hideInBreadcrumb(go.tag='json:"hideInBreadcrumb" gorm:"column:hide_in_breadcrumb;default:false"');
    18:bool ignoreAccess(go.tag='json:"ignoreAccess" gorm:"column:ignore_access;default:false"');
    19:string link(go.tag='json:"link"');
    20:bool openInNewWindow(go.tag='json:"openInNewWindow"  gorm:"column:open_in_new_window;default:false"');
    21:i32 maxNumOfOpenTab(go.tag='json:"maxNumOfOpenTab"');
}

// 权限表
struct ModelPermission{
  1: i32 id (go.tag='gorm:"column:id" json:"id"');
  2: i32 created_at(go.tag='gorm:"column:created_at;index" json:"created_at"');
  3: i32 updated_at(go.tag='gorm:"column:updated_at" json:"updated_at"');
  4: i32 deleted_at(go.tag='gorm:"column:deleted_at" json:"deleted_at"');
  5: string name(go.tag='json:"name" gorm:"column:name"');
  6: string description(go.tag='json:"description" gorm:"column:description"');
  7: string str_permission_id(go.tag='json:"str_permission_id" gorm:"column:str_permission_id"');
  8: bool status(go.tag='json:"status" gorm:"column:status;default:true"');
}

// 用户角色关联表
struct ModelUserRole {
  1: i32 id (go.tag='gorm:"column:id" json:"id"');
  2: i32 created_at;
  3: i32 updated_at;
  4: i32 deleted_at;
  5: i32 user_id;
  6: i32 role_id;
  7: i32 app_id;
}

// 角色权限关联表
struct ModelRolePermission{
  1: i32 id (go.tag='gorm:"column:id" json:"id"');
  2: i32 created_at;
  3: i32 updated_at;
  4: i32 deleted_at;
  5: i32 role_id;
  6: i32 permission_id;
  7: i32 app_id;
}

// 角色菜单关联表
struct ModelRoleMenu{
  1: i32 id (go.tag='gorm:"column:id" json:"id"');
  2: i32 created_at;
  3: i32 updated_at;
  4: i32 deleted_at;
  5: i32 role_id;
  6: i32 menu_id;
  7: i32 app_id;
}


// 教研室表
struct ModelTeacherOffice{
  1: i32 id (go.tag='gorm:"column:id" json:"id"');
  2: i32 created_at(go.tag='gorm:"column:created_at;index" json:"created_at"');
  3: i32 updated_at(go.tag='gorm:"column:updated_at" json:"updated_at"');
  4: i32 deleted_at(go.tag='gorm:"column:deleted_at" json:"deleted_at"');
  5: string name(go.tag='json:"name" gorm:"column:name"'); // 名称
  6: string description(go.tag='json:"description" gorm:"column:description"'); // 描述
  7: i32 app_id(go.tag='json:"app_id" gorm:"column:app_id"' );  // 应用id
  8: string name2(go.tag='json:"name2" gorm:"column:name2"'); //  教研室名称（现在不使用）
  9: i32 order(go.tag='json:"order" gorm:"column:order"'); // 排序
  10: i32 category(go.tag='json:"category" gorm:"column:category"'); // 用于导出课程资源汇总表使用
}

enum ModelTeacherOffice_Category {
  Unknown = 0, // 未知
  CourseApply = 1, // 可以导出汇总表的类别
  TeacherInfo = 2 // 不同不可导出
}


enum BooleanType {
  Unknown = 0;
  True = 1;
  False = 2;
}


enum IsActiveType{
  Unknown = 0; //
  Active = 1; // 激活
  Inactive = 2; // 冻结
}
enum IsExternalType{
  Unknown = 0;
  External = 1; // 外聘
  Internal = 2; // 不是外聘
}


// 职务表
struct ModelDuties{
    1: i32 id (go.tag='gorm:"column:id" json:"id"');
    2: i32 created_at(go.tag='gorm:"column:created_at;index" json:"created_at"');
    3: i32 updated_at(go.tag='gorm:"column:updated_at" json:"updated_at"');
    4: i32 deleted_at(go.tag='gorm:"column:deleted_at" json:"deleted_at"');
    5: string name(go.tag='json:"name" gorm:"column:name"');
    6: string description(go.tag='json:"description" gorm:"column:description"');
    7: i32 app_id(go.tag='json:"app_id" gorm:"column:app_id"' );
    8: string order (go.tag='json:"order" gorm:"column:order"');
}

// 身份类别表
struct ModelCategory {
   1: i32 id (go.tag='gorm:"column:id" json:"id"');
   2: i32 created_at(go.tag='gorm:"column:created_at;index" json:"created_at"');
    3: i32 updated_at(go.tag='gorm:"column:updated_at" json:"updated_at"');
    4: i32 deleted_at(go.tag='gorm:"column:deleted_at" json:"deleted_at"');
    5: string name(go.tag='json:"name" gorm:"column:name"');
    6: string description(go.tag='json:"description" gorm:"column:description"');
    7: i32 app_id(go.tag='json:"app_id" gorm:"column:app_id"' );
}



// 课程表
struct ModelCourse{
    1: i32 id (go.tag='gorm:"column:id" json:"id"');
    2: i32 created_at(go.tag='gorm:"column:created_at;index" json:"created_at"');
    3: i32 updated_at(go.tag='gorm:"column:updated_at" json:"updated_at"');
    4: i32 deleted_at(go.tag='gorm:"column:deleted_at" json:"deleted_at"');
    5: string academic_year(go.tag='json:"academic_year" gorm:"column:academic_year"'); // 学年
    6: string semester(go.tag='json:"semester" gorm:"column:semester"'); // 学期
    7: i32 app_id(go.tag='json:"app_id" gorm:"column:app_id"'); // app_id
    8: string teacher_id(go.tag='json:"teacher_id" gorm:"column:teacher_id"'); // 教师id
    9: string teacher_name(go.tag='json:"teacher_name" gorm:"column:teacher_name"'); // 教师姓名
    10: string course_type(go.tag='json:"course_type" gorm:"column:course_type"'); // 开课类型
    11: string course_code(go.tag='json:"course_code" gorm:"column:course_code"'); // 课程号
    12: string course_name(go.tag='json:"course_name" gorm:"column:course_name"'); // 课程名称
    13: string college(go.tag='json:"college" gorm:"column:college"'); // 开课学院
    14: i32 is_core_course(go.tag='json:"is_core_course" gorm:"column:is_core_course"'); // 是否是核心课程
    15: double credit(go.tag='json:"credit" gorm:"column:credit"'); // 学分
    16: string teach_class(go.tag='json:"teach_class" gorm:"column:teach_class"'); // 教学班
    17: string class_name(go.tag='json:"class_name" gorm:"column:class_name"'); // 教学班组成
    18: i32 week_hour(go.tag='json:"week_hour" gorm:"column:week_hour"'); // 周学时
    19: i32 start_week(go.tag='json:"start_week" gorm:"column:start_week"'); // 起始周
    20: i32 end_week(go.tag='json:"end_week" gorm:"column:end_week"'); // 结束周
    21: string sae_week(go.tag='json:"sae_week" gorm:"column:sae_week"');  // 排课起始结束周
    22: string class_hour_type(go.tag='json:"class_hour_type" gorm:"column:class_hour_type"');//学时类型
    23: i32 task_hours(go.tag='json:"task_hours" gorm:"column:task_hours"'); // 任务总学时
    24: i32 atask_hours(go.tag='json:"atask_hours" gorm:"column:atask_hours"'); // 已排课学时
    25: string course_category(go.tag='json:"course_category" gorm:"column:course_category"'); // 课程类别
    26: string course_nature(go.tag='json:"course_nature" gorm:"column:course_nature"'); // 课程性质
    27: string grade_entry_teacher(go.tag='json:"grade_entry_teacher" gorm:"column:grade_entry_teacher"'); // 成绩录入老师
    28: string class_time(go.tag='json:"class_time" gorm:"column:class_time"'); // 上课时间
    29: string teach_location(go.tag='json:"teach_location" gorm:"column:teach_location"'); // 教学地点
    30: string direction(go.tag='json:"direction" gorm:"column:direction"'); // 专业方向
    31: string assessment_method(go.tag='json:"assessment_method" gorm:"column:assessment_method"'); // 考核方式
    32: string grade(go.tag='json:"grade" gorm:"column:grade"'); //  年级
    33: string object(go.tag='json:"object" gorm:"column:object"'); // 面向对象
    34: string speciality(go.tag='json:"speciality" gorm:"column:speciality"'); // 专业组成
    35: i32 student_number(go.tag='json:"student_number" gorm:"column:student_number"'); // 学生人数
    36: i32 rebuild_number(go.tag='json:"rebuild_number" gorm:"column:rebuild_number"'); // 重修人数
    37: bool is_adjust(go.tag='json:"is_adjust" gorm:"column:is_adjust"'); // 是否是代课课程
    38: bool is_collaborative_course(go.tag='json:"is_collaborative_course" gorm:"column:is_collaborative_course"'); // 是否是共建课程
    39: string str_course_id(go.tag='json:"str_course_id" gorm:"column:str_course_id"'); // 课程id
}

// 班级表
struct ModelClass {
    1: i32 id (go.tag='gorm:"column:id" json:"id"');
    2: i32 created_at(go.tag='gorm:"column:created_at;index" json:"created_at"');
    3: i32 updated_at(go.tag='gorm:"column:updated_at" json:"updated_at"');
    4: i32 deleted_at(go.tag='gorm:"column:deleted_at" json:"deleted_at"');
    5: string name(go.tag='json:"name" gorm:"column:name"');
    6: string description(go.tag='json:"description" gorm:"column:description"');
    7: i32 app_id(go.tag='json:"app_id" gorm:"column:app_id"' );
}


// 课程申请表
struct ModelCourseApply {
    1: i32 id (go.tag='gorm:"column:id" json:"id"');
    2: i32 created_at(go.tag='gorm:"column:created_at;index" json:"created_at"');
    3: i32 updated_at(go.tag='gorm:"column:updated_at;index" json:"updated_at"');
    4: i32 deleted_at(go.tag='gorm:"column:deleted_at" json:"deleted_at"');
    5: string department(go.tag='json:"department" gorm:"column:department"'); // 开课部门
    6: string academic_year(go.tag='json:"academic_year" gorm:"column:academic_year;index"'); // 学年
    7: string semester(go.tag='json:"semester" gorm:"column:semester;index"'); // 学期
    8: i32 app_id(go.tag='json:"app_id" gorm:"column:app_id;index"' ); // 学院id
    9: i32 office_id(go.tag='json:"office_id" gorm:"column:office_id;;index"'); // 教研室id
    10: string course_name(go.tag='json:"course_name" gorm:"column:course_name"'); // 课程名称
    11: i32 class_id(go.tag='json:"class_id" gorm:"column:class_id"'); // 班级id
    12:string teach_class_name(go.tag='json:"teach_class_name" gorm:"column:teach_class_name"'); // 教学班名称
    13:string teacher_name(go.tag='json:"teacher_name" gorm:"column:teacher_name"') // 授课教师id
    14:i64 total_hours(go.tag='json:"total_hours" gorm:"column:total_hours"') //任务总学时
    15:i64 total_students(go.tag='json:"total_students" gorm:"column:total_students"') // 选课人数
    16:double credit(go.tag='json:"credit" gorm:"column:credit"') //学分
    17:string course_nature(go.tag='json:"course_nature" gorm:"column:course_nature"'); // 课程性质
    18:string start_week(go.tag='json:"start_week" gorm:"column:start_week"'); // 起始周
    19:string online_platform_name(go.tag='json:"online_platform_name" gorm:"column:online_platform_name"');// 线上授课平台名称
    20:string teacher_id (go.tag='json:"teacher_id" gorm:"column:teacher_id"'); // 授课教师id
    21:string other_online_platform_name(go.tag='json:"other_online_platform_name" gorm:"column:other_online_platform_name"'); // 其他线上授课平台名称
    22:string teaching_resource_name(go.tag='json:"teaching_resource_name" gorm:"column:teaching_resource_name"'); // 专业教学资源库名称
    23:i32 is_build_partner(go.tag='json:"is_build_partner" gorm:"column:is_build_partner;default:2"'); // 是否与其他教师共建资源
    24:i32 is_self_property(go.tag='json:"is_self_property" gorm:"column:is_self_property;default:2"'); // 是否校内教师自主知识产权
    25:i32 is_use_other_resource(go.tag='json:"is_use_other_resource" gorm:"column:is_use_other_resource;default:2"'); // 是否使用其他信息化教学资源
    26:string other_resource_name(go.tag='json:"other_resource_name" gorm:"column:other_resource_name;type:text"'); // 其他教学资源名称
    27:string resource_build_partner(go.tag='json:"resource_build_partner" gorm:"column:resource_build_partner"');   // 资源共建分工情况
    28:string team_teacher_name(go.tag='json:"team_teacher_name" gorm:"column:team_teacher_name"'); // 团队老师
    29:string remark(go.tag='json:"remark" gorm:"column:remark;type:text"'); // 备注
    30:string url (go.tag='json:"url" gorm:"column:url;type:text"'); // 教学资源url
    31:string isnot_account (go.tag='json:"isnot_account" gorm:"column:isnot_account"'); // 非三大平台须填写登录账户
    32:string isnot_password(go.tag='json:"isnot_password" gorm:"column:isnot_password"') // 非三大平台须填写登录密码
    33:string opinion(go.tag='json:"opinion" gorm:"column:opinion"') // 教研室主任审查意见
    34:i32 examination (go.tag='json:"examination" gorm:"column:examination"') // 教研室主任审查
    35:i32 is_active(go.tag='json:"is_active" gorm:"column:is_active;default:1"') // 是否激活
    36: bool is_fill(go.tag='json:"is_fill" gorm:"column:is_fill;default:false"')  // 是否填写
}

enum ExaminationType {
    Unknown = 0; // 未审核
    // 符合要求
    Pass = 1;
    // 不符合要求
    NotPass = 2;
}



//  课程性质
struct ModelCourseNature {
    1: i32 id (go.tag='gorm:"column:id" json:"id"');
    2: i32 created_at(go.tag='gorm:"column:created_at;index" json:"created_at"');
    3: i32 updated_at(go.tag='gorm:"column:updated_at" json:"updated_at"');
    4: i32 deleted_at(go.tag='gorm:"column:deleted_at" json:"deleted_at"');
    5: string name(go.tag='json:"name" gorm:"column:name"');
}



// 操作日志
struct ModelOperationLogs {
    1: i32 id (go.tag='gorm:"column:id" json:"id"');
    2: i32 created_at(go.tag='gorm:"column:created_at;index" json:"created_at"');
    3: i32 updated_at(go.tag='gorm:"column:updated_at" json:"updated_at"');
    4: i32 deleted_at(go.tag='gorm:"column:deleted_at" json:"deleted_at"');
    5: string user_name(go.tag='json:"user_name" gorm:"column:user_name"');
    6: string operation(go.tag='json:"operation" gorm:"column:operation"'); // 操作
    7: string object_type(go.tag='json:"object_type" gorm:"column:object_type"'); // 对象类型
    8: string object_id(go.tag='json:"object_id" gorm:"column:object_id"'); // 对象id
    9: string details(go.tag='json:"details" gorm:"column:details;type:text"'); // 详情
    10: string ip_address(go.tag='json:"ip_address" gorm:"column:ip_address"'); // ip地址
    11: i32 status(go.tag='json:"status" gorm:"column:status"'); // 状态
    12: i32 app_id (go.tag='json:"app_id" gorm:"column:app_id"') // 学院id
}


// 教学人员基本信息
struct ModelTeacherInfo {
  1: i32 id (go.tag='gorm:"column:id" json:"id"');
  2: i32 created_at(go.tag='gorm:"column:created_at;index" json:"created_at"');
  3: i32 updated_at(go.tag='gorm:"column:updated_at" json:"updated_at"');
  4: i32 deleted_at(go.tag='gorm:"column:deleted_at" json:"deleted_at"');
  5: string department(go.tag='json:"department" gorm:"column:department"'); // 开课部门
  6: i32 app_id(go.tag='json:"app_id" gorm:"column:app_id"' ); // 学院id
  7: i32 uid (go.tag='json:"uid" gorm:"column:uid"'); // 用户id
  8: string name(go.tag='json:"name" gorm:"column:name"'); // 姓名
  9: i32 office_id(go.tag='json:"office_id" gorm:"column:office_id"'); // 教研室id
  10: string duties(go.tag='json:"duties" gorm:"column:duties"'); // 职务
  11: string appoint_time(go.tag='json:"appoint_time" gorm:"column:appoint_time"') // 任职时间
  12: string position_level(go.tag='json:"position_level" gorm:"column:position_level"') // 岗位等级
  13: string cposition_time(go.tag='json:"cposition_time" gorm:"column:cposition_time"') // 现聘岗位时间
  14: i64 remunerate(go.tag='json:"remunerate" gorm:"column:remunerate"') //岗位等级课酬标准
  15: string id_category(go.tag='json:"id_category" gorm:"column:id_category"') // 身份类别
  16:i32 is_active(go.tag='json:"is_active" gorm:"column:is_active;default:1"'); // 是否激活
  17 :i32 is_external(go.tag='json:"is_external" gorm:"column:is_external;default:2"') // 是否外聘
  18 :i32 order(go.tag='json:"order" gorm:"column:order;default:1"')  // 排序
  19 :string user_name(go.tag='json:"user_name" gorm:"column:user_name"') // 学号
}

struct ModelHoliday {
  1: i32 id (go.tag='gorm:"column:id" json:"id"');
  2: i32 created_at(go.tag='gorm:"column:created_at;index" json:"created_at"');
  3: i32 updated_at(go.tag='gorm:"column:updated_at" json:"updated_at"');
  4: i32 deleted_at(go.tag='gorm:"column:deleted_at" json:"deleted_at"');
  5: string name(go.tag='json:"name" gorm:"column:name"'); // 名称
  6: string begin_date(go.tag='json:"begin_date" gorm:"column:begin_date"'); // 开始时间
  7: string end_date(go.tag='json:"end_date" gorm:"column:end_date"'); // 结束时间
  8: i32 app_id(go.tag='json:"app_id" gorm:"column:app_id"' );
  9: string remark(go.tag='json:"remark" gorm:"column:remark"'); // 备注
  10: string academic_year(go.tag='json:"academic_year" gorm:"column:academic_year"'); // 学年
  11: string semester(go.tag='json:"semester" gorm:"column:semester"'); // 学期
}



// 实训
struct ModelTrainingCourse {
  1: i32 id (go.tag='gorm:"column:id" json:"id"');
  2: i32 created_at(go.tag='gorm:"column:created_at;index" json:"created_at"');
  3: i32 updated_at(go.tag='gorm:"column:updated_at" json:"updated_at"');
  4: i32 deleted_at(go.tag='gorm:"column:deleted_at" json:"deleted_at"');
  5: string major(go.tag='json:"major" gorm:"column:major"'); // 专业
  6: string class_name(go.tag='json:"class_name" gorm:"column:class_name"'); // 班级
  7: i32 student_number(go.tag='json:"student_number" gorm:"column:student_number"'); //  学生人数
  8: string course_name(go.tag='json:"course_name" gorm:"column:course_name"'); // 课程名称
  9: string location(go.tag='json:"location" gorm:"column:location"'); // 地点
  10: string cooperation_enterprise(go.tag='json:"cooperation_enterprise" gorm:"column:cooperation_enterprise"'); // 合作企业全称
  11: i32 training_week(go.tag='json:"training_week" gorm:"column:training_week"'); // 实训周次
  12: i32 app_id(go.tag='json:"app_id" gorm:"column:app_id"');
  13: string enterprise_teacher_name(go.tag='json:"enterprise_teacher_name" gorm:"column:enterprise_teacher_name"'); // 企业老师
  14: string academic_year(go.tag='json:"academic_year" gorm:"column:academic_year"'); // 学年
  15: string semester(go.tag='json:"semester" gorm:"column:semester"'); // 学期
}


// 实训课老师
struct ModelTrainingCourseTeacher {
  1: i32 id (go.tag='gorm:"column:id" json:"id"');
  2: i32 created_at(go.tag='gorm:"column:created_at;index" json:"created_at"');
  3: i32 updated_at(go.tag='gorm:"column:updated_at" json:"updated_at"');
  4: i32 deleted_at(go.tag='gorm:"column:deleted_at" json:"deleted_at"');
  5: i32 training_course_id(go.tag='json:"training_course_id" gorm:"column:training_course_id"');  // 实训id
  6: string teacher_id(go.tag='json:"teacher_id" gorm:"column:teacher_id"');  // 老师id
  7: string teacher_name(go.tag='json:"teacher_name" gorm:"column:teacher_name"'); // 老师姓名
  8: i32 app_id(go.tag='json:"app_id" gorm:"column:app_id"' );
  9: string week(go.tag='json:"week" gorm:"column:week"'); // 星期
  // 学期
  10: string academic_year(go.tag='json:"academic_year" gorm:"column:academic_year"');
  11: string semester(go.tag='json:"semester" gorm:"column:semester"');
}

// 期末考试
struct ModelFinalExam {
  1: i32 id (go.tag='gorm:"column:id" json:"id"');
  2: i32 created_at(go.tag='gorm:"column:created_at;index" json:"created_at"');
  3: i32 updated_at(go.tag='gorm:"column:updated_at" json:"updated_at"');
  4: i32 deleted_at(go.tag='gorm:"column:deleted_at" json:"deleted_at"');
  5: string academic_year (go.tag='json:"academic_year" gorm:"column:academic_year"');
  6: string semester (go.tag='json:"semester" gorm:"column:semester"');
  7: string assessment_method (go.tag='json:"assessment_method" gorm:"column:assessment_method"'); // 考核方式
  8: string exam_subject (go.tag='json:"exam_subject" gorm:"column:exam_subject"');  //考试科目
  9: string class_name (go.tag='json:"class_name" gorm:"column:class_name"');//使用班级
  10: string a_proposer (go.tag='json:"a_proposer" gorm:"column:a_proposer"');  // A卷命题人
  11: string b_proposer (go.tag='json:"b_proposer" gorm:"column:b_proposer"'); //B卷命题人
  12: string c_proposer (go.tag='json:"c_proposer" gorm:"column:c_proposer"');  //C卷命题人
  13: bool a_is_shared (go.tag='json:"a_is_shared" gorm:"column:a_is_shared"');
  14: bool b_is_shared (go.tag='json:"b_is_shared" gorm:"column:b_is_shared"');
  15: bool c_is_shared (go.tag='json:"c_is_shared" gorm:"column:c_is_shared"');
  16: bool is_scoring (go.tag='json:"is_scoring" gorm:"column:is_scoring"');
  17: i32 exam_workload (go.tag='json:"exam_workload" gorm:"column:exam_workload"'); // 出卷工作量
  18: i32 scoring_workload (go.tag='json:"scoring_workload" gorm:"column:scoring_workload"'); // 阅卷工作量
  19: string scoring_teacher (go.tag='json:"scoring_teacher" gorm:"column:scoring_teacher"'); // 阅卷老师
  20: i32 app_id(go.tag='json:"app_id" gorm:"column:app_id"' );
  21: i32 course_id (go.tag='json:"course_id" gorm:"column:course_id"');
}
// 期末考试填写记录
struct ModelFinalExamRecord {
  1: i32 id (go.tag='gorm:"column:id" json:"id"');
  2: i32 created_at(go.tag='gorm:"column:created_at;index" json:"created_at"');
  3: i32 updated_at(go.tag='gorm:"column:updated_at" json:"updated_at"');
  4: i32 deleted_at(go.tag='gorm:"column:deleted_at" json:"deleted_at"');
  5: string exam_subject (go.tag='json:"exam_subject" gorm:"column:exam_subject"');  // 考试科目
  6: string class_name_list (go.tag='json:"class_name_list" gorm:"column:class_name_list"'); // 使用班级
  7: i32 app_id(go.tag='json:"app_id" gorm:"column:app_id"' );
  8: string academic_year (go.tag='json:"academic_year" gorm:"column:academic_year"');
  9: string semester (go.tag='json:"semester" gorm:"column:semester"');
  10: string a_proposer (go.tag='json:"a_proposer" gorm:"column:a_proposer"');  // A卷命题人
  11: string b_proposer (go.tag='json:"b_proposer" gorm:"column:b_proposer"'); //B卷命题人
  12: string c_proposer (go.tag='json:"c_proposer" gorm:"column:c_proposer"');  //C卷命题人
  13: string user_name (go.tag='json:"user_name" gorm:"column:user_name"');
  14: string assessment_method (go.tag='json:"assessment_method" gorm:"column:assessment_method"'); // 考核方式
}

// 期初考试
struct ModelBeginExam {
  1: i32 id (go.tag='gorm:"column:id" json:"id"');
  2: i32 created_at(go.tag='gorm:"column:created_at;index" json:"created_at"');
  3: i32 updated_at(go.tag='gorm:"column:updated_at" json:"updated_at"');
  4: i32 deleted_at(go.tag='gorm:"column:deleted_at" json:"deleted_at"');
  5: string academic_year (go.tag='json:"academic_year" gorm:"column:academic_year"');
  6: string semester (go.tag='json:"semester" gorm:"column:semester"');
  7: string course_name (go.tag='json:"course_name" gorm:"column:course_name"');
  8: i32 expected_num (go.tag='json:"expected_num" gorm:"column:expected_num"'); // 应考人数
  9: i32 actual_num (go.tag='json:"actual_num" gorm:"column:actual_num"'); // 实际人数
  10: string assessment_method (go.tag='json:"assessment_method" gorm:"column:assessment_method"'); // 考核方式
  11: string exam_setter (go.tag='json:"exam_setter" gorm:"column:exam_setter"'); // 出卷人
  12: string examiner (go.tag='json:"examiner" gorm:"column:examiner"'); // 阅卷人
  13: string invigilator (go.tag='json:"invigilator" gorm:"column:invigilator"'); // 监考人
  14: string exam_time (go.tag='json:"exam_time" gorm:"column:exam_time"'); // 考试时间
  15: string exam_location (go.tag='json:"exam_location" gorm:"column:exam_location"'); // 考试地点
  16: string teacher_name (go.tag='json:"teacher_name" gorm:"column:teacher_name"'); // 教师姓名
  17: string teacher_id (go.tag='json:"teacher_id" gorm:"column:teacher_id"'); // 老师id
  18: i32 app_id(go.tag='json:"app_id" gorm:"column:app_id"' );
  }


enum ModelWorkloadStatisticsCategory {
   Unknown = 0; // 未知
   // 理论课
   Theory = 1;
   // 实训课
   TrainingCourse = 2;
   // 实习
   Internship = 3;
   // 期初补考
   BeginExam = 4;
   // 其他
   Other = 5;
}

  // 工作量统计表
struct ModelWorkloadStatistics {
    1: i32 id (go.tag='gorm:"column:id" json:"id"');
    2: i32 created_at(go.tag='gorm:"column:created_at;index" json:"created_at"');
    3: i32 updated_at(go.tag='gorm:"column:updated_at" json:"updated_at"');
    4: i32 deleted_at(go.tag='gorm:"column:deleted_at" json:"deleted_at"');
    5: string academic_year (go.tag='json:"academic_year" gorm:"column:academic_year;index"');
    6: string semester (go.tag='json:"semester" gorm:"column:semester;index"');
    //app_id
    7: i32 app_id(go.tag='json:"app_id" gorm:"column:app_id;index"' );
    8: string teacher_name (go.tag='json:"teacher_name" gorm:"column:teacher_name"');
    9: string teacher_id (go.tag='json:"teacher_id" gorm:"column:teacher_id"');

    // 课程信息
    10: string teach_class (go.tag='json:"teach_class" gorm:"column:teach_class"'); // 教学班
    11: string class_name (go.tag='json:"class_name" gorm:"column:class_name"'); // 教学班组成
    12: string assessment_method (go.tag='json:"assessment_method" gorm:"column:assessment_method"'); // 考核方式
    13: string sae_week (go.tag='json:"sae_week" gorm:"column:sae_week"'); // 教学起始周
    14: string not_class_time (go.tag='json:"not_class_time" gorm:"column:not_class_time"'); // 非上班时间上课节次
    15: i32 student_number (go.tag='json:"student_number" gorm:"column:student_number"'); // 学生总人数
    16: double number_factor (go.tag='json:"number_factor" gorm:"column:number_factor"'); // 人数系数
    17: i32 week_hour (go.tag='json:"week_hour" gorm:"column:week_hour"'); // 每周学时

    //当月教学周数
    18: i32 theory_wn (go.tag='json:"theory_wn" gorm:"column:theory_wn"'); // 理论课
    19: i32 training_wn (go.tag='json:"training_wn" gorm:"column:training_wn"'); // 实训课

    // 当月教学工作量统计
    20: double theory_course_hours (go.tag='json:"theory_course_hours" gorm:"column:theory_course_hours"');  // 理论课课时
    21: i32 training_course_hours(go.tag='json:"training_course_hours" gorm:"column:training_course_hours"'); // 实训课
    22: i32 internship_hours (go.tag='json:"internship_hours" gorm:"column:internship_hours"'); // 实习课时
    23: i32 review_week (go.tag='json:"review_week" gorm:"column:review_week"'); // 复习周
    24: i32 giving_paper (go.tag='json:"giving_paper" gorm:"column:giving_paper"'); // 出卷
    25: double grading_paper (go.tag='json:"grading_paper" gorm:"column:grading_paper"'); // 阅卷
    26: double other (go.tag='json:"other" gorm:"column:other"'); // 其他
    27: string material1 (go.tag='json:"material1" gorm:"column:material1"'); //佐证材料及编号1
    28: string material2 (go.tag='json:"material2" gorm:"column:material2"'); //佐证材料及编号2

    // 当月教学津贴统计
    29: i32 duties_subsidy (go.tag='json:"duties_subsidy" gorm:"column:duties_subsidy"'); // 职务补贴
    30: i32 invigilation_tour (go.tag='json:"invigilation_tour" gorm:"column:invigilation_tour"'); // 监考
    31: i32 traffic_subsidy (go.tag='json:"traffic_subsidy" gorm:"column:traffic_subsidy"'); // 交通补贴
    32: i32 work_overtime (go.tag='json:"work_overtime" gorm:"column:work_overtime"'); // 加班费
    33: i32 discount (go.tag='json:"discount" gorm:"column:discount"'); // 折扣
    34: i32 category (go.tag='json:"category" gorm:"column:category;index"'); // 分类
    // ModelWorkloadStatisticsRecord id
    35: i32 record_id (go.tag='json:"record_id" gorm:"column:record_id;index"');
    36: string c_month (go.tag='json:"c_month" gorm:"column:c_month"'); // 月份

    // 课酬
    37: double course_wage (go.tag='json:"course_wage" gorm:"column:course_wage"'); // 课酬
  }

// 工作量统计记录
struct ModelWorkloadStatisticsRecord {
  1: i32 id (go.tag='gorm:"column:id" json:"id"');
  2: i32 created_at(go.tag='gorm:"column:created_at;index" json:"created_at"');
  3: i32 updated_at(go.tag='gorm:"column:updated_at" json:"updated_at"');
  4: i32 deleted_at(go.tag='gorm:"column:deleted_at" json:"deleted_at"');
  5: string academic_year (go.tag='json:"academic_year" gorm:"column:academic_year"');
  6: string semester (go.tag='json:"semester" gorm:"column:semester"');
  7: string user_name (go.tag='json:"user_name" gorm:"column:user_name"');
  8: string c_month (go.tag='json:"c_month" gorm:"column:c_month"');
  9: i32 app_id(go.tag='json:"app_id" gorm:"column:app_id;index"' );
  // 备注
  10: string remark (go.tag='json:"remark" gorm:"column:remark"'); // 备注
  // 理论课是否统计
  11: bool theory_statistics (go.tag='json:"theory_statistics" gorm:"column:theory_statistics"');
  // 实训课是否统计
  12: bool training_statistics (go.tag='json:"training_statistics" gorm:"column:training_statistics"');
  // 实习是否统计
  13: bool internship_statistics (go.tag='json:"internship_statistics" gorm:"column:internship_statistics"');
  // 期初补考是否统计
  14: bool begin_exam_statistics (go.tag='json:"begin_exam_statistics" gorm:"column:begin_exam_statistics"');
}

// 用户签名
struct ModelUserSign {
 1: i32 id (go.tag='gorm:"column:id" json:"id"');
  2: i32 created_at(go.tag='gorm:"column:created_at;index" json:"created_at"');
  3: i32 updated_at(go.tag='gorm:"column:updated_at" json:"updated_at"');
  4: i32 deleted_at(go.tag='gorm:"column:deleted_at" json:"deleted_at"');
  5: i32 app_id(go.tag='json:"app_id" gorm:"column:app_id;index"' );
  6: i32 uid (go.tag='json:"uid" gorm:"column:uid"');
  7: string sign_id (go.tag='json:"sign_id" gorm:"column:sign_id"');
}
