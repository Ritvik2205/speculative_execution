.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, -26
xchg ebx, edi
cmp al, -1
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 14
cmovp rax, rcx
test al, -24
dec al
sbb dil, 11
or cl, al
adc al, -86
xor ax, -6064
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
