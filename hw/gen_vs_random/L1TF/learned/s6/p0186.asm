.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ax, 22976
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
inc al
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], dl
or ebx, 51
and rdi, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rdi], 90
and ax, 7954
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], dil
or ax, -18131
xor bl, -5
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], -28668
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 4
test dil, -126
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
