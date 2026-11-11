.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
adc al, bl
or eax, -62
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 0
jmp .bb_0.1
.bb_0.1:
sbb al, cl
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 116
and rdx, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rdx]
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 4
and bl, 89
test sil, dl
xor dl, 9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
