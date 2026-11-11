.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rsi], 6
and ax, -4731
cmovz eax, edi
xor ax, 45
or dl, cl
adc al, 43
cmp sil, 113
sub cl, -127
sbb cl, 40
or cl, al
or cl, 12
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
and rsi, 0b1111111111111 # instrumentation
adc edi, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
