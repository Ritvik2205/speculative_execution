.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rsi, rdi
and rbx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rbx]
lea rax, qword ptr [rax + rsi + 52]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rdx]
btc rcx, 81
and rdi, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bt word ptr [r14 + rbx], cx
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rax
and rsi, 0b1111111111111 # instrumentation
sbb si, word ptr [r14 + rsi]
btc bx, 168
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], dil
lea rdi, qword ptr [rsi + rdi + 22]
cmp rbx, rdi
lea cx, qword ptr [rbx + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
