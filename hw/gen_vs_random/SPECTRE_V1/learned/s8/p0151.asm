.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], -86
add cl, -127
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 19
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], dil
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 36
cmp cl, al
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], 11
lea bx, qword ptr [rcx]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
bt rax, rdi
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], -28
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
