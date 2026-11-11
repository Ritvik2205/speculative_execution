.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rcx]
or bl, bl
xor al, 99
xor rdx, -59
btr esi, edx
or cx, 39
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], -2966447
and rax, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rax]
test esi, 425331143
test rax, -359674714
xor cx, -18
jmp .bb_0.1
.bb_0.1:
test al, 91
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
