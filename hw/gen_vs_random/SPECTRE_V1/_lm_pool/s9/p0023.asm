.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rdx
sub al, -1
cmp bl, dl
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], dl
or ax, -114
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], sil
sbb eax, -108
and rcx, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rcx]
adc dil, 19
cmp dil, al
sbb al, 33
test dil, -116
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
