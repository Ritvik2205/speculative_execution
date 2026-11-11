.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], 99
and rdi, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rax
or sil, dil
and rsi, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rsi], 21
sbb dl, cl
jmp .bb_0.1
.bb_0.1:
or bl, dil
cmp al, 27
or al, -2
bts si, cx
lea rsi, qword ptr [rdx + rcx]
cmp si, 89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
