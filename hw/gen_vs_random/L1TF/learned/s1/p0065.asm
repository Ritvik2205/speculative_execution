.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 67 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rsi]
sbb sil, dl
and rsi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rsi]
xor rdi, -80
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
jp .bb_0.3
jmp .exit_0
.bb_0.3:
and sil, -90
btc ax, si
or dl, bl
or rax, 699028911
or rax, 1808026647
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
