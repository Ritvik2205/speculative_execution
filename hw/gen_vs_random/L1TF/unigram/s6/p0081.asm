.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rsi], edi
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], rdx
bt di, bx
and rdx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btc dword ptr [r14 + rdx], esi
sbb edi, 10
btc rax, 14
or rcx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rcx
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], eax
cmp bx, cx
add al, -21 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdx]
sbb al, -23
xchg cl, al
and rax, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rax]
adc cl, -34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
