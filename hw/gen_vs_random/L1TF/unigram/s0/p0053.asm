.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr rcx, 77
and sil, sil
or cx, 0b1000000000000000 # instrumentation
bsf cx, cx
and rsi, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rsi]
or rcx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rcx
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], 97
and rax, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rax]
add bl, 98 # instrumentation
inc bl
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], al
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], rcx
and rbx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
sbb si, 31
inc eax
and rdi, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rdi]
sub si, -105
and rcx, 0b1111111111111 # instrumentation
cmp dx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
