.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or si, 0b1000000000000000 # instrumentation
bsr si, si
or sil, cl
jmp .bb_0.1
.bb_0.1:
btc di, 233
test dl, dil
not sil
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
test dil, cl
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], bl
btc di, 233
or dil, al
or rax, 1461812833
and rcx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rsi
xor al, 115
xor al, 9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
