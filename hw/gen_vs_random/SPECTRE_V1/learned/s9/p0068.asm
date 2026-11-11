.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], -31
xchg bl, sil
lea eax, qword ptr [rdx + rdx + 832]
test al, dl
xchg rax, rdx
jnbe .bb_0.1
jmp .bb_0.2
.bb_0.1:
lea bx, qword ptr [rcx + rax + 17]
and sil, 111
and rsi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rsi]
test dil, -116
jmp .bb_0.2
.bb_0.2:
xchg rax, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
