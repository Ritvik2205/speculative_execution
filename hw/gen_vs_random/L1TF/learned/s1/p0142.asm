.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test di, si
xchg ebx, eax
and si, 41
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 15
or al, al
sub cl, dil
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rdi]
jmp .bb_0.3
.bb_0.3:
adc bl, 86
cmp al, 56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
