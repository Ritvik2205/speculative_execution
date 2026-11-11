.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dx, ax
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
xor cl, 55
and ax, -12519
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], -2966447
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], dl
and rcx, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rcx]
and dx, 3
or dil, -41
and rcx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdi
test eax, -571234566
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
