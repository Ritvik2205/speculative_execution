.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, 67 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rdi]
or al, cl
setno cl
or dl, bl
sbb bl, al
and rdi, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], bl
add dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
