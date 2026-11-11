.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rsi], 8
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], dil
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 1
xor cl, 89
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdi], rcx
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsr bx, word ptr [r14 + rdx]
test al, -56
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
