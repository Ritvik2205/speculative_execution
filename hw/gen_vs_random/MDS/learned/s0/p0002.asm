.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rsi]
or bl, 100
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], sil
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
not al
test esi, 425331143
xor rbx, 89
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
test dl, 48
and cl, dil
test al, 22
and rdi, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rdi]
or al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
