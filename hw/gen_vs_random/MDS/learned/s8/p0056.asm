.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts ecx, 184
or al, bl
or cl, -36
test dil, cl
jmp .bb_0.1
.bb_0.1:
or ecx, edx
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
test esi, 425331143
or al, 24
xor cl, 83
test al, 22
xor al, bl
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 13
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
test esi, 425331143
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
