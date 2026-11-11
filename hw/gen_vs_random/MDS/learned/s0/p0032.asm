.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 127
and rdi, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rdi]
test bl, al
test dl, -95
xor bl, -88
and eax, 461212071
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
or dil, -41
btc di, 233
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], dl
or bl, bl
jmp .bb_0.1
.bb_0.1:
or bl, 127
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
