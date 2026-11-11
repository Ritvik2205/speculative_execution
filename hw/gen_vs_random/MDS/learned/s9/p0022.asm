.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rcx, rcx
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rbx
and ax, 27170
or dx, 125
and rdx, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rdx]
xor bl, -27
test sil, al
or sil, -49
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 27
test esi, 1857129931
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dil
and dil, -62
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
xor bl, dil
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
