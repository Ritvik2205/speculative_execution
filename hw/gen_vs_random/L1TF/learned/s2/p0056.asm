.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 12 # instrumentation
cmovnb ebx, ecx
sbb cl, dl
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], ebx
and cl, bl
add dl, -70
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
or cl, -78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
