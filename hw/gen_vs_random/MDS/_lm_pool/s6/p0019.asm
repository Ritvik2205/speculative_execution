.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rdi]
xor rcx, -2
and dl, -73
xor sil, -46
and bl, 68
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
test sil, al
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
xor cl, 55
xor ax, -1005
and rax, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
and ax, -16061
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
