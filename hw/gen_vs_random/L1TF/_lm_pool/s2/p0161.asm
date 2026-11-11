.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, ecx
and rbx, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rbx]
sub al, 26
xor dl, dil
cmovnz rcx, rdx
btc dx, cx
or dil, -113
and dil, -22
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], cl
and dl, sil
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
