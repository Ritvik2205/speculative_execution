.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rcx]
xor al, 55
xor al, cl
or al, 16
xor dl, al
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
not al
xor rbx, 89
test esi, 425331143
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], cl
test bl, -114
xor rbx, 89
xor sil, dil
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], sil
or sil, dil
xor sil, cl
xor bx, 28
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
