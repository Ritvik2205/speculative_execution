.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], ax
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], dil
and rsi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], al
lea edi, qword ptr [rdi]
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], 73
and rsi, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rsi]
sbb al, cl
and rbx, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rbx]
add cl, -103 # instrumentation
cmovnl rdx, rcx
and rbx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
add dl, -126 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rax]
btc rdi, 243
and rsi, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
