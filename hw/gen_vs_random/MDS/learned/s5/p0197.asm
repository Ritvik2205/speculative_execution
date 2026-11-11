.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rcx]
and cl, cl
xor al, -26
and rbx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rbx]
or dil, 16
and rbx, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 739594338
and rax, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rax]
xor sil, 110
and dl, bl
and cl, cl
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
btr bx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
