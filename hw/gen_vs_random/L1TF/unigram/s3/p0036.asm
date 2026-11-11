.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp si, 29
and rdi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdi], 52
and rdi, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], ebx
and rsi, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rdx]
sub rax, 1806572419
and rbx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], dil
and bx, cx
lea di, qword ptr [rdx + rcx + 87]
and rbx, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rbx]
xor ax, 32760
cmovno edx, edx
sbb rcx, rcx
cmovnb rsi, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
