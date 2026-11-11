.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 125
lea bx, qword ptr [rax]
and rax, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rax]
cmovnle edx, esi
and cl, 62
cmovo dx, si
lea ebx, qword ptr [rbx]
and rax, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rax]
adc al, cl
imul ax
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], edi
and rax, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rsi], ebx
and rax, 0b1111111111111 # instrumentation
movzx ecx, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
