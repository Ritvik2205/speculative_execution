.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bx, 3
xor dil, -42
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and dl, 59 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rax]
setnle bl
jmp .bb_0.3
.bb_0.3:
test al, -70
jmp .bb_0.4
.bb_0.4:
cmovnp rdx, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
