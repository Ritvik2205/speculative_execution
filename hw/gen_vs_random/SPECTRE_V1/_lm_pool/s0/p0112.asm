.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], 113
lea rdx, qword ptr [rax]
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 22
or al, 19
and rcx, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rcx]
test rbx, rsi
sub al, -1
btc ax, si
and rcx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmp edx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
