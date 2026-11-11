.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 27 # instrumentation
mov dl, dil
test al, -99
and rdi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rdi]
cmp al, 77
and al, 33
or cx, 95
add dl, 47
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], esi
add al, cl
test dil, -116
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
