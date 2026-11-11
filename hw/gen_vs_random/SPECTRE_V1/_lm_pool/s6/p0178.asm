.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], cx
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], sil
setnle cl
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
adc al, -82
lea cx, qword ptr [rdx + rbx + 27]
lea si, qword ptr [rdx + rcx + 62]
sub rsi, 97
adc cl, bl
btc ax, bx
and rsi, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
