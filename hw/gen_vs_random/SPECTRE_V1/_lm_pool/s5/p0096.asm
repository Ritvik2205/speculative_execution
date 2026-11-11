.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], 29
and rcx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rcx]
setno cl
and rdi, 0b1111111111111 # instrumentation
cmp rdx, qword ptr [r14 + rdi]
add cl, dl
add al, -109
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], 69
lea esi, qword ptr [rcx + rdx]
or dl, 41
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
