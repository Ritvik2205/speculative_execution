.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 7
xor al, bl
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], edx
xor cl, dil
test cl, 91
test sil, cl
and cx, -2
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
and edx, -44
xor al, 9
and al, 35
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
or al, -17
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
