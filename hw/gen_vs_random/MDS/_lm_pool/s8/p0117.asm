.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
xor dl, 34
xor dil, 81
and bl, 68
and rdi, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rdi]
or sil, cl
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
jmp .bb_0.1
.bb_0.1:
and eax, -829294476
test cl, bl
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 6
test bl, sil
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
or sil, bl
xor bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
