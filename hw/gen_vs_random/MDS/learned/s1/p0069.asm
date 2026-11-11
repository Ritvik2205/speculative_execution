.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rcx]
or al, sil
and bl, dil
or al, dil
and rax, 79
and rax, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rax]
xor dil, cl
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], bl
bt dx, si
and rcx, 107
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
