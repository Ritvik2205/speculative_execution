.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs di, cx
and rcx, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rcx]
lea edi, qword ptr [rsi + rsi + 95]
and bl, cl
add dx, 10
btc ax, dx
btc dx, ax
test sil, 29
and rcx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
