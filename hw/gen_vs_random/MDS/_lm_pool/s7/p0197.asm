.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rsi]
xor dl, 40
or bl, cl
and rdi, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rdi]
xor cl, al
xor dl, -59
xor cl, 98
or bl, -62
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
xor al, 9
or al, -78
and rcx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rcx]
xor dl, -43
and dl, -73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
