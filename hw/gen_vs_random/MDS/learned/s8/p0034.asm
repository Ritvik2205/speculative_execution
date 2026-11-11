.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, al
and rsi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rsi]
or cl, bl
or dl, -8
test dl, cl
xor cl, al
and esi, 2
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 2
test al, dil
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 84
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
test al, cl
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
