<ul class="nav nav-tabs border-bottom" id="lessonTabs" role="tablist">
    <li class="nav-item">
        <a class="nav-link active" id="overview-tab" data-toggle="tab" href="#overview" role="tab">
            <i class="fas fa-info-circle mr-2"></i> Overview
        </a>
    </li>
    <li class="nav-item">
        <a class="nav-link" id="qa-tab" data-toggle="tab" href="#qa" role="tab">
            <i class="fas fa-question-circle mr-2"></i> Q&A
        </a>
    </li>
    <li class="nav-item">
        <a class="nav-link" id="certificate-tab" data-toggle="tab" href="#certificate" role="tab">
            <i class="fas fa-certificate mr-2"></i> Certificate
        </a>
    </li>
</ul>

<!-- Tab Content -->
<div class="tab-content p-4" id="lessonTabContent">
    
    <!-- Overview Tab -->
    <div class="tab-pane fade show active" id="overview" role="tabpanel">
        <h5 class="mb-3">Course Overview</h5>
        <p>Welcome to this comprehensive Bootstrap 4 course! In this lesson, you'll learn the fundamentals of building responsive websites.</p>
    </div>

    <!-- Q&A Tab -->
    <div class="tab-pane fade" id="qa" role="tabpanel">
        <div class="qa-section">
            <div class="d-flex justify-content-between align-items-center mb-4">
                <h5 class="mb-0">Questions in this course</h5>
                <button class="btn btn-primary btn-sm" data-toggle="modal" data-target="#askQuestionModal">
                    <i class="fas fa-plus mr-2"></i> Ask question
                </button>
            </div>

            <!-- Search Box -->
            <div class="search-questions mb-4">
                <div class="input-group">
                    <input type="text" class="form-control" id="searchQuestions" placeholder="Search in questions...">
                    <button class="btn btn-outline-secondary" type="button">
                            <i class="fas fa-search"></i>
                        </button></div>
            </div>

            <!-- Questions List -->
            <div class="questions-list" id="questionsList">
                <div class="text-center text-muted py-4" id="questionsLoading">
                    <i class="fas fa-spinner fa-spin mr-2"></i> Loading questions...
                </div>
            </div>
        </div>
    </div>

    <!-- Certificate Tab -->
    <div class="tab-pane fade" id="certificate" role="tabpanel">
        <h5 class="mb-3">Certificate</h5>
        <p>Complete the course to earn your certificate.</p>
    </div>

</div>

<!-- Ask Question Modal -->
<div class="modal fade" id="askQuestionModal" tabindex="-1" role="dialog" aria-labelledby="askQuestionModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="askQuestionModalLabel">Ask a question</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form id="askQuestionForm">
                <div class="modal-body">
                    <input type="hidden" id="askCourseId" value="<?php echo $course->id_course ?>">
                    <input type="hidden" id="askTokenStudent" value="<?php echo $_SESSION["student"]->token_student ?>">
                    <input type="hidden" id="askIdLection" value="0">
                    <div class="form-group">
                        <label for="questionTitle">Title</label>
                        <input type="text" class="form-control" id="questionTitle" placeholder="e.g. How do I install the extension?" required>
                    </div>
                    <div class="form-group">
                        <label for="questionContent">Description</label>
                        <textarea class="form-control" id="questionContent" rows="5" placeholder="Describe your question in detail..." required></textarea>
                    </div>
                    <small class="text-muted">
                        <i class="fas fa-info-circle mr-1"></i>
                        Your question will be associated with the currently active lesson.
                    </small>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                    <button type="submit" class="btn btn-primary" id="askQuestionSubmit">
                        <i class="fas fa-paper-plane mr-2"></i> Submit question
                    </button>
                </div>
            </form>
        </div>
    </div>
</div>
