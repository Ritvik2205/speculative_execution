.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor si, 80
test dil, cl
test dl, bl
xor cl, 98
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
lea cx, qword ptr [rdi + rdx + 2]
jmp .bb_0.3
.bb_0.3:
cmovnz edi, esi
jmp .bb_0.4
.bb_0.4:
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], -119
or al, dil
or cl, bl
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 5
or cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
