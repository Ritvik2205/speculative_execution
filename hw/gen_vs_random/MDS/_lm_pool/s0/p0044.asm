.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts ecx, 184
or sil, -78
or al, dl
bt cx, si
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -28205
not al
and rdi, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rdi]
jmp .bb_0.2
.bb_0.2:
and bx, dx
test al, -81
and sil, -56
and rsi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rsi]
jmp .bb_0.3
.bb_0.3:
and rax, 627810357
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
or sil, -49
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
