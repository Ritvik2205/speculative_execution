.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rcx, rcx
test al, 66
and rdi, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
and rsi, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
and al, 35
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 2
xor rax, -91
and rsi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
xor rcx, 71
jmp .bb_0.1
.bb_0.1:
test dl, -95
test dil, -80
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
