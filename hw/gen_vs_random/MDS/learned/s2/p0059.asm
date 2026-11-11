.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdx]
and al, al
or dil, -76
xor sil, al
and sil, cl
or sil, -49
xor bl, -102
and rsi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rsi]
xor bl, -27
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -3918
bt ax, di
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
or al, 16
xor bl, -88
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
