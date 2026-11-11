.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, -62
or cx, 39
test esi, 1857129931
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], 65
jmp .bb_0.1
.bb_0.1:
xor dil, -5
xor al, -19
and rbx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], esi
and edx, -44
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
