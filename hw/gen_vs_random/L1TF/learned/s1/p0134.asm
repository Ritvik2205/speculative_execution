.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dl, 19
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 55
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
