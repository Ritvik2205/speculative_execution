.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], al
xor bx, 28
and rax, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rax]
add al, -84 # instrumentation
setno dil
lea ecx, qword ptr [rax + rdi + 7]
xchg al, sil
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
or rcx, 1 # instrumentation
and rdx, rcx # instrumentation
shr rdx, 1 # instrumentation
div rcx
jmp .bb_0.1
.bb_0.1:
xchg ebx, eax
or dl, 8
cmovno edx, edx
add cl, -109 # instrumentation
and rsi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
sbb di, word ptr [r14 + rdx]
xor dx, 58
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
