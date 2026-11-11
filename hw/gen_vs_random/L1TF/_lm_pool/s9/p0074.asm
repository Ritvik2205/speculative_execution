.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, 45
test bl, 45
cmovb si, di
test al, -56
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], edi
xor bl, 38
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
xor cl, 89
and rdx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdx]
bt rsi, rax
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
jl .bb_0.2
jmp .exit_0
.bb_0.2:
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
