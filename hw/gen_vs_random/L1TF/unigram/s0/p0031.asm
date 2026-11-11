.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cwde
lea esi, qword ptr [rdi + rdi + 10]
sub rdi, 12
lea ax, qword ptr [rdx + rsi + 95]
lea di, qword ptr [rdi]
bswap rcx
add dl, 27 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rdi]
cmovnl rbx, rax
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], dl
bt ecx, eax
sbb cx, 83
and rdi, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rdi], 24
add cl, 72 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rsi]
add dil, -7
setnp cl
cdq
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
