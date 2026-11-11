.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -115 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rdx]
and rsi, 70
and rsi, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rax]
xor al, al
or rax, 1749358813
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dil
cmp al, al
btc rcx, rdx
and rbx, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rbx]
cmovnb rax, rdx
or esi, 1 # instrumentation
and edx, esi # instrumentation
shr edx, 1 # instrumentation
div esi
test cl, 4
xor al, -119
or dil, -52
and rdi, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rdi]
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, edx
cmovo rcx, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
