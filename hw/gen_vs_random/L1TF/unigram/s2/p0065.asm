.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setp dil
sub bx, 17
lea ax, qword ptr [rsi]
cmovnz rdx, rbx
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], -40
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 32339
and rdi, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rdi]
btc rax, rdi
and rax, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], edi
sub bl, al
or esi, 35
cmovnl dx, bx
xor cl, 89
mul rdi
cmovnbe edx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
