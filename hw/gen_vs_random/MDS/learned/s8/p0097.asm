.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rax]
xor ax, -16696
and rbx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rbx]
test cl, -86
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 34
and rdi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdi]
and sil, -56
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
jmp .bb_0.1
.bb_0.1:
bts rbx, 25
or al, 25
and dl, dl
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 29
test dil, -80
and sil, -56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
