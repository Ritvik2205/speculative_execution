.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdx]
or al, 37
and rax, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rax]
or cl, cl
and rax, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rax]
xor dl, bl
xor bl, -88
xor cl, 24
xor dx, 36
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
test eax, 158941032
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
and bl, 68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
