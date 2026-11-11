.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 7954
sub al, -97
cmp rbx, 95
and rax, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rax], esi
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dl
and sil, bl
jmp .bb_0.1
.bb_0.1:
sub bl, 15
jmp .bb_0.2
.bb_0.2:
lea si, qword ptr [rdx]
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 7
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 24
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
