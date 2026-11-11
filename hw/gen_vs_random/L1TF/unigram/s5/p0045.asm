.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setnb al
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], ecx
add al, 112 # instrumentation
cmovnle ebx, edx
and rax, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rax]
lea ax, qword ptr [rbx + rbx + 34]
and rcx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rcx]
cmovl rax, rax
sbb al, al
jmp .bb_0.1
.bb_0.1:
bswap ecx
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
cmovb ecx, ecx
cmovnle rdx, rdx
add cl, 69 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rdx]
add dil, sil
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 56
lea edi, qword ptr [rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
