.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, cl
or rdi, -11
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rbx
xor al, cl
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rdi, rdx
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], dil
or bl, 43
xor cl, 83
or rbx, -72
or di, 83
or dil, 16
xor rax, -1657511731
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
