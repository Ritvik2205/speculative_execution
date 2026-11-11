.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rdi], 28
add dl, 10 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], 91
cmp bl, dil
cmovns edi, ecx
and rcx, 40
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr edx, dword ptr [r14 + rbx]
cmovb esi, esi
lea eax, qword ptr [rbx]
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 27
adc cl, -34
cmovnl di, bx
jmp .bb_0.1
.bb_0.1:
or dil, -113
and rbx, 0b1111111111111 # instrumentation
setnz byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
