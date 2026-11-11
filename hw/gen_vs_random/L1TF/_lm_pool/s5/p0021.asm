.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec bx
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 7
and rsi, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rbx]
xor ebx, -81
cmp bl, dl
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdi]
test dl, -37
cmp dil, 62
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
