.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 29207
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
btr cx, bx
and rdx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rdx]
and bl, 68
xor al, dl
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ebx
jmp .bb_0.1
.bb_0.1:
test bl, -14
or dil, -76
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
or cl, 119
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
