<li class="nav-item">
    <!-- data-target 要對應 下面的id   -->
    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#coursebar"
        aria-expanded="true" aria-controls="collapseTwo">
        <!-- fontawesome -->
        <i class="fa-solid fa-book"></i>
        <span>Course</span>
    </a>
    <!-- id 要對應 上面的 data-target  -->
    <div id="coursebar" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
        <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">Course Option</h6>
            <a class="collapse-item" href="course_list.php">course-List</a>
            <a class="collapse-item" href="course_list.php?valid=0">course-List-已下架</a>
        </div>
    </div>
</li>