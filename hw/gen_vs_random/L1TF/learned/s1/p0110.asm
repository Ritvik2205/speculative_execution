.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, ebx
sub cl, -49
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl
or ax, -18131
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 4
jmp .bb_0.1
.bb_0.1:
bt edi, ebx
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 0
or rdx, -22
and rcx, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
