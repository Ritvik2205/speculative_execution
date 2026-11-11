.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rcx], di
test dl, 27
and si, -121
and rcx, 107
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
test bl, 65
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 17451
bt ax, di
jmp .bb_0.3
.bb_0.3:
lea di, qword ptr [rbx + rdx]
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
and dil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
