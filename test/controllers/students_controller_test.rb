require 'test_helper'

class StudentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @student = students(:one)
  end

  test "should get index" do
    get students_url
    assert_response :success
  end

  test "should get new" do
    get new_student_url
    assert_response :success
  end

  test "should create student" do
    assert_difference('Student.count') do
      post students_url, params: { student: { email: @student.email, first_name: @student.first_name, last_name: @student.last_name, parent1_email: @student.parent1_email, parent1_first_name: @student.parent1_first_name, parent1_last_name: @student.parent1_last_name, parent1_phone_number: @student.parent1_phone_number, parent2_email: @student.parent2_email, parent2_first_name: @student.parent2_first_name, parent2_last_name: @student.parent2_last_name, parent2_phone_name: @student.parent2_phone_name, position: @student.position } }
    end

    assert_redirected_to student_url(Student.last)
  end

  test "should show student" do
    get student_url(@student)
    assert_response :success
  end

  test "should get edit" do
    get edit_student_url(@student)
    assert_response :success
  end

  test "should update student" do
    patch student_url(@student), params: { student: { email: @student.email, first_name: @student.first_name, last_name: @student.last_name, parent1_email: @student.parent1_email, parent1_first_name: @student.parent1_first_name, parent1_last_name: @student.parent1_last_name, parent1_phone_number: @student.parent1_phone_number, parent2_email: @student.parent2_email, parent2_first_name: @student.parent2_first_name, parent2_last_name: @student.parent2_last_name, parent2_phone_name: @student.parent2_phone_name, position: @student.position } }
    assert_redirected_to student_url(@student)
  end

  test "should destroy student" do
    assert_difference('Student.count', -1) do
      delete student_url(@student)
    end

    assert_redirected_to students_url
  end
end
