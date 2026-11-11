.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or esi, edx
cmp edi, 78
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 0
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], ebx
sub al, sil
lea di, qword ptr [rdx]
adc cx, 65
and rbx, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
