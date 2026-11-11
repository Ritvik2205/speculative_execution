.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 3
or sil, -8
bt rcx, rsi
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], 54
btc ebx, 97
test cl, bl
and dl, -18 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl dx, word ptr [r14 + rdi]
test sil, cl
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 5
or rdx, 72
and rcx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock bts dword ptr [r14 + rcx], eax
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr eax, dword ptr [r14 + rdi]
xor ax, si
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], edi
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rdi, rsi
or ax, -17790
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 67
cmovns edi, edi
btc si, 74
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
