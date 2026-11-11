.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
not edi
adc edi, 43
lea rsi, qword ptr [rsi]
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 6
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 36
imul dl
xchg dil, al
add al, 96 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rcx]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], dx
adc edx, eax
add cl, 73 # instrumentation
add cl, -10 # instrumentation
lea ebx, qword ptr [rax]
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], bx
xor rdi, rdx
setnp dil
and rdi, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
