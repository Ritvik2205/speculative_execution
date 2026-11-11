.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
sub cl, -21
cmp dil, bl
xchg al, cl
sbb dil, -93
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 5
test bl, -8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
