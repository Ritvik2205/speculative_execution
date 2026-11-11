.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, ecx
cmp eax, -240917296
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], -113
and rcx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rcx]
sbb dl, dil
test sil, -31
and rdi, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rdi]
sub al, sil
cmp rcx, 15
cmp dl, cl
cmovle rdx, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
