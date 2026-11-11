.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rcx]
test dl, 27
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], ebx
xor si, 91
test dl, -95
xor cl, 98
and rax, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rax]
btr ax, bx
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 5
or si, 94
bt cx, bx
test rax, 1949278494
and rdx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
