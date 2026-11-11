.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 91
and dl, dil
xor sil, dil
bt ax, cx
xor al, 9
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dil
and cl, bl
test esi, 425331143
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], esi
and al, -54
and dl, -73
xor cl, 55
and rbx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rbx]
xor sil, -15
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
