library(tidyverse)
library(here)
library(janitor)

# These names are analysis-friendly aliases for the original survey variables.
# Full original survey item wording is preserved in codebook.csv.

practitioner <- read_csv(
  here("data", "practitioner.csv"),
  show_col_types = FALSE,
  locale = locale(encoding = "Latin1")) |>
  clean_names() |>
  rename(
    practitioner_name = what_is_the_name_of_the_practitioner,
    tool_version = what_is_the_version_of_the_tool,
    consent = by_saying_yes_you_affirm_that_you_have_read_understood_and_agree_to_the_terms_of_the_informed_consent_form,
    work_setting = do_you_primarily_work_in_industry_academia_or_hold_a_hybrid_joint_appointment,
    years_experience = how_many_years_of_experience_do_you_have_in_statistical_consulting_or_interdisciplinary_collaboration,
    project_description = briefly_describe_the_project_you_are_considering_for_this_interview,
    purpose_clear = the_overall_purpose_of_the_designed_for_impact_tool_is_clear,
    planning_eval_distinction_meaningful = the_distinction_between_prospective_impact_planning_and_retrospective_impact_evaluation_is_meaningful,
    structure_flexibility_balance = the_dit_appropriately_balances_structure_with_flexibility,
    clarity_explanation = optional_any_verbal_explanation,
    concepts_align_with_impact = the_concepts_introduced_in_the_dit_align_with_how_impact_naturally_unfolds_in_consulting_projects,
    feasible_constraints = the_tool_would_be_feasible_to_use_within_realistic_project_constraints_time_scope_access,
    broadly_applicable = this_tool_seems_broadly_applicable_across_domains_and_industries_that_utilize_statistical_consulting,
    fit_feasibility_explanation = optional_any_verbal_explanation_2,
    prompts_overlooked_discussions = the_dit_prompts_discussions_that_might_otherwise_be_overlooked_in_typical_consulting_engagements,
    strengthens_statistician_role = using_a_formal_impact_evaluation_tool_strengthens_the_role_of_statisticians_as_collaborators_and_advisors,
    overall_useful = overall_the_designed_for_impact_tool_is_useful_for_statistical_consulting_practice,
    usefulness_explanation = optional_any_verbal_explanation_3,
    would_recommend = i_would_consider_recommending_this_tool_to_other_statistical_practitioners,
    would_use_for_teaching = i_would_consider_using_the_dit_to_teach_students_or_junior_consultants_about_impact_planning_and_retrospective_impact_evaluation,
    intend_to_integrate_ideas = there_are_new_ideas_from_the_dit_that_i_intend_to_integrate_into_my_existing_consulting_or_collaborative_workflow,
    adoption_explanation = optional_any_verbal_explanation_4,
    strongest_aspects = what_are_the_top_two_strongest_aspects_of_the_designed_for_impact_tool,
    unclear_impractical_misaligned = what_aspect_of_the_tool_feels_most_unclear_impractical_or_misaligned_with_real_consulting_practice,
    statistician_contributions = what_aspects_of_this_tool_reflect_the_unique_contributions_statisticians_bring_to_interdisciplinary_teams,
    revision_suggestions = if_you_were_revising_this_tool_what_are_two_changes_or_additions_that_you_would_make,
    anticipated_impact_improvement = how_do_you_foresee_this_tool_improving_the_impact_of_your_work_or_collaborations,
    additional_comments = is_there_anything_else_you_would_like_to_share_that_we_havent_discussed)

student_post <- read_csv(
  here("data", "student-post.csv"),
  show_col_types = FALSE,
  locale = locale(encoding = "Latin1")) |>
  clean_names() |>
  rename(
    age_18_or_older = are_you_at_least_18_years_of_age,
    consent = by_selecting_yes_you_affirm_that_you_have_read_understood_and_agree_to_the_terms_of_the_informed_consent_form,
    applied_tool_status = since_learning_about_the_designed_for_impact_tool_dit_have_you_applied_the_tool_in_your_work_as_a_statistical_collaborator,
    reason_not_used = what_is_the_primary_reason_s_that_you_havent_used_the_tool,
    future_use_likelihood_not_used = column,
    reason_used_ideas_only = what_is_the_primary_reason_s_that_you_have_used_ideas_from_the_tool_but_not_the_tool_itself,
    future_use_likelihood_used_ideas_only = x2,
    most_effective_feature = what_was_the_most_effective_relevant_feature_of_the_tool_when_you_applied_it,
    least_effective_feature = what_was_the_least_effective_relevant_feature_of_the_tool_when_you_applied_it,
    future_use_likelihood_applied_tool = x3)

student_pre <- read_csv(
  here("data", "student-pre.csv"),
  show_col_types = FALSE,
  locale = locale(encoding = "Latin1")) |>
  clean_names() |>
  rename(
    age_18_or_older = are_you_at_least_18_years_of_age,
    consent = by_selecting_yes_you_affirm_that_you_have_read_understood_and_agree_to_the_terms_of_the_informed_consent_form,
    impact_planning_important = impact_planning_seems_like_an_important_part_of_statistical_collaboration,
    impact_evaluation_important = impact_evaluation_seems_like_an_important_part_of_statistical_collaboration,
    teach_impact_planning_eval = future_students_of_this_class_should_be_taught_about_impact_planning_and_evaluation,
    teach_tool_use = future_students_of_this_class_should_be_taught_how_to_use_the_designed_for_impact_tool,
    understand_tool_use = i_understand_how_to_use_the_designed_for_impact_tool,
    design_intuitive = the_design_of_the_dit_is_intuitive_and_easy_to_understand,
    seems_impractical = the_designed_for_impact_tool_seems_impractical_for_use_in_statistical_consulting,
    overall_useful = overall_the_designed_for_impact_tool_seems_useful_for_statistical_consulting_practice,
    intend_future_use = i_intend_to_use_the_designed_for_impact_tool_for_future_projects,
    most_helpful = what_did_you_find_most_helpful_about_the_designed_for_impact_tool,
    most_confusing_unclear = what_aspect_of_the_designed_for_impact_tool_was_most_confusing_or_unclear,
    questions_comments_suggestions = what_questions_comments_or_suggestions_do_you_have_about_the_designed_for_impact_tool,
    additional_comments = is_there_anything_else_you_would_like_to_mention)
