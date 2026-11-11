.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, -97
xor cx, -18
or dil, al
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 54
and rcx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rcx]
and dil, dil
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], al
and dl, -73
jmp .bb_0.1
.bb_0.1:
and cx, bx
test rax, rbx
or al, cl
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -834948525
and cl, dil
test dl, bl
xor dl, -19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
