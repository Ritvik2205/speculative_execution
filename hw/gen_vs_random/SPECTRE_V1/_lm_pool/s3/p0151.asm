.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 12 # instrumentation
cmovnb ecx, edx
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], edi
inc rcx
jp .bb_0.1
jmp .exit_0
.bb_0.1:
cmp cl, 58
and al, -23
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 812406526
test al, -99
xor sil, al
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr esi, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
