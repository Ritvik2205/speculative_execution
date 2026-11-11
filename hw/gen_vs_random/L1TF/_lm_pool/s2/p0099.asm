.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], ecx
add dil, -7
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 0
cmp rsi, 9
and rdx, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr edi, dword ptr [r14 + rdx]
test dl, 84
add eax, 871834813
and dl, dl
or al, -48
and rdi, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
