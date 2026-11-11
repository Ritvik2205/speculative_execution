.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rdx, qword ptr [rsi]
and rax, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
sub rax, 1806572419
and dx, 75
lea rdx, qword ptr [rdx + rcx]
jmp .bb_0.1
.bb_0.1:
and cl, dil
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], cl
mov si, cx
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], cl
bt rax, rax
and rdi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], 67
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], -106
and dl, dil
add cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
