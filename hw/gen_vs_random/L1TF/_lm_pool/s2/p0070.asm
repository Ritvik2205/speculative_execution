.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rbx, rbx
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 7
test sil, bl
and dl, dl
cmp ax, 7046
or cl, 105
add cx, 70
and rbx, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rbx]
lea ax, qword ptr [rdi + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
