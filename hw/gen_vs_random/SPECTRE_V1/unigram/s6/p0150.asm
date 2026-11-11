.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], rdx
btr rdx, 40
and rdx, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], al
add cl, 44 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rax]
cmovnle si, ax
cbw
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rax]
movsx rbx, cx
mov ax, 20
bswap rdx
add dl, -77 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rbx]
neg edi
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
or bx, bx
and rax, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
