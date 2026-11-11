.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 13090
xor al, 9
and sil, -56
and rax, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rax]
and rax, 79
xor rdx, -59
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
jmp .bb_0.1
.bb_0.1:
xor dil, -70
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
and bl, bl
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], sil
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dl
test eax, -571234566
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 25
and si, -121
and rdi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
