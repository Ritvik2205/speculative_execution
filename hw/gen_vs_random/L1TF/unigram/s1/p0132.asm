.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rdi]
xor dil, -42
and rax, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rax]
cmp al, al
xor al, dl
test dl, 84
lea ax, qword ptr [rsi + rdi]
xchg al, sil
btr si, 31
jmp .bb_0.1
.bb_0.1:
cmovnz edi, esi
and rcx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rcx], rax
and rdx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
add cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
