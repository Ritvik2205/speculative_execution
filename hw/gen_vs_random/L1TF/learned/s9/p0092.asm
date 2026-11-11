.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, eax
and bl, 89
and rcx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rsi]
xor al, al
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -98
or al, -5
btc si, ax
xor rdx, 122
adc al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
