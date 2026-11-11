.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs di, dx
and rcx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rcx]
and sil, 93
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], 106
btc ax, di
xchg rdx, rsi
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], 55
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 1
not cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
