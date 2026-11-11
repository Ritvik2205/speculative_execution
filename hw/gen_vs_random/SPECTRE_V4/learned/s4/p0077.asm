.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts ebx, 197
xor ax, bx
add cl, -62
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
and rax, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], bl
inc edi
add bl, dil
movsx bx, sil
and edi, -102
cmp edx, -95
xor bl, 126
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
