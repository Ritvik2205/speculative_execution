.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea si, qword ptr [rsi]
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
and rsi, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rsi]
test dl, 84
cmp al, 27
sbb dl, bl
xor bl, al
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], 94
jmp .bb_0.1
.bb_0.1:
and eax, -409673666
jl .bb_0.2
jmp .exit_0
.bb_0.2:
sbb cl, bl
and rdx, 0b1111111111111 # instrumentation
cmp edi, dword ptr [r14 + rdx]
add al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
