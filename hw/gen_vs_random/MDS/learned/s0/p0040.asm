.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test si, ax
test cl, bl
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
xor dl, sil
and dil, cl
and dl, -73
and dl, -73
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
test dil, al
xor cl, bl
bt ax, si
test rsi, 58
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
not dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ecx
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
