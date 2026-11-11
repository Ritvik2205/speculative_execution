.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rcx]
or al, 24
test al, 66
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], dl
and rax, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], 98
or al, -75
jmp .bb_0.1
.bb_0.1:
or bl, 43
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
