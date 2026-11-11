.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
or rcx, 32
cmovnbe dx, cx
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], 26
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 37
test dl, 25
cmovno cx, si
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rcx
and ax, si
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rax]
or di, -18
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 8
or bl, sil
or al, -8
and rdi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rdi], ebx
or edx, 41
test cl, bl
xor dil, al
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
