.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], cl
and rdx, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], al
and al, bl
and cl, 39
add bl, dl
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdi], 34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
