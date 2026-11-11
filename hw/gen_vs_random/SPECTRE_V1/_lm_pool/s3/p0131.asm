.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rsi], 50
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 29
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 90
lea rdx, qword ptr [rcx + rcx + 8848]
add cl, -127
and dl, cl
and rax, -273199823
js .bb_0.1
jmp .exit_0
.bb_0.1:
lea cx, qword ptr [rdx + rdi]
sbb rax, 1161375577
and dl, cl
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf edi, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
