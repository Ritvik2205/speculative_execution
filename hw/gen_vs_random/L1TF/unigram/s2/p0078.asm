.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb dl, al
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], ecx
test rax, rdi
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], al
xor ecx, 93
and rdx, 0b1111111111111 # instrumentation
cmovno bx, word ptr [r14 + rdx]
or cl, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv cl
and rcx, 0b1111111111111 # instrumentation
sub cx, word ptr [r14 + rcx]
bt rax, rsi
xor bx, si
and rax, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rax]
cmp sil, -11
and rsi, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rsi]
or rax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
