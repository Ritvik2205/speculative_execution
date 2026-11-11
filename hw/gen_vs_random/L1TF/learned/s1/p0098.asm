.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rcx]
add cl, cl
and al, -68
and rcx, 0b1111111111111 # instrumentation
cmovb di, word ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
lea dx, qword ptr [rax + rdi + 8]
mov cl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
