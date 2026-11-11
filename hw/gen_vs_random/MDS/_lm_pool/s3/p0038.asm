.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 76
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 7
test bl, -9
xor dil, -3
jmp .bb_0.1
.bb_0.1:
test dil, -51
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 3
btr ax, 193
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 77
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and dil, dil
or al, 16
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 5
jmp .bb_0.2
.bb_0.2:
test al, -81
or al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
