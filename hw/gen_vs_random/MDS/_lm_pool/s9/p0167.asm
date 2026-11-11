.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, cl
test al, bl
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 51
or cl, -77
and cx, -2
and edi, 23
test cl, dl
and rsi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rsi]
or sil, cl
or sil, bl
xor cl, -13
bt bx, dx
test al, bl
and rbx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
