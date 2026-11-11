.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
add cl, -23 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rax]
test bl, dil
and rax, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rax]
btr dx, di
and rbx, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rbx]
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, eax
cmovb esi, edx
and rsi, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rsi]
and cl, bl
or al, al
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], rdi
and rsi, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rsi]
or al, -48
xor cl, cl
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], 8
and rdx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdx]
cmovz si, di
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], bx
and al, 126
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
