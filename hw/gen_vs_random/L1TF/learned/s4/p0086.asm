.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -93 # instrumentation
xchg rbx, rax
lea rsi, qword ptr [rdx + rcx]
lea rax, qword ptr [rax + rdx]
and cl, 52
bt edx, 11
and rdi, -60
and dl, -98
sbb rax, -1477844571
jmp .bb_0.1
.bb_0.1:
xor cl, sil
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rbx]
btc bx, 168
and rdx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdx]
imul bl
and rbx, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rbx]
btc rbx, rax
and rsi, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
