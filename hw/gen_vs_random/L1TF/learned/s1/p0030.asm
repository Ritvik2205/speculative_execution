.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -57 # instrumentation
and rdx, 0b1111111111111 # instrumentation
movzx rax, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
and sil, 93
btc ax, si
btc eax, 220
sbb sil, 19
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
jp .bb_0.3
jmp .bb_0.4
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
cmovnbe edi, ebx
or dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
