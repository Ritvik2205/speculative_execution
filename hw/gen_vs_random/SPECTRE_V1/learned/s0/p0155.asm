.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dl
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 100
bswap rbx
or al, bl
sbb dl, bl
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], dl
and bl, -65
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
