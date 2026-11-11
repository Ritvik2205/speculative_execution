.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rax]
and sil, sil
and rcx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], al
and dl, cl
xor dl, -19
and dl, cl
test sil, 41
bt eax, edx
xor cx, -18
and dil, 125
and dx, 3
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
and esi, 74
xor al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
