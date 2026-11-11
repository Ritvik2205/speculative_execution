.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea di, qword ptr [rdi]
cmovno ax, di
imul di, bx, 31
jle .bb_0.1
jmp .exit_0
.bb_0.1:
test dil, -116
btc eax, 3
and rdx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdx]
xchg rsi, rdi
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dl
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 45
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
