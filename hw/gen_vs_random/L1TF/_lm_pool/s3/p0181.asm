.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rsi], 8
and al, -68
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], 32
and rcx, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rcx]
xchg ebx, edi
add bl, sil
test cx, 46
and rsi, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
