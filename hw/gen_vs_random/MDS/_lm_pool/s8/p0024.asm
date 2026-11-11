.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, -78
and cl, cl
or al, bl
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
or dil, dil
xor dil, 8
jmp .bb_0.1
.bb_0.1:
test al, 22
and rax, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rax], edi
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rcx
and rax, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rax]
or al, cl
and ax, -16061
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
